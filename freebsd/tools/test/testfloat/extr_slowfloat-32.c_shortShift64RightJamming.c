
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int8 ;
struct TYPE_4__ {int a1; int a0; } ;
typedef TYPE_1__ bits64X ;
typedef int bits32 ;



__attribute__((used)) static bits64X shortShift64RightJamming( bits64X a, int8 shiftCount )
{
    int8 negShiftCount;
    bits32 extra;

    negShiftCount = ( - shiftCount & 31 );
    extra = a.a1<<negShiftCount;
    a.a1 = ( a.a0<<negShiftCount ) | ( a.a1>>shiftCount ) | ( extra != 0 );
    a.a0 >>= shiftCount;
    return a;

}
