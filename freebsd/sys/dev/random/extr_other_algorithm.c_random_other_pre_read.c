
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RANDOM_RESEED_LOCK () ;
 int RANDOM_RESEED_UNLOCK () ;

__attribute__((used)) static void
random_other_pre_read(void)
{

 RANDOM_RESEED_LOCK();




 RANDOM_RESEED_UNLOCK();
}
