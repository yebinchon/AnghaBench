
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbits32 ;
typedef int int32 ;


 size_t int32NumP1 ;
 scalar_t__* int32P1 ;
 size_t randomUint8 () ;

__attribute__((used)) static int32 int32RandomP3( void )
{

    return
        (sbits32) (
              int32P1[ randomUint8() % int32NumP1 ]
            + int32P1[ randomUint8() % int32NumP1 ]
            + int32P1[ randomUint8() % int32NumP1 ]
        );

}
