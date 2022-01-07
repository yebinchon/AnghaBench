
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_event_t ;


 int AUE_SEMCTL ;
 int AUE_SEMCTL_GETALL ;
 int AUE_SEMCTL_GETNCNT ;
 int AUE_SEMCTL_GETPID ;
 int AUE_SEMCTL_GETVAL ;
 int AUE_SEMCTL_GETZCNT ;
 int AUE_SEMCTL_RMID ;
 int AUE_SEMCTL_SET ;
 int AUE_SEMCTL_SETALL ;
 int AUE_SEMCTL_SETVAL ;
 int AUE_SEMCTL_STAT ;
au_event_t
audit_semctl_to_event(int cmd)
{

 switch (cmd) {
 case 137:
  return (AUE_SEMCTL_GETALL);

 case 136:
  return (AUE_SEMCTL_GETNCNT);

 case 135:
  return (AUE_SEMCTL_GETPID);

 case 134:
  return (AUE_SEMCTL_GETVAL);

 case 133:
  return (AUE_SEMCTL_GETZCNT);

 case 132:
  return (AUE_SEMCTL_RMID);

 case 131:
  return (AUE_SEMCTL_SET);

 case 129:
  return (AUE_SEMCTL_SETALL);

 case 128:
  return (AUE_SEMCTL_SETVAL);

 case 130:
  return (AUE_SEMCTL_STAT);

 default:

  return (AUE_SEMCTL);
 }
}
