
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct opal_msg {int msg_type; } ;
typedef int msg ;


 int EVENTHANDLER_DIRECT_INVOKE (int ,struct opal_msg*) ;
 int OPAL_ASYNC_COMP ;
 int OPAL_DPO ;
 int OPAL_EPOW ;
 int OPAL_GET_MSG ;
 int OPAL_HMI_EVT ;






 int OPAL_OCC ;
 int OPAL_SHUTDOWN ;
 scalar_t__ OPAL_SUCCESS ;
 int be32toh (int ) ;
 scalar_t__ opal_call (int ,int ,int) ;
 int printf (char*,int) ;
 int vtophys (struct opal_msg*) ;

__attribute__((used)) static void
opal_handle_messages(void)
{
 static struct opal_msg msg;
 uint64_t rv;
 uint32_t type;

 rv = opal_call(OPAL_GET_MSG, vtophys(&msg), sizeof(msg));

 if (rv != OPAL_SUCCESS)
  return;

 type = be32toh(msg.msg_type);
 switch (type) {
 case 133:
  EVENTHANDLER_DIRECT_INVOKE(OPAL_ASYNC_COMP, &msg);
  break;
 case 131:
  EVENTHANDLER_DIRECT_INVOKE(OPAL_EPOW, &msg);
  break;
 case 128:
  EVENTHANDLER_DIRECT_INVOKE(OPAL_SHUTDOWN, &msg);
  break;
 case 130:
  EVENTHANDLER_DIRECT_INVOKE(OPAL_HMI_EVT, &msg);
  break;
 case 132:
  EVENTHANDLER_DIRECT_INVOKE(OPAL_DPO, &msg);
  break;
 case 129:
  EVENTHANDLER_DIRECT_INVOKE(OPAL_OCC, &msg);
  break;
 default:
  printf("Unknown OPAL message type %d\n", type);
 }
}
