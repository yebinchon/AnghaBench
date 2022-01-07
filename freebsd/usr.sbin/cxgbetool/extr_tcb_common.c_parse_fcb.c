
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ _TCBVAR ;


 int get_tcb_field (TYPE_1__*,unsigned char*) ;

void
parse_fcb( _TCBVAR *base_tvp, unsigned char *buf)
{
  _TCBVAR *tvp=base_tvp;

  while (tvp->name!=((void*)0)) {
    get_tcb_field(tvp,buf);
    tvp+=1;
  }
}
