
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int OPAL_CHECK_TOKEN ;
 int OPAL_HANDLE_HMI ;
 int OPAL_HANDLE_HMI2 ;
 int OPAL_HMI_EVT ;
 scalar_t__ OPAL_TOKEN_PRESENT ;
 scalar_t__ bootverbose ;
 int hmi_handler ;
 scalar_t__ opal_call (int ,int ) ;
 scalar_t__ opal_check () ;
 int opal_hmi_event_handler ;
 int opal_hmi_handler ;
 int opal_hmi_handler2 ;
 int printf (char*) ;

__attribute__((used)) static void
opal_setup_hmi(void *data)
{

 if (opal_check() != 0)
  return;

 if (opal_call(OPAL_CHECK_TOKEN, OPAL_HANDLE_HMI2) == OPAL_TOKEN_PRESENT)
  hmi_handler = opal_hmi_handler2;
 else if (opal_call(OPAL_CHECK_TOKEN, OPAL_HANDLE_HMI) == OPAL_TOKEN_PRESENT)
  hmi_handler = opal_hmi_handler;
 else {
  printf("Warning: No OPAL HMI handler found.\n");
  return;
 }

 EVENTHANDLER_REGISTER(OPAL_HMI_EVT, opal_hmi_event_handler, ((void*)0),
     EVENTHANDLER_PRI_ANY);

 if (bootverbose)
  printf("Installed OPAL HMI handler.\n");
}
