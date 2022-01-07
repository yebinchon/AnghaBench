
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ val; scalar_t__ rawval; int * name; } ;
typedef TYPE_1__ _TCBVAR ;


 int get_tcb_field (TYPE_1__*,unsigned char*) ;
 scalar_t__ tcb_strmatch_nc (char*,int *) ;

void
parse_scb( _TCBVAR *base_tvp, unsigned char *buf)
{
  _TCBVAR *tvp=base_tvp;

  while (tvp->name!=((void*)0)) {
    if (tcb_strmatch_nc("scb_slush",tvp->name)) {

      tvp->rawval=0;
      tvp->val=0;
    } else {
      get_tcb_field(tvp,buf);
    }
    tvp+=1;
  }
}
