
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amd_ntb_softc {unsigned long long db_valid_mask; int conn_type; int spad_count; int self_spad; int peer_spad; int int_mask; int hb_timer; int db_mask_lock; TYPE_1__* hw_info; } ;
struct TYPE_2__ {unsigned long long db_count; } ;


 int AMD_EVENT_INTMASK ;
 int AMD_INTMASK_OFFSET ;
 int AMD_LINK_HB_TIMEOUT ;
 int EINVAL ;
 int MTX_SPIN ;


 int amd_link_hb ;
 int amd_ntb_printf (int ,char*,int const) ;
 int amd_ntb_reg_write (int,int ,int ) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int ,int ,struct amd_ntb_softc*) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
amd_ntb_init_dev(struct amd_ntb_softc *ntb)
{
 ntb->db_valid_mask = (1ull << ntb->hw_info->db_count) - 1;
 mtx_init(&ntb->db_mask_lock, "amd ntb db bits", ((void*)0), MTX_SPIN);

 switch (ntb->conn_type) {
 case 129:
 case 128:
  ntb->spad_count >>= 1;

  if (ntb->conn_type == 129) {
   ntb->self_spad = 0;
   ntb->peer_spad = 0x20;
  } else {
   ntb->self_spad = 0x20;
   ntb->peer_spad = 0;
  }

  callout_init(&ntb->hb_timer, 1);
  callout_reset(&ntb->hb_timer, AMD_LINK_HB_TIMEOUT,
      amd_link_hb, ntb);

  break;

 default:
  amd_ntb_printf(0, "Unsupported AMD NTB topology %d\n",
      ntb->conn_type);
  return (EINVAL);
 }

 ntb->int_mask = AMD_EVENT_INTMASK;
 amd_ntb_reg_write(4, AMD_INTMASK_OFFSET, ntb->int_mask);

 return (0);
}
