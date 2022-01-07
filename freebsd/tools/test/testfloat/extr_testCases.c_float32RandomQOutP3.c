
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;


 size_t float32NumP2 ;
 size_t float32NumQOut ;
 int* float32P2 ;
 int* float32QOut ;
 size_t randomUint8 () ;

__attribute__((used)) static float32 float32RandomQOutP3( void )
{

    return
          float32QOut[ randomUint8() % float32NumQOut ]
        | ( ( float32P2[ randomUint8() % float32NumP2 ]
                + float32P2[ randomUint8() % float32NumP2 ] )
            & 0x007FFFFF );

}
