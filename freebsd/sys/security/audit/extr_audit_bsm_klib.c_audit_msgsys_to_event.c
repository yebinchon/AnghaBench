
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_event_t ;


 int AUE_MSGSYS ;
 int * aue_msgsys ;
 int aue_msgsys_count ;

au_event_t
audit_msgsys_to_event(int which)
{

 if ((which >= 0) && (which < aue_msgsys_count))
  return (aue_msgsys[which]);


 return (AUE_MSGSYS);
}
