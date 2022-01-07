
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int filter; } ;
typedef TYPE_1__ qlnx_host_t ;


 int ECORE_ACCEPT_MCAST_UNMATCHED ;
 int ECORE_ACCEPT_UCAST_UNMATCHED ;
 int qlnx_set_rx_accept_filter (TYPE_1__*,int ) ;
 scalar_t__ qlnx_vf_device (TYPE_1__*) ;

__attribute__((used)) static int
qlnx_set_promisc(qlnx_host_t *ha)
{
 int rc = 0;
 uint8_t filter;

 if (qlnx_vf_device(ha) == 0)
  return (0);

 filter = ha->filter;
 filter |= ECORE_ACCEPT_MCAST_UNMATCHED;
 filter |= ECORE_ACCEPT_UCAST_UNMATCHED;

 rc = qlnx_set_rx_accept_filter(ha, filter);
 return (rc);
}
