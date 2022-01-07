
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int8 ;


 scalar_t__ float_exception_flags ;

int8 clearFlags( void )
{
    int8 flags;

    flags = float_exception_flags;
    float_exception_flags = 0;
    return flags;

}
