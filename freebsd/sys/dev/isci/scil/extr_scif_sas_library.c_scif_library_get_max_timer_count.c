
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U16 ;


 scalar_t__ SCIF_SAS_LIBRARY_MAX_TIMERS ;
 scalar_t__ scic_library_get_max_timer_count () ;

U16 scif_library_get_max_timer_count(
   void
)
{

   return SCIF_SAS_LIBRARY_MAX_TIMERS + scic_library_get_max_timer_count();
}
