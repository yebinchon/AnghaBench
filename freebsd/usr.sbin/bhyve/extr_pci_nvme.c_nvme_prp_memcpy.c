
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint64_t ;
struct vmctx {int dummy; } ;


 size_t MIN (size_t,size_t) ;
 size_t PAGE_MASK ;
 size_t PAGE_SIZE ;
 int memcpy (int *,int *,size_t) ;
 int * vm_map_gpa (struct vmctx*,size_t,size_t) ;

__attribute__((used)) static int
nvme_prp_memcpy(struct vmctx *ctx, uint64_t prp1, uint64_t prp2, uint8_t *src,
 size_t len)
{
 uint8_t *dst;
 size_t bytes;

 if (len > (8 * 1024)) {
  return (-1);
 }


 bytes = PAGE_SIZE - (prp1 & PAGE_MASK);
 bytes = MIN(bytes, len);

 dst = vm_map_gpa(ctx, prp1, bytes);
 if (dst == ((void*)0)) {
  return (-1);
 }

 memcpy(dst, src, bytes);

 src += bytes;

 len -= bytes;
 if (len == 0) {
  return (0);
 }

 len = MIN(len, PAGE_SIZE);

 dst = vm_map_gpa(ctx, prp2, len);
 if (dst == ((void*)0)) {
  return (-1);
 }

 memcpy(dst, src, len);

 return (0);
}
