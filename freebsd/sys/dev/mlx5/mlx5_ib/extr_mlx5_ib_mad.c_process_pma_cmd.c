
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_pma_portcounters_ext {int dummy; } ;
struct ib_pma_portcounters {int dummy; } ;
struct TYPE_2__ {scalar_t__ attr_id; } ;
struct ib_mad {scalar_t__ data; TYPE_1__ mad_hdr; } ;
struct ib_device {int dummy; } ;
struct ib_class_port_info {int capability_mask; } ;
typedef int cpi ;


 int IB_MAD_RESULT_FAILURE ;
 int IB_MAD_RESULT_REPLY ;
 int IB_MAD_RESULT_SUCCESS ;
 int IB_PMA_CLASS_CAP_EXT_WIDTH ;
 scalar_t__ IB_PMA_CLASS_PORT_INFO ;
 scalar_t__ IB_PMA_PORT_COUNTERS_EXT ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (void*) ;
 int memcpy (scalar_t__,struct ib_class_port_info*,int) ;
 int mlx5_core_query_ib_ppcnt (int ,int ,void*,int) ;
 int mlx5_core_query_vport_counter (int ,int ,int ,int ,void*,int) ;
 void* mlx5_vzalloc (int) ;
 int pma_cnt_assign (struct ib_pma_portcounters*,void*) ;
 int pma_cnt_ext_assign (struct ib_pma_portcounters_ext*,void*) ;
 int ppcnt_reg ;
 int query_vport_counter_out ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int process_pma_cmd(struct ib_device *ibdev, u8 port_num,
      const struct ib_mad *in_mad, struct ib_mad *out_mad)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 int err;
 void *out_cnt;


 if (in_mad->mad_hdr.attr_id == IB_PMA_CLASS_PORT_INFO) {
  struct ib_class_port_info cpi = {};

  cpi.capability_mask = IB_PMA_CLASS_CAP_EXT_WIDTH;
  memcpy((out_mad->data + 40), &cpi, sizeof(cpi));
  return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
 }

 if (in_mad->mad_hdr.attr_id == IB_PMA_PORT_COUNTERS_EXT) {
  struct ib_pma_portcounters_ext *pma_cnt_ext =
   (struct ib_pma_portcounters_ext *)(out_mad->data + 40);
  int sz = MLX5_ST_SZ_BYTES(query_vport_counter_out);

  out_cnt = mlx5_vzalloc(sz);
  if (!out_cnt)
   return IB_MAD_RESULT_FAILURE;

  err = mlx5_core_query_vport_counter(dev->mdev, 0, 0,
          port_num, out_cnt, sz);
  if (!err)
   pma_cnt_ext_assign(pma_cnt_ext, out_cnt);
 } else {
  struct ib_pma_portcounters *pma_cnt =
   (struct ib_pma_portcounters *)(out_mad->data + 40);
  int sz = MLX5_ST_SZ_BYTES(ppcnt_reg);

  out_cnt = mlx5_vzalloc(sz);
  if (!out_cnt)
   return IB_MAD_RESULT_FAILURE;

  err = mlx5_core_query_ib_ppcnt(dev->mdev, port_num,
            out_cnt, sz);
  if (!err)
   pma_cnt_assign(pma_cnt, out_cnt);
  }

 kvfree(out_cnt);
 if (err)
  return IB_MAD_RESULT_FAILURE;

 return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
}
