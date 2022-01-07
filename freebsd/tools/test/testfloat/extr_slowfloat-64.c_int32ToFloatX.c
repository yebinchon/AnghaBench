
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {int a0; scalar_t__ a1; } ;
struct TYPE_5__ {int sign; int exp; TYPE_1__ sig; void* isZero; void* isInf; void* isNaN; } ;
typedef TYPE_2__ floatX ;
typedef int bits64 ;


 void* FALSE ;
 int LIT64 (int) ;
 void* TRUE ;

__attribute__((used)) static floatX int32ToFloatX( int32 a )
{
    floatX ax;

    ax.isNaN = FALSE;
    ax.isInf = FALSE;
    ax.sign = ( a < 0 );
    ax.sig.a1 = 0;
    ax.sig.a0 = ax.sign ? - (bits64) a : a;
    if ( a == 0 ) {
        ax.isZero = TRUE;
        return ax;
    }
    ax.isZero = FALSE;
    ax.sig.a0 <<= 24;
    ax.exp = 31;
    while ( ax.sig.a0 < LIT64( 0x0080000000000000 ) ) {
        ax.sig.a0 <<= 1;
        --ax.exp;
    }
    return ax;

}
