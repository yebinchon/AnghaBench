
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_admin_aenq_link_change_desc {int flags; } ;
struct ena_admin_aenq_entry {int dummy; } ;
struct ena_adapter {int pdev; int ifp; } ;
typedef int if_t ;


 int ENA_ADMIN_AENQ_LINK_CHANGE_DESC_LINK_STATUS_MASK ;
 int ENA_FLAG_CLEAR_ATOMIC (int ,struct ena_adapter*) ;
 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_LINK_UP ;
 int ENA_FLAG_ONGOING_RESET ;
 int ENA_FLAG_SET_ATOMIC (int ,struct ena_adapter*) ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int device_printf (int ,char*) ;
 int if_link_state_change (int ,int ) ;

__attribute__((used)) static void
ena_update_on_link_change(void *adapter_data,
    struct ena_admin_aenq_entry *aenq_e)
{
 struct ena_adapter *adapter = (struct ena_adapter *)adapter_data;
 struct ena_admin_aenq_link_change_desc *aenq_desc;
 int status;
 if_t ifp;

 aenq_desc = (struct ena_admin_aenq_link_change_desc *)aenq_e;
 ifp = adapter->ifp;
 status = aenq_desc->flags &
     ENA_ADMIN_AENQ_LINK_CHANGE_DESC_LINK_STATUS_MASK;

 if (status != 0) {
  device_printf(adapter->pdev, "link is UP\n");
  ENA_FLAG_SET_ATOMIC(ENA_FLAG_LINK_UP, adapter);
  if (!ENA_FLAG_ISSET(ENA_FLAG_ONGOING_RESET, adapter))
   if_link_state_change(ifp, LINK_STATE_UP);
 } else {
  device_printf(adapter->pdev, "link is DOWN\n");
  if_link_state_change(ifp, LINK_STATE_DOWN);
  ENA_FLAG_CLEAR_ATOMIC(ENA_FLAG_LINK_UP, adapter);
 }
}
