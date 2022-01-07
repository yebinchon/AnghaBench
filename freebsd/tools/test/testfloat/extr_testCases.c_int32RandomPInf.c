
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbits32 ;
typedef size_t int8 ;
typedef int int32 ;


 size_t int32NumPInfWeightMasks ;
 int* int32PInfWeightMasks ;
 scalar_t__* int32PInfWeightOffsets ;
 int randomUint32 () ;
 size_t randomUint8 () ;

__attribute__((used)) static int32 int32RandomPInf( void )
{
    int8 weightMaskNum;

    weightMaskNum = randomUint8() % int32NumPInfWeightMasks;
    return
        (sbits32) (
              ( randomUint32() & int32PInfWeightMasks[ weightMaskNum ] )
            + int32PInfWeightOffsets[ weightMaskNum ]
        );

}
