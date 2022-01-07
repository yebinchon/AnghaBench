
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct net_device {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int ENODEV ;
 int if_addmulti (struct net_device*,struct sockaddr*,int *) ;
 int if_delmulti (struct net_device*,struct sockaddr*) ;
 int rdma_gid2ip (struct sockaddr*,union ib_gid const*) ;

__attribute__((used)) static int cma_igmp_send(struct net_device *ndev, const union ib_gid *mgid, bool join)
{
 int retval;

 if (ndev) {
  union {
   struct sockaddr sock;
   struct sockaddr_storage storage;
  } addr;

  rdma_gid2ip(&addr.sock, mgid);

  CURVNET_SET_QUIET(ndev->if_vnet);
  if (join)
   retval = -if_addmulti(ndev, &addr.sock, ((void*)0));
  else
   retval = -if_delmulti(ndev, &addr.sock);
  CURVNET_RESTORE();
 } else {
  retval = -ENODEV;
 }
 return retval;
}
