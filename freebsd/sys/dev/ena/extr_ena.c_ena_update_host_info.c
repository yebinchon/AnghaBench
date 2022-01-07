
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ena_admin_host_info {scalar_t__* supported_network_features; } ;
typedef int if_t ;


 scalar_t__ if_getcapabilities (int ) ;

__attribute__((used)) static void
ena_update_host_info(struct ena_admin_host_info *host_info, if_t ifp)
{

 host_info->supported_network_features[0] =
     (uint32_t)if_getcapabilities(ifp);
}
