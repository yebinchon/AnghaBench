
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct t4_range {int size; int start; } ;
struct adapter {int dummy; } ;
typedef int mem_ranges ;


 int A_MA_EDRAM0_BAR ;
 int A_MA_EDRAM1_BAR ;
 int A_MA_EXT_MEMORY1_BAR ;
 int A_MA_EXT_MEMORY_BAR ;
 int A_MA_TARGET_MEM_ENABLE ;
 int EFAULT ;
 int EINVAL ;
 int F_EDRAM0_ENABLE ;
 int F_EDRAM1_ENABLE ;
 int F_EXT_MEM1_ENABLE ;
 int F_EXT_MEM_ENABLE ;
 int G_EDRAM0_BASE (int) ;
 int G_EDRAM0_SIZE (int) ;
 int G_EDRAM1_BASE (int) ;
 int G_EDRAM1_SIZE (int) ;
 int G_EXT_MEM1_BASE (int) ;
 int G_EXT_MEM1_SIZE (int) ;
 int G_EXT_MEM_BASE (int) ;
 int G_EXT_MEM_SIZE (int) ;
 int MPASS (int) ;
 int bzero (struct t4_range*,int) ;
 scalar_t__ is_t5 (struct adapter*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int memcpy (struct t4_range*,struct t4_range*,int) ;
 int nitems (struct t4_range*) ;
 int qsort (struct t4_range*,int,int,int ) ;
 int t4_range_cmp ;
 int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static int
validate_mem_range(struct adapter *sc, uint32_t addr, uint32_t len)
{
 struct t4_range mem_ranges[4], *r, *next;
 uint32_t em, addr_len;
 int i, n, remaining;


 if (addr & 3 || len & 3 || len == 0)
  return (EINVAL);


 em = t4_read_reg(sc, A_MA_TARGET_MEM_ENABLE);

 r = &mem_ranges[0];
 n = 0;
 bzero(r, sizeof(mem_ranges));
 if (em & F_EDRAM0_ENABLE) {
  addr_len = t4_read_reg(sc, A_MA_EDRAM0_BAR);
  r->size = G_EDRAM0_SIZE(addr_len) << 20;
  if (r->size > 0) {
   r->start = G_EDRAM0_BASE(addr_len) << 20;
   if (addr >= r->start &&
       addr + len <= r->start + r->size)
    return (0);
   r++;
   n++;
  }
 }
 if (em & F_EDRAM1_ENABLE) {
  addr_len = t4_read_reg(sc, A_MA_EDRAM1_BAR);
  r->size = G_EDRAM1_SIZE(addr_len) << 20;
  if (r->size > 0) {
   r->start = G_EDRAM1_BASE(addr_len) << 20;
   if (addr >= r->start &&
       addr + len <= r->start + r->size)
    return (0);
   r++;
   n++;
  }
 }
 if (em & F_EXT_MEM_ENABLE) {
  addr_len = t4_read_reg(sc, A_MA_EXT_MEMORY_BAR);
  r->size = G_EXT_MEM_SIZE(addr_len) << 20;
  if (r->size > 0) {
   r->start = G_EXT_MEM_BASE(addr_len) << 20;
   if (addr >= r->start &&
       addr + len <= r->start + r->size)
    return (0);
   r++;
   n++;
  }
 }
 if (is_t5(sc) && em & F_EXT_MEM1_ENABLE) {
  addr_len = t4_read_reg(sc, A_MA_EXT_MEMORY1_BAR);
  r->size = G_EXT_MEM1_SIZE(addr_len) << 20;
  if (r->size > 0) {
   r->start = G_EXT_MEM1_BASE(addr_len) << 20;
   if (addr >= r->start &&
       addr + len <= r->start + r->size)
    return (0);
   r++;
   n++;
  }
 }
 MPASS(n <= nitems(mem_ranges));

 if (n > 1) {

  qsort(mem_ranges, n, sizeof(struct t4_range), t4_range_cmp);


  r = &mem_ranges[0];
  for (remaining = n - 1; remaining > 0; remaining--, r++) {

   MPASS(r->size > 0);
   next = r + 1;
   MPASS(next->size > 0);

   while (r->start + r->size >= next->start) {

    r->size = max(r->start + r->size,
        next->start + next->size) - r->start;
    n--;
    if (--remaining == 0)
     goto done;
    next++;
   }
   if (next != r + 1) {





    MPASS(next->size > 0);
    memcpy(r + 1, next, remaining * sizeof(*r));
   }
  }
done:

  MPASS(n > 0);
  r = &mem_ranges[0];
  for (i = 0; i < n; i++, r++) {
   if (addr >= r->start &&
       addr + len <= r->start + r->size)
    return (0);
  }
 }

 return (EFAULT);
}
