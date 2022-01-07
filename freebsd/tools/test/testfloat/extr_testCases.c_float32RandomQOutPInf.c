
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;


 size_t float32NumQOut ;
 int* float32QOut ;
 int randomUint32 () ;
 size_t randomUint8 () ;

__attribute__((used)) static float32 float32RandomQOutPInf( void )
{

    return
          float32QOut[ randomUint8() % float32NumQOut ]
        | ( randomUint32() & 0x007FFFFF );

}
