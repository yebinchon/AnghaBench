
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_9__ {int a1; scalar_t__ a0; } ;
struct TYPE_8__ {int exp; scalar_t__ isZero; TYPE_2__ sig; scalar_t__ isInf; scalar_t__ isNaN; } ;
typedef TYPE_1__ floatX ;


 int FALSE ;
 scalar_t__ TRUE ;
 TYPE_1__ roundFloatXTo113 (int ,TYPE_1__) ;
 TYPE_2__ shortShift128RightJamming (TYPE_2__,int) ;

__attribute__((used)) static floatX floatXRoundToInt( floatX ax )
{
    int32 shiftCount, i;

    if ( ax.isNaN || ax.isInf ) return ax;
    shiftCount = 112 - ax.exp;
    if ( shiftCount <= 0 ) return ax;
    if ( 119 < shiftCount ) {
        ax.exp = 112;
        ax.sig.a1 = ! ax.isZero;
        ax.sig.a0 = 0;
    }
    else {
        while ( 0 < shiftCount ) {
            ax.sig = shortShift128RightJamming( ax.sig, 1 );
            ++ax.exp;
            --shiftCount;
        }
    }
    ax = roundFloatXTo113( FALSE, ax );
    if ( ( ax.sig.a0 == 0 ) && ( ax.sig.a1 == 0 ) ) ax.isZero = TRUE;
    return ax;

}
