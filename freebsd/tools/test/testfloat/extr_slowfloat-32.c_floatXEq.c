
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sign; scalar_t__ exp; int sig; scalar_t__ isInf; scalar_t__ isZero; scalar_t__ isNaN; } ;
typedef TYPE_1__ floatX ;
typedef int flag ;


 int FALSE ;
 int TRUE ;
 scalar_t__ eq64 (int ,int ) ;

__attribute__((used)) static flag floatXEq( floatX ax, floatX bx )
{

    if ( ax.isNaN || bx.isNaN ) return FALSE;
    if ( ax.isZero && bx.isZero ) return TRUE;
    if ( ax.sign != bx.sign ) return FALSE;
    if ( ax.isInf || bx.isInf ) return ax.isInf && bx.isInf;
    return ( ax.exp == bx.exp ) && eq64( ax.sig, bx.sig );

}
