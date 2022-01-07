
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int SCI_CONTROLLER_ERROR ;


 int isci_log_message (int ,char*,char*,int ) ;

void scif_cb_controller_error(SCI_CONTROLLER_HANDLE_T controller,
    SCI_CONTROLLER_ERROR error)
{

 isci_log_message(0, "ISCI", "scif_cb_controller_error: 0x%x\n",
     error);
}
