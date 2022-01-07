
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_3__ {size_t term1Num; int done; } ;
typedef TYPE_1__ sequenceT ;
typedef int sbits32 ;
typedef int int32 ;


 int TRUE ;
 size_t int32NumP1 ;
 int * int32P1 ;

__attribute__((used)) static int32 int32NextP1( sequenceT *sequencePtr )
{
    uint8 termNum;
    int32 z;

    termNum = sequencePtr->term1Num;
    z = int32P1[ termNum ];
    ++termNum;
    if ( int32NumP1 <= termNum ) {
        termNum = 0;
        sequencePtr->done = TRUE;
    }
    sequencePtr->term1Num = termNum;
    return (sbits32) z;

}
