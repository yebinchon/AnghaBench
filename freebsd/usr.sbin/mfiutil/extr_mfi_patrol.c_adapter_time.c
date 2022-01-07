
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ time_t ;


 char* ctime (scalar_t__*) ;

__attribute__((used)) static char *
adapter_time(time_t now, uint32_t at_now, uint32_t at)
{
 time_t t;

 t = (now - at_now) + at;
 return (ctime(&t));
}
