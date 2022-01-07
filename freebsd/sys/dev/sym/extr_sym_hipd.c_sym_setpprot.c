
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* u_char ;
typedef TYPE_4__* tcb_p ;
typedef TYPE_5__* hcb_p ;
typedef TYPE_6__* ccb_p ;
struct TYPE_17__ {size_t target; } ;
struct TYPE_16__ {TYPE_4__* target; } ;
struct TYPE_13__ {void* options; void* offset; void* period; void* width; } ;
struct TYPE_12__ {void* options; void* offset; void* period; void* width; } ;
struct TYPE_14__ {TYPE_2__ current; TYPE_1__ goal; } ;
struct TYPE_15__ {TYPE_3__ tinfo; } ;


 int SYM_SPI_VALID_PPR ;
 int sym_settrans (TYPE_5__*,TYPE_6__*,void*,void*,void*,void*,void*,void*) ;
 int sym_xpt_async_transfer_neg (TYPE_5__*,size_t,int ) ;

__attribute__((used)) static void sym_setpprot(hcb_p np, ccb_p cp, u_char dt, u_char ofs,
    u_char per, u_char wide, u_char div, u_char fak)
{
 tcb_p tp = &np->target[cp->target];

 sym_settrans(np, cp, dt, ofs, per, wide, div, fak);




 tp->tinfo.goal.width = tp->tinfo.current.width = wide;
 tp->tinfo.goal.period = tp->tinfo.current.period = per;
 tp->tinfo.goal.offset = tp->tinfo.current.offset = ofs;
 tp->tinfo.goal.options = tp->tinfo.current.options = dt;

 sym_xpt_async_transfer_neg(np, cp->target, SYM_SPI_VALID_PPR);
}
