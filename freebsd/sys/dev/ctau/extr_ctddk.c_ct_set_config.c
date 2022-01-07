
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cfg; } ;
struct TYPE_7__ {int type; TYPE_1__ opt; } ;
typedef TYPE_2__ ct_board_t ;
 int CFG_A ;
 int CFG_C ;
 int ct_e1_config (TYPE_2__*,int) ;
 int ct_g703_config (TYPE_2__*,int) ;

int ct_set_config (ct_board_t *b, int cfg)
{
 if (b->opt.cfg == cfg)
  return 0;
 switch (b->type) {
 case 129:
 case 128:
 case 133:
  if (cfg == CFG_C)
   return -1;
  ct_g703_config (b, cfg);
  return 0;
 case 132:
 case 131:
 case 130:
 case 135:
 case 134:
  ct_e1_config (b, cfg);
  return 0;
 default:
  return cfg == CFG_A ? 0 : -1;
 }
}
