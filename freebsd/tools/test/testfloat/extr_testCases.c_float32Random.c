
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;


 int float32RandomQInfP3 () ;
 int float32RandomQInfPInf () ;
 int float32RandomQOutP3 () ;
 int float32RandomQOutPInf () ;
 int randomUint8 () ;

__attribute__((used)) static float32 float32Random( void )
{

    switch ( randomUint8() & 7 ) {
     case 0:
     case 1:
     case 2:
        return float32RandomQOutP3();
     case 3:
        return float32RandomQOutPInf();
     case 4:
     case 5:
     case 6:
        return float32RandomQInfP3();
     default:
        return float32RandomQInfPInf();
    }

}
