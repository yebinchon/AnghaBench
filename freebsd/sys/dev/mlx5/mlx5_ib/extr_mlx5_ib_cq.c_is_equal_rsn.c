
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_cqe64 {int sop_drop_qpn; } ;


 int ntohl (int ) ;

__attribute__((used)) static int is_equal_rsn(struct mlx5_cqe64 *cqe64, u32 rsn)
{
 return rsn == (ntohl(cqe64->sop_drop_qpn) & 0xffffff);
}
