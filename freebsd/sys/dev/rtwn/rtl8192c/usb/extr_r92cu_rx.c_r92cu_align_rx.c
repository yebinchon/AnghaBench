
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int roundup2 (int,int) ;

int
r92cu_align_rx(int totlen, int len)
{
 return (roundup2(totlen, 128));
}
