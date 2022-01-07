
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int floatX ;


 int floatXNaN ;
 int float_flag_invalid ;
 int slow_float_exception_flags ;

__attribute__((used)) static floatX floatXInvalid( void )
{

    slow_float_exception_flags |= float_flag_invalid;
    return floatXNaN;

}
