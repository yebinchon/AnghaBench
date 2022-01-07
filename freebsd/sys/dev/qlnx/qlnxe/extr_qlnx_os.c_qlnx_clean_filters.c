
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int primary_mac; } ;
typedef TYPE_1__ qlnx_host_t ;


 int ECORE_FILTER_FLUSH ;
 int qlnx_remove_all_mcast_mac (TYPE_1__*) ;
 int qlnx_remove_all_ucast_mac (TYPE_1__*) ;
 int qlnx_set_ucast_rx_mac (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
qlnx_clean_filters(qlnx_host_t *ha)
{
        int rc = 0;


 rc = qlnx_remove_all_ucast_mac(ha);
 if (rc)
  return rc;


 rc = qlnx_remove_all_mcast_mac(ha);
 if (rc)
  return rc;

        rc = qlnx_set_ucast_rx_mac(ha, ECORE_FILTER_FLUSH, ha->primary_mac);

        return (rc);
}
