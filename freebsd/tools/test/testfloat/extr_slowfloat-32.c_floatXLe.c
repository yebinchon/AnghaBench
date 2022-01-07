
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sign; scalar_t__ exp; int sig; scalar_t__ isZero; scalar_t__ isInf; scalar_t__ isNaN; } ;
typedef TYPE_1__ floatX ;
typedef scalar_t__ flag ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ le64 (int ,int ) ;

__attribute__((used)) static flag floatXLe( floatX ax, floatX bx )
{

    if ( ax.isNaN || bx.isNaN ) return FALSE;
    if ( ax.isZero && bx.isZero ) return TRUE;
    if ( ax.sign != bx.sign ) return ax.sign;
    if ( ax.sign ) {
        if ( ax.isInf || bx.isZero ) return TRUE;
        if ( bx.isInf || ax.isZero ) return FALSE;
        if ( bx.exp < ax.exp ) return TRUE;
        if ( ax.exp < bx.exp ) return FALSE;
        return le64( bx.sig, ax.sig );
    }
    else {
        if ( bx.isInf || ax.isZero ) return TRUE;
        if ( ax.isInf || bx.isZero ) return FALSE;
        if ( ax.exp < bx.exp ) return TRUE;
        if ( bx.exp < ax.exp ) return FALSE;
        return le64( ax.sig, bx.sig );
    }

}
