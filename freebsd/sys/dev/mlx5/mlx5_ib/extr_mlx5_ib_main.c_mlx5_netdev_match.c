
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ if_type; int * if_softc; int * if_dname; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ IFT_ETHER ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static bool mlx5_netdev_match(struct net_device *ndev,
         struct mlx5_core_dev *mdev,
         const char *dname)
{
 return ndev->if_type == IFT_ETHER &&
   ndev->if_dname != ((void*)0) &&
   strcmp(ndev->if_dname, dname) == 0 &&
   ndev->if_softc != ((void*)0) &&
   *(struct mlx5_core_dev **)ndev->if_softc == mdev;
}
