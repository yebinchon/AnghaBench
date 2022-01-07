
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef void* u_char ;
typedef TYPE_6__* tcb_p ;
typedef TYPE_7__* hcb_p ;
typedef TYPE_8__* ccb_p ;
struct TYPE_14__ {int sel_scntl3; } ;
struct TYPE_15__ {TYPE_1__ select; } ;
struct TYPE_21__ {size_t target; TYPE_2__ phys; } ;
struct TYPE_20__ {TYPE_6__* target; } ;
struct TYPE_17__ {scalar_t__ options; void* offset; void* period; } ;
struct TYPE_16__ {scalar_t__ options; void* offset; void* period; } ;
struct TYPE_18__ {TYPE_4__ current; TYPE_3__ goal; } ;
struct TYPE_19__ {TYPE_5__ tinfo; } ;


 int EWS ;
 int SYM_SPI_VALID_SDTR ;
 int sym_settrans (TYPE_7__*,TYPE_8__*,int ,void*,void*,void*,void*,void*) ;
 int sym_xpt_async_transfer_neg (TYPE_7__*,size_t,int ) ;

__attribute__((used)) static void
sym_setsync(hcb_p np, ccb_p cp, u_char ofs, u_char per, u_char div, u_char fak)
{
 tcb_p tp = &np->target[cp->target];
 u_char wide = (cp->phys.select.sel_scntl3 & EWS) ? 1 : 0;

 sym_settrans(np, cp, 0, ofs, per, wide, div, fak);




 tp->tinfo.goal.period = tp->tinfo.current.period = per;
 tp->tinfo.goal.offset = tp->tinfo.current.offset = ofs;
 tp->tinfo.goal.options = tp->tinfo.current.options = 0;

 sym_xpt_async_transfer_neg(np, cp->target, SYM_SPI_VALID_SDTR);
}
