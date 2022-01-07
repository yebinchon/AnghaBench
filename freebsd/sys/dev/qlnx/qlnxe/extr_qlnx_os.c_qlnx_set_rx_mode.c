
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int filter; int primary_mac; } ;
typedef TYPE_1__ qlnx_host_t ;


 int ECORE_ACCEPT_BCAST ;
 int ECORE_ACCEPT_MCAST_MATCHED ;
 int ECORE_ACCEPT_MCAST_UNMATCHED ;
 int ECORE_ACCEPT_UCAST_MATCHED ;
 int ECORE_ACCEPT_UCAST_UNMATCHED ;
 int ECORE_FILTER_REPLACE ;
 int qlnx_remove_all_mcast_mac (TYPE_1__*) ;
 int qlnx_set_rx_accept_filter (TYPE_1__*,int) ;
 int qlnx_set_ucast_rx_mac (TYPE_1__*,int ,int ) ;
 scalar_t__ qlnx_vf_device (TYPE_1__*) ;

__attribute__((used)) static int
qlnx_set_rx_mode(qlnx_host_t *ha)
{
 int rc = 0;
 uint8_t filter;

 rc = qlnx_set_ucast_rx_mac(ha, ECORE_FILTER_REPLACE, ha->primary_mac);
        if (rc)
                return rc;

 rc = qlnx_remove_all_mcast_mac(ha);
        if (rc)
                return rc;

 filter = ECORE_ACCEPT_UCAST_MATCHED |
   ECORE_ACCEPT_MCAST_MATCHED |
   ECORE_ACCEPT_BCAST;

 if (qlnx_vf_device(ha) == 0) {
  filter |= ECORE_ACCEPT_UCAST_UNMATCHED;
  filter |= ECORE_ACCEPT_MCAST_UNMATCHED;
 }
 ha->filter = filter;

 rc = qlnx_set_rx_accept_filter(ha, filter);

 return (rc);
}
