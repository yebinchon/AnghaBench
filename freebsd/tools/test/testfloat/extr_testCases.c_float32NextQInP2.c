
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_3__ {size_t term1Num; size_t expNum; int done; } ;
typedef TYPE_1__ sequenceT ;
typedef int float32 ;


 int TRUE ;
 size_t float32NumP2 ;
 size_t float32NumQIn ;
 int* float32P2 ;
 int* float32QIn ;

__attribute__((used)) static float32 float32NextQInP2( sequenceT *sequencePtr )
{
    uint8 expNum, sigNum;
    float32 z;

    sigNum = sequencePtr->term1Num;
    expNum = sequencePtr->expNum;
    z = float32QIn[ expNum ] | float32P2[ sigNum ];
    ++sigNum;
    if ( float32NumP2 <= sigNum ) {
        sigNum = 0;
        ++expNum;
        if ( float32NumQIn <= expNum ) {
            expNum = 0;
            sequencePtr->done = TRUE;
        }
        sequencePtr->expNum = expNum;
    }
    sequencePtr->term1Num = sigNum;
    return z;

}
