
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hi; int lo; int rawval; unsigned int val; } ;
typedef TYPE_1__ _TCBVAR ;


 int assert (int) ;
 int get_tcb_bits (unsigned char*,scalar_t__,scalar_t__) ;

void
get_tcb_field(_TCBVAR *tvp,unsigned char *buf)
{
  assert(tvp->hi-tvp->lo+1<=64);
  assert(tvp->hi>=tvp->lo);

  tvp->rawval=get_tcb_bits(buf,tvp->lo,tvp->hi);

  tvp->val=(unsigned) (tvp->rawval & 0xFFFFFFFF);


}
