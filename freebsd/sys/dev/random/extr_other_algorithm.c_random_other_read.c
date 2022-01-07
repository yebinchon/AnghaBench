
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int RANDOM_RESEED_LOCK () ;
 int RANDOM_RESEED_UNLOCK () ;

__attribute__((used)) static void
random_other_read(uint8_t *buf, size_t count)
{

 RANDOM_RESEED_LOCK();



 RANDOM_RESEED_UNLOCK();
}
