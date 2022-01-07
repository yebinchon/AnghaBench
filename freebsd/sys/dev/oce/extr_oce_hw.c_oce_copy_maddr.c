
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct TYPE_3__ {scalar_t__ num_mac; int * mac; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
struct mbx_set_common_iface_multicast {TYPE_2__ params; } ;


 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 scalar_t__ OCE_MAX_MC_FILTER_SIZE ;
 int bcopy (int ,int *,int ) ;

__attribute__((used)) static u_int
oce_copy_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct mbx_set_common_iface_multicast *req = arg;

 if (req->params.req.num_mac == OCE_MAX_MC_FILTER_SIZE)
  return (0);

 bcopy(LLADDR(sdl), &req->params.req.mac[req->params.req.num_mac++],
     ETHER_ADDR_LEN);

 return (1);
}
