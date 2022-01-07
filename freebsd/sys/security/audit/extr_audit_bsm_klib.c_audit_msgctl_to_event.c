
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_event_t ;


 int AUE_MSGCTL ;
 int AUE_MSGCTL_RMID ;
 int AUE_MSGCTL_SET ;
 int AUE_MSGCTL_STAT ;




au_event_t
audit_msgctl_to_event(int cmd)
{

 switch (cmd) {
 case 130:
  return (AUE_MSGCTL_RMID);

 case 129:
  return (AUE_MSGCTL_SET);

 case 128:
  return (AUE_MSGCTL_STAT);

 default:

  return (AUE_MSGCTL);
 }
}
