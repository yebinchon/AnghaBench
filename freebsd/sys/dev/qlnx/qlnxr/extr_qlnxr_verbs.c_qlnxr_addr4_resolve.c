
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; int sin_len; } ;
struct sockaddr {int dummy; } ;
struct qlnxr_dev {TYPE_2__* ha; } ;
struct llentry {int dummy; } ;
struct TYPE_4__ {int ifp; } ;


 int NIPQUAD (int ) ;
 int QL_DPRINT12 (TYPE_2__*,char*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int arpresolve (int ,int *,int *,struct sockaddr*,int *,struct llentry**,...) ;

__attribute__((used)) static int
qlnxr_addr4_resolve(struct qlnxr_dev *dev,
         struct sockaddr_in *src_in,
         struct sockaddr_in *dst_in,
         u8 *dst_mac)
{
 int rc;





 struct llentry *lle;

 rc = arpresolve(dev->ha->ifp, ((void*)0), ((void*)0), (struct sockaddr *)dst_in,
   dst_mac, &lle);


 QL_DPRINT12(dev->ha, "rc = %d "
  "sa_len = 0x%x sa_family = 0x%x IP Address = %d.%d.%d.%d "
  "Dest MAC %02x:%02x:%02x:%02x:%02x:%02x\n", rc,
  dst_in->sin_len, dst_in->sin_family,
  NIPQUAD((dst_in->sin_addr.s_addr)),
  dst_mac[0], dst_mac[1], dst_mac[2],
  dst_mac[3], dst_mac[4], dst_mac[5]);

 return rc;
}
