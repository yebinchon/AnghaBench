
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_event_t ;


 int AUE_SHMSYS ;
 int * aue_shmsys ;
 int aue_shmsys_count ;

au_event_t
audit_shmsys_to_event(int which)
{

 if ((which >= 0) && (which < aue_shmsys_count))
  return (aue_shmsys[which]);


 return (AUE_SHMSYS);
}
