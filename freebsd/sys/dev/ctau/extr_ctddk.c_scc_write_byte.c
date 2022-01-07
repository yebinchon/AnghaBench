
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ct_chan_t ;


 scalar_t__ scc_write (int *,unsigned char*,int) ;

int scc_write_byte (ct_chan_t *c, unsigned char b)
{
 if (scc_write (c, &b, 1) < 0)
  return -1;
 return b;
}
