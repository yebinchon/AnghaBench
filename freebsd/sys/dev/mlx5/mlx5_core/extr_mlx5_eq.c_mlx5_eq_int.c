
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct mlx5_eqe_vport_change {int vport_num; } ;
struct TYPE_13__ {int num_pages; int func_id; } ;
struct TYPE_12__ {scalar_t__ syndrome; int cqn; } ;
struct TYPE_11__ {int port; } ;
struct TYPE_10__ {int vector; } ;
struct TYPE_9__ {int qp_srq_n; } ;
struct TYPE_8__ {int cqn; } ;
struct TYPE_14__ {int raw; struct mlx5_eqe_vport_change vport_change; TYPE_6__ req_pages; TYPE_5__ cq_err; TYPE_4__ port; TYPE_3__ cmd; TYPE_2__ qp_srq; TYPE_1__ comp; } ;
struct mlx5_eqe {int type; TYPE_7__ data; scalar_t__ sub_type; } ;
struct mlx5_eq {int cons_index; scalar_t__ eqn; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int (* event ) (struct mlx5_core_dev*,int ,unsigned long) ;int state; } ;
typedef int s32 ;


 int MLX5_CMD_MODE_EVENTS ;




 int MLX5_DEVICE_STATE_INTERNAL_ERROR ;
 int MLX5_DEV_EVENT_VPORT_CHANGE ;
 int MLX5_NUM_SPARE_EQE ;







 scalar_t__ be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int dcbx_subevent (scalar_t__) ;
 int eq_update_ci (struct mlx5_eq*,int) ;
 int eqe_type_str (int) ;
 int mlx5_cmd_comp_handler (struct mlx5_core_dev*,int,int ) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int,int,...) ;
 int mlx5_core_req_pages_handler (struct mlx5_core_dev*,scalar_t__,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int,scalar_t__) ;
 int mlx5_cq_completion (struct mlx5_core_dev*,int) ;
 int mlx5_cq_event (struct mlx5_core_dev*,int,int) ;
 int mlx5_fpga_event (struct mlx5_core_dev*,int,int *) ;
 int mlx5_port_general_notification_event (struct mlx5_core_dev*,struct mlx5_eqe*) ;
 int mlx5_port_module_event (struct mlx5_core_dev*,struct mlx5_eqe*) ;
 int mlx5_rsc_event (struct mlx5_core_dev*,int,int) ;
 int mlx5_srq_event (struct mlx5_core_dev*,int,int) ;
 int mlx5_temp_warning_event (struct mlx5_core_dev*,struct mlx5_eqe*) ;
 struct mlx5_eqe* next_eqe_sw (struct mlx5_eq*) ;
 int port_subtype_event (scalar_t__) ;
 int rmb () ;
 int stub1 (struct mlx5_core_dev*,int ,unsigned long) ;
 int stub2 (struct mlx5_core_dev*,int ,unsigned long) ;
 int stub3 (struct mlx5_core_dev*,int ,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlx5_eq_int(struct mlx5_core_dev *dev, struct mlx5_eq *eq)
{
 struct mlx5_eqe *eqe;
 int eqes_found = 0;
 int set_ci = 0;
 u32 cqn;
 u32 rsn;
 u8 port;

 while ((eqe = next_eqe_sw(eq))) {




  rmb();

  mlx5_core_dbg(eq->dev, "eqn %d, eqe type %s\n",
         eq->eqn, eqe_type_str(eqe->type));
  switch (eqe->type) {
  case 151:
   cqn = be32_to_cpu(eqe->data.comp.cqn) & 0xffffff;
   mlx5_cq_completion(dev, cqn);
   break;

  case 145:
  case 152:
  case 142:
  case 140:
  case 136:
  case 144:
  case 135:
  case 137:
   rsn = be32_to_cpu(eqe->data.qp_srq.qp_srq_n) & 0xffffff;
   mlx5_core_dbg(dev, "event %s(%d) arrived on resource 0x%x\n",
          eqe_type_str(eqe->type), eqe->type, rsn);
   mlx5_rsc_event(dev, rsn, eqe->type);
   break;

  case 139:
  case 141:
   rsn = be32_to_cpu(eqe->data.qp_srq.qp_srq_n) & 0xffffff;
   mlx5_core_dbg(dev, "SRQ event %s(%d): srqn 0x%x\n",
          eqe_type_str(eqe->type), eqe->type, rsn);
   mlx5_srq_event(dev, rsn, eqe->type);
   break;

  case 156:
   if (dev->state != MLX5_DEVICE_STATE_INTERNAL_ERROR) {
    mlx5_cmd_comp_handler(dev, be32_to_cpu(eqe->data.cmd.vector),
        MLX5_CMD_MODE_EVENTS);
   }
   break;

  case 143:
   port = (eqe->data.port.port >> 4) & 0xf;
   switch (eqe->sub_type) {
   case 132:
   case 134:
   case 129:
   case 128:
   case 131:
   case 133:
   case 130:
    if (dev->event)
     dev->event(dev, port_subtype_event(eqe->sub_type),
         (unsigned long)port);
    break;
   default:
    mlx5_core_warn(dev, "Port event with unrecognized subtype: port %d, sub_type %d\n",
            port, eqe->sub_type);
   }
   break;

  case 155:
   port = (eqe->data.port.port >> 4) & 0xf;
   switch (eqe->sub_type) {
   case 160:
   case 157:
   case 159:
   case 158:
    if (dev->event)
     dev->event(dev,
         dcbx_subevent(eqe->sub_type),
         0);
    break;
   default:
    mlx5_core_warn(dev,
            "dcbx event with unrecognized subtype: port %d, sub_type %d\n",
            port, eqe->sub_type);
   }
   break;

  case 154:
   mlx5_port_general_notification_event(dev, eqe);
   break;

  case 150:
   cqn = be32_to_cpu(eqe->data.cq_err.cqn) & 0xffffff;
   mlx5_core_warn(dev, "CQ error on CQN 0x%x, syndrom 0x%x\n",
           cqn, eqe->data.cq_err.syndrome);
   mlx5_cq_event(dev, cqn, eqe->type);
   break;

  case 146:
   {
    u16 func_id = be16_to_cpu(eqe->data.req_pages.func_id);
    s32 npages = be32_to_cpu(eqe->data.req_pages.num_pages);

    mlx5_core_dbg(dev, "page request for func 0x%x, npages %d\n",
           func_id, npages);
    mlx5_core_req_pages_handler(dev, func_id, npages);
   }
   break;

  case 153:
   mlx5_port_module_event(dev, eqe);
   break;

  case 147:
   {
    struct mlx5_eqe_vport_change *vc_eqe =
      &eqe->data.vport_change;
    u16 vport_num = be16_to_cpu(vc_eqe->vport_num);

    if (dev->event)
     dev->event(dev,
          MLX5_DEV_EVENT_VPORT_CHANGE,
          (unsigned long)vport_num);
   }
   break;

  case 149:
  case 148:
   mlx5_fpga_event(dev, eqe->type, &eqe->data.raw);
   break;
  case 138:
   mlx5_temp_warning_event(dev, eqe);
   break;

  default:
   mlx5_core_warn(dev, "Unhandled event 0x%x on EQ 0x%x\n",
           eqe->type, eq->eqn);
   break;
  }

  ++eq->cons_index;
  eqes_found = 1;
  ++set_ci;







  if (unlikely(set_ci >= MLX5_NUM_SPARE_EQE)) {
   eq_update_ci(eq, 0);
   set_ci = 0;
  }
 }

 eq_update_ci(eq, 1);

 return eqes_found;
}
