
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_4__ {int a0; scalar_t__ a1; } ;
struct TYPE_5__ {int sign; int exp; TYPE_1__ sig; void* isNaN; void* isInf; void* isZero; } ;
typedef TYPE_2__ floatX ;
typedef int float32 ;


 void* FALSE ;
 int LIT64 (int) ;
 void* TRUE ;

__attribute__((used)) static floatX float32ToFloatX( float32 a )
{
    int16 expField;
    floatX ax;

    ax.isNaN = FALSE;
    ax.isInf = FALSE;
    ax.isZero = FALSE;
    ax.sign = ( ( a & 0x80000000 ) != 0 );
    expField = ( a>>23 ) & 0xFF;
    ax.sig.a1 = 0;
    ax.sig.a0 = a & 0x007FFFFF;
    ax.sig.a0 <<= 32;
    if ( expField == 0 ) {
        if ( ax.sig.a0 == 0 ) {
            ax.isZero = TRUE;
        }
        else {
            expField = 1 - 0x7F;
            do {
                ax.sig.a0 <<= 1;
                --expField;
            } while ( ax.sig.a0 < LIT64( 0x0080000000000000 ) );
            ax.exp = expField;
        }
    }
    else if ( expField == 0xFF ) {
        if ( ax.sig.a0 == 0 ) {
            ax.isInf = TRUE;
        }
        else {
            ax.isNaN = TRUE;
        }
    }
    else {
        ax.sig.a0 |= LIT64( 0x0080000000000000 );
        ax.exp = expField - 0x7F;
    }
    return ax;

}
