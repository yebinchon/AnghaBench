
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int hcb_p ;
typedef TYPE_3__* ccb_p ;
struct TYPE_5__ {void* savep; void* goalp; void* lastp; } ;
struct TYPE_6__ {TYPE_1__ head; } ;
struct TYPE_7__ {int segments; TYPE_2__ phys; void* startp; int host_flags; } ;





 int HF_DATA_IN ;
 int MA_OWNED ;
 int SCRIPTA_BA (int ,int ) ;
 int SCRIPTB_BA (int ,int ) ;
 int SYM_LOCK_ASSERT (int ) ;
 void* cpu_to_scr (int ) ;
 int data_in2 ;
 int data_out2 ;
 int no_data ;

__attribute__((used)) static void __inline
sym_setup_data_pointers(hcb_p np, ccb_p cp, int dir)
{
 u32 lastp, goalp;

 SYM_LOCK_ASSERT(MA_OWNED);




 if (!cp->segments)
  dir = 129;




 switch(dir) {
 case 128:
  goalp = SCRIPTA_BA (np, data_out2) + 8;
  lastp = goalp - 8 - (cp->segments * (2*4));
  break;
 case 130:
  cp->host_flags |= HF_DATA_IN;
  goalp = SCRIPTA_BA (np, data_in2) + 8;
  lastp = goalp - 8 - (cp->segments * (2*4));
  break;
 case 129:
 default:
  lastp = goalp = SCRIPTB_BA (np, no_data);
  break;
 }

 cp->phys.head.lastp = cpu_to_scr(lastp);
 cp->phys.head.goalp = cpu_to_scr(goalp);
 cp->phys.head.savep = cpu_to_scr(lastp);
 cp->startp = cp->phys.head.savep;
}
