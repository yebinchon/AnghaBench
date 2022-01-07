
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ hdb3; } ;
struct TYPE_11__ {int lx; TYPE_1__ gopt; TYPE_3__* board; scalar_t__ num; } ;
typedef TYPE_4__ ct_chan_t ;
struct TYPE_9__ {scalar_t__ cfg; } ;
struct TYPE_10__ {TYPE_2__ opt; } ;


 scalar_t__ CFG_B ;
 int LX_CCR1 ;
 int LX_CCR2 ;
 int LX_CCR2_LH ;
 int LX_CCR3 ;
 int LX_CCR3_E1_LH ;
 int LX_HDB3 ;
 int LX_LOS ;
 int LX_RESET ;
 int LX_TAOS ;
 int ctg_inx (TYPE_4__*,int ) ;
 int ctg_outx (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void ct_setup_lxt (ct_chan_t *c)
{
 ctg_outx (c, LX_CCR1, LX_RESET);

 ctg_inx (c, LX_CCR1);
 c->lx = LX_LOS;
 if (c->num && c->board->opt.cfg == CFG_B)
  c->lx |= LX_TAOS;
 if (c->gopt.hdb3)
  c->lx |= LX_HDB3;
 ctg_outx (c, LX_CCR1, c->lx);
 ctg_outx (c, LX_CCR2, LX_CCR2_LH);
 ctg_outx (c, LX_CCR3, LX_CCR3_E1_LH);
}
