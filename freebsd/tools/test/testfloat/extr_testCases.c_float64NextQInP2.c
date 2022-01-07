
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_4__ {size_t term1Num; size_t expNum; int done; } ;
typedef TYPE_1__ sequenceT ;
typedef int float64 ;
struct TYPE_5__ {int high; int low; } ;


 int SETFLOAT64 (int ,int,int ) ;
 int TRUE ;
 size_t float64NumP2 ;
 size_t float64NumQIn ;
 TYPE_2__* float64P2 ;
 int* float64QIn ;

__attribute__((used)) static float64 float64NextQInP2( sequenceT *sequencePtr )
{
    uint8 expNum, sigNum;
    float64 z;

    sigNum = sequencePtr->term1Num;
    expNum = sequencePtr->expNum;
    SETFLOAT64(
        z,
        float64QIn[ expNum ] | float64P2[ sigNum ].high,
        float64P2[ sigNum ].low
    );
    ++sigNum;
    if ( float64NumP2 <= sigNum ) {
        sigNum = 0;
        ++expNum;
        if ( float64NumQIn <= expNum ) {
            expNum = 0;
            sequencePtr->done = TRUE;
        }
        sequencePtr->expNum = expNum;
    }
    sequencePtr->term1Num = sigNum;
    return z;

}
