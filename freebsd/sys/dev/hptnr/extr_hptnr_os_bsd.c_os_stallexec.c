
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPT_U32 ;


 int DELAY (int ) ;

void os_stallexec(HPT_U32 microseconds)
{
    DELAY(microseconds);
}
