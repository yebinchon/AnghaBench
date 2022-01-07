
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;
struct mem_range_softc {int mr_ndesc; struct mem_range_desc* mr_desc; } ;
struct mem_range_desc {int mr_len; int mr_base; } ;


 int EEXIST ;
 int ENOENT ;
 int ENOSPC ;
 int EOPNOTSUPP ;


 int UWCCR ;
 int bzero (struct mem_range_desc*,int) ;
 int disable_intr () ;
 int enable_intr () ;
 int k6_mrmake (struct mem_range_desc*,int*) ;
 int rdmsr (int ) ;
 int wbinvd () ;
 int wrmsr (int ,int) ;

__attribute__((used)) static int
k6_mrset(struct mem_range_softc *sc, struct mem_range_desc *desc, int *arg)
{
 u_int64_t reg;
 u_int32_t mtrr;
 int error, d;

 switch (*arg) {
 case 128:
  error = k6_mrmake(desc, &mtrr);
  if (error)
   return (error);
  for (d = 0; d < sc->mr_ndesc; d++) {
   if (!sc->mr_desc[d].mr_len) {
    sc->mr_desc[d] = *desc;
    goto out;
   }
   if (sc->mr_desc[d].mr_base == desc->mr_base &&
       sc->mr_desc[d].mr_len == desc->mr_len)
    return (EEXIST);
  }
  return (ENOSPC);
 case 129:
  mtrr = 0;
  for (d = 0; d < sc->mr_ndesc; d++)
   if (sc->mr_desc[d].mr_base == desc->mr_base &&
       sc->mr_desc[d].mr_len == desc->mr_len) {
    bzero(&sc->mr_desc[d], sizeof(sc->mr_desc[d]));
    goto out;
   }
  return (ENOENT);
 default:
  return (EOPNOTSUPP);
 }
out:
 disable_intr();
 wbinvd();
 reg = rdmsr(UWCCR);
 reg &= ~(0xffffffff << (32 * d));
 reg |= mtrr << (32 * d);
 wrmsr(UWCCR, reg);
 wbinvd();
 enable_intr();

 return (0);
}
