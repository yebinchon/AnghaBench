
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;


 int float64RandomQInfP3 () ;
 int float64RandomQInfPInf () ;
 int float64RandomQOutP3 () ;
 int float64RandomQOutPInf () ;
 int randomUint8 () ;

__attribute__((used)) static float64 float64Random( void )
{

    switch ( randomUint8() & 7 ) {
     case 0:
     case 1:
     case 2:
        return float64RandomQOutP3();
     case 3:
        return float64RandomQOutPInf();
     case 4:
     case 5:
     case 6:
        return float64RandomQInfP3();
     default:
        return float64RandomQInfPInf();
    }

}
