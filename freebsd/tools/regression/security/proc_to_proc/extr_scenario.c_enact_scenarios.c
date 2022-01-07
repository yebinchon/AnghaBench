
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enact_scenario (int) ;
 int perror (char*) ;
 int scenarios_count ;

void
enact_scenarios(void)
{
 int i, error;

 for (i = 0; i < scenarios_count; i++) {
  error = enact_scenario(i);
  if (error)
   perror("enact_scenario");
 }
}
