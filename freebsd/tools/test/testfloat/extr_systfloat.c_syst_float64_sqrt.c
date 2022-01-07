
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;


 double sqrt (double) ;

float64 syst_float64_sqrt( float64 a )
{
    float64 z;

    *( (double *) &z ) = sqrt( *( (double *) &a ) );
    return z;

}
