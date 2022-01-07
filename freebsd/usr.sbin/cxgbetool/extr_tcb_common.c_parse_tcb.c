
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int val; int * name; } ;
typedef TYPE_1__ _TCBVAR ;


 unsigned int PM_MODE_DTLS ;
 unsigned int PM_MODE_FCOE ;
 unsigned int PM_MODE_IANDP ;
 unsigned int PM_MODE_RDDP ;
 unsigned int PM_MODE_TLS ;
 int assert (int) ;
 int decompress_val (TYPE_1__*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int g_tN ;
 int get_tcb_field (TYPE_1__*,unsigned char*) ;
 scalar_t__ tcb_strmatch_nc (char*,int *) ;

unsigned
parse_tcb( _TCBVAR *base_tvp, unsigned char *buf)
{
  _TCBVAR *tvp=base_tvp;
  unsigned ulp_type;
  int aux=1;
  unsigned tx_max=0, rcv_nxt=0, rx_frag0_start_idx_raw=0;
  int got_tx_max=0, got_rcv_nxt=0, got_rx_frag0_start_idx_raw=0;



  while (tvp->name!=((void*)0)) {
    get_tcb_field(tvp,buf);
    if (!got_tx_max && tcb_strmatch_nc("tx_max",tvp->name)) {
      tx_max=tvp->val;
      got_tx_max=1;
    }
    if (!got_rcv_nxt && tcb_strmatch_nc("rcv_nxt",tvp->name)) {
      rcv_nxt=tvp->val;
      got_rcv_nxt=1;
    }
    if (!got_rx_frag0_start_idx_raw &&
 tcb_strmatch_nc("rx_frag0_start_idx_raw",tvp->name)) {
      rx_frag0_start_idx_raw=tvp->val;
      got_rx_frag0_start_idx_raw=1;
    }
    tvp+=1;
  }

  tvp=base_tvp;
  ulp_type=tvp->val;
  if (PM_MODE_IANDP==ulp_type || PM_MODE_FCOE==ulp_type) aux=3;
  else if (PM_MODE_RDDP==ulp_type) aux=2;
  else if (6==g_tN && (PM_MODE_TLS==ulp_type || PM_MODE_DTLS==ulp_type)) aux=4;
  else aux=1;

  assert(got_tx_max && got_rcv_nxt && got_rx_frag0_start_idx_raw);


  tvp=base_tvp;
  while (tvp->name!=((void*)0)) {
    decompress_val(tvp,ulp_type,tx_max,rcv_nxt,rx_frag0_start_idx_raw);
    tvp+=1;
  }

  return aux;
}
