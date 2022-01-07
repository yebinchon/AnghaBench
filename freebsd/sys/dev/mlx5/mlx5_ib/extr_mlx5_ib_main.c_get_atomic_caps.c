
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_device_attr {int atomic_cap; } ;


 int IB_ATOMIC_HCA ;
 int IB_ATOMIC_NONE ;
 int MLX5_ATOMIC_OPS_CMP_SWAP ;
 int MLX5_ATOMIC_OPS_FETCH_ADD ;
 int MLX5_ATOMIC_SIZE_QP_8BYTES ;
 int MLX5_CAP_ATOMIC (int ,int ) ;
 int atomic_operations ;
 int atomic_req_8B_endianess_mode ;
 int atomic_size_qp ;

__attribute__((used)) static void get_atomic_caps(struct mlx5_ib_dev *dev,
       struct ib_device_attr *props)
{
 u8 tmp;
 u8 atomic_operations = MLX5_CAP_ATOMIC(dev->mdev, atomic_operations);
 u8 atomic_size_qp = MLX5_CAP_ATOMIC(dev->mdev, atomic_size_qp);
 u8 atomic_req_8B_endianness_mode =
  MLX5_CAP_ATOMIC(dev->mdev, atomic_req_8B_endianess_mode);




 tmp = MLX5_ATOMIC_OPS_CMP_SWAP | MLX5_ATOMIC_OPS_FETCH_ADD;
 if (((atomic_operations & tmp) == tmp) &&
     (atomic_size_qp & MLX5_ATOMIC_SIZE_QP_8BYTES) &&
     (atomic_req_8B_endianness_mode)) {
  props->atomic_cap = IB_ATOMIC_HCA;
 } else {
  props->atomic_cap = IB_ATOMIC_NONE;
 }
}
