
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __predict_true (int) ;

__attribute__((used)) static __inline bool
hn_rndis_check_overlap(int off, int len, int check_off, int check_len)
{

 if (off < check_off) {
  if (__predict_true(off + len <= check_off))
   return (0);
 } else if (off > check_off) {
  if (__predict_true(check_off + check_len <= off))
   return (0);
 }
 return (1);
}
