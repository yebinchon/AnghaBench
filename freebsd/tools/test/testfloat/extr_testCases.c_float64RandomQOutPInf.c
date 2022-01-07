
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;


 int SETFLOAT64 (int ,int,int) ;
 size_t float64NumQOut ;
 int* float64QOut ;
 int randomUint32 () ;
 size_t randomUint8 () ;

__attribute__((used)) static float64 float64RandomQOutPInf( void )
{
    float64 z;

    SETFLOAT64(
        z,
          float64QOut[ randomUint8() % float64NumQOut ]
        | ( randomUint32() & 0x000FFFFF ),
        randomUint32()
    );
    return z;

}
