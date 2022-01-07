
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int flag ;



flag syst_float64_le( float64 a, float64 b )
{

    return ( *( (double *) &a ) <= *( (double *) &b ) );

}
