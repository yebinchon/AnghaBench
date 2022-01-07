
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_event_t ;


 int AUE_SEMSYS ;
 int * aue_semsys ;
 int aue_semsys_count ;

au_event_t
audit_semsys_to_event(int which)
{

 if ((which >= 0) && (which < aue_semsys_count))
  return (aue_semsys[which]);


 return (AUE_SEMSYS);
}
