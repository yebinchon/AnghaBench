
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct harvest_event {int dummy; } ;


 int RANDOM_RESEED_LOCK () ;
 int RANDOM_RESEED_UNLOCK () ;

__attribute__((used)) static void
random_other_process_event(struct harvest_event *event)
{

 RANDOM_RESEED_LOCK();




 RANDOM_RESEED_UNLOCK();
}
