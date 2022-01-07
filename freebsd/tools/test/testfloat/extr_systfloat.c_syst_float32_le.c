
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;
typedef int flag ;



flag syst_float32_le( float32 a, float32 b )
{

    return ( *( (float *) &a ) <= *( (float *) &b ) );

}
