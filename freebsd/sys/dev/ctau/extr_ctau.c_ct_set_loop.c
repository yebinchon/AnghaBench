
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ct_chan_t ;


 int ct_disable_loop (int *) ;
 int ct_enable_loop (int *) ;

void ct_set_loop (ct_chan_t *c, int on)
{
 if (on)
  ct_enable_loop (c);
 else
  ct_disable_loop (c);
}
