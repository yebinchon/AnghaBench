
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comp; unsigned int val; int name; int rawval; } ;
typedef TYPE_1__ _TCBVAR ;
 unsigned int PM_MODE_DDP ;
 unsigned int PM_MODE_IANDP ;
 unsigned int PM_MODE_RDDP ;
 int tcb_code_err_exit (char*,int) ;
 int tcb_startswith_nc (int ,char*) ;
 int tcb_strmatch_nc (int ,char*) ;

void
decompress_val(_TCBVAR *tvp,unsigned ulp_type,unsigned tx_max,
        unsigned rcv_nxt,unsigned rx_frag0_start_idx_raw)
{
  unsigned rawval=(unsigned) tvp->rawval;

  switch(tvp->comp) {
  case 132: tvp->val=rawval; break;
  case 128: tvp->val=rawval; break;
  case 129:
    tvp->val=(tx_max - rawval) & 0xFFFFFFFF;
    break;
  case 130:
    if (tcb_startswith_nc(tvp->name,"rx_frag")) {
      unsigned fragx=0;
      if (!tcb_strmatch_nc(tvp->name,"rx_frag0_start_idx_raw"))
 fragx=rawval;
      tvp->val=(rcv_nxt+rx_frag0_start_idx_raw+fragx) & 0xFFFFFFFF;
    } else {
      tvp->val=(rcv_nxt - rawval) & 0xFFFFFFFF;
    }
    break;
  case 131: tvp->val=rawval; break;
  case 133:
    {
      tvp->val=rawval;
      if (PM_MODE_RDDP==ulp_type || PM_MODE_DDP==ulp_type ||
   PM_MODE_IANDP==ulp_type) {






 tvp->val=0;
 tvp->val=rawval;
      }
    }
    break;
  default:
    tcb_code_err_exit("decompress_val, bad switch: %d",tvp->comp);
    break;
  }



}
