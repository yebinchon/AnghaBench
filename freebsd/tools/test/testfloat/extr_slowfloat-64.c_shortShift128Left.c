
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int8 ;
struct TYPE_4__ {int a0; int a1; } ;
typedef TYPE_1__ bits128X ;



__attribute__((used)) static bits128X shortShift128Left( bits128X a, int8 shiftCount )
{
    int8 negShiftCount;

    negShiftCount = ( - shiftCount & 63 );
    a.a0 = ( a.a0<<shiftCount ) | ( a.a1>>negShiftCount );
    a.a1 <<= shiftCount;
    return a;

}
