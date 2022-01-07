
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int roundup2 (int,int) ;

int
r12au_align_rx(int totlen, int len)
{
 if (totlen < len)
  return (roundup2(totlen, 8));

 return (totlen);
}
