
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct qlnxr_dev {int num_cnq; int dpi; int db_size; scalar_t__ db_phys_addr; void* db_addr; int rdma_ctx; TYPE_5__* ha; TYPE_1__* cnq_array; } ;
struct TYPE_9__ {int rcv_wnd_size; int ooo_num_rx_bufs; int mpa_rtr; int mpa_rev; int mpa_peer2peer; int crc_needed; int flags; } ;
struct TYPE_8__ {int cq_mode; } ;
struct ecore_rdma_start_in_params {int desired_cnq; int max_mtu; int * mac_addr; TYPE_3__ iwarp; TYPE_2__ roce; struct ecore_rdma_events* events; struct ecore_rdma_cnq_params* cnq_pbl_list; } ;
struct ecore_rdma_events {int dpi; int dpi_size; scalar_t__ dpi_phys_addr; scalar_t__ dpi_addr; struct qlnxr_dev* context; int unaffiliated_event; int affiliated_event; } ;
struct ecore_rdma_cnq_params {scalar_t__ pbl_ptr; int num_pbl_pages; } ;
struct ecore_rdma_add_user_out_params {int dpi; int dpi_size; scalar_t__ dpi_phys_addr; scalar_t__ dpi_addr; struct qlnxr_dev* context; int unaffiliated_event; int affiliated_event; } ;
struct TYPE_10__ {int db_size; scalar_t__ db_phys_addr; scalar_t__ doorbells; } ;
struct TYPE_11__ {int max_frame_size; TYPE_4__ cdev; int primary_mac; } ;
typedef TYPE_5__ qlnx_host_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_7__ {int pbl; } ;


 int ECORE_IWARP_DA_EN ;
 int ECORE_IWARP_TS_EN ;
 int ECORE_MPA_REV1 ;
 int ECORE_MPA_REV2 ;
 int ECORE_RDMA_CQ_MODE_32_BITS ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int MAX_RXMIT_CONNS ;
 scalar_t__ QLNX_IS_IWARP (struct qlnxr_dev*) ;
 int QL_DPRINT12 (TYPE_5__*,char*,...) ;
 int bzero (struct ecore_rdma_events*,int) ;
 int crc_needed ;
 scalar_t__ delayed_ack ;
 int ecore_chain_get_page_cnt (int *) ;
 scalar_t__ ecore_chain_get_pbl_phys (int *) ;
 int ecore_rdma_add_user (int ,struct ecore_rdma_events*) ;
 int ecore_rdma_start (int ,struct ecore_rdma_start_in_params*) ;
 int kfree (struct ecore_rdma_start_in_params*) ;
 struct ecore_rdma_start_in_params* kzalloc (int,int ) ;
 int memcpy (int *,int ,int ) ;
 scalar_t__ mpa_enhanced ;
 int peer2peer ;
 int qlnxr_affiliated_event ;
 int qlnxr_set_device_attr (struct qlnxr_dev*) ;
 int qlnxr_unaffiliated_event ;
 int rcv_wnd_size ;
 int rtr_type ;
 scalar_t__ timestamp ;

__attribute__((used)) static int
qlnxr_init_hw(struct qlnxr_dev *dev)
{
        struct ecore_rdma_events events;
        struct ecore_rdma_add_user_out_params out_params;
        struct ecore_rdma_cnq_params *cur_pbl;
        struct ecore_rdma_start_in_params *in_params;
        dma_addr_t p_phys_table;
        u32 page_cnt;
        int rc = 0;
        int i;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

        in_params = kzalloc(sizeof(*in_params), GFP_KERNEL);
        if (!in_params) {
                rc = -ENOMEM;
                goto out;
        }

 bzero(&out_params, sizeof(struct ecore_rdma_add_user_out_params));
 bzero(&events, sizeof(struct ecore_rdma_events));

        in_params->desired_cnq = dev->num_cnq;

        for (i = 0; i < dev->num_cnq; i++) {
                cur_pbl = &in_params->cnq_pbl_list[i];

                page_cnt = ecore_chain_get_page_cnt(&dev->cnq_array[i].pbl);
                cur_pbl->num_pbl_pages = page_cnt;

                p_phys_table = ecore_chain_get_pbl_phys(&dev->cnq_array[i].pbl);
                cur_pbl->pbl_ptr = (u64)p_phys_table;
        }

        events.affiliated_event = qlnxr_affiliated_event;
        events.unaffiliated_event = qlnxr_unaffiliated_event;
        events.context = dev;

        in_params->events = &events;
        in_params->roce.cq_mode = ECORE_RDMA_CQ_MODE_32_BITS;
        in_params->max_mtu = dev->ha->max_frame_size;


 if (QLNX_IS_IWARP(dev)) {
         if (delayed_ack)
                 in_params->iwarp.flags |= ECORE_IWARP_DA_EN;

         if (timestamp)
                 in_params->iwarp.flags |= ECORE_IWARP_TS_EN;

         in_params->iwarp.rcv_wnd_size = rcv_wnd_size*1024;
         in_params->iwarp.crc_needed = crc_needed;
         in_params->iwarp.ooo_num_rx_bufs =
                 (MAX_RXMIT_CONNS * in_params->iwarp.rcv_wnd_size) /
                 in_params->max_mtu;

         in_params->iwarp.mpa_peer2peer = peer2peer;
         in_params->iwarp.mpa_rev =
   mpa_enhanced ? ECORE_MPA_REV2 : ECORE_MPA_REV1;
         in_params->iwarp.mpa_rtr = rtr_type;
 }

        memcpy(&in_params->mac_addr[0], dev->ha->primary_mac, ETH_ALEN);

        rc = ecore_rdma_start(dev->rdma_ctx, in_params);
        if (rc)
                goto out;

        rc = ecore_rdma_add_user(dev->rdma_ctx, &out_params);
        if (rc)
                goto out;

        dev->db_addr = (void *)(uintptr_t)out_params.dpi_addr;
        dev->db_phys_addr = out_params.dpi_phys_addr;
        dev->db_size = out_params.dpi_size;
        dev->dpi = out_params.dpi;

 qlnxr_set_device_attr(dev);

 QL_DPRINT12(ha,
  "cdev->doorbells = %p, db_phys_addr = %p db_size = 0x%x\n",
  (void *)ha->cdev.doorbells,
  (void *)ha->cdev.db_phys_addr, ha->cdev.db_size);

 QL_DPRINT12(ha,
  "db_addr = %p db_phys_addr = %p db_size = 0x%x dpi = 0x%x\n",
  (void *)dev->db_addr, (void *)dev->db_phys_addr,
  dev->db_size, dev->dpi);
out:
        kfree(in_params);

 QL_DPRINT12(ha, "exit\n");
        return rc;
}
