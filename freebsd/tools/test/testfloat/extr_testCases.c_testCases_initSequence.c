
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int8 ;
struct TYPE_12__ {void* done; scalar_t__ expNum; scalar_t__ term1Num; scalar_t__ term2Num; } ;
struct TYPE_11__ {void* done; scalar_t__ expNum; scalar_t__ term1Num; scalar_t__ term2Num; } ;


 void* FALSE ;
 int current_a_float128 ;
 int current_a_float32 ;
 int current_a_float64 ;
 int current_a_floatx80 ;
 int float128NextQInP1 (TYPE_2__*) ;
 int float128NextQInP2 (TYPE_2__*) ;
 int float128NumQInP1 ;
 int float128NumQInP2 ;
 int float128NumQOutP1 ;
 int float128NumQOutP2 ;
 int float32NextQInP1 (TYPE_2__*) ;
 int float32NextQInP2 (TYPE_2__*) ;
 int float32NumQInP1 ;
 int float32NumQInP2 ;
 int float32NumQOutP1 ;
 int float32NumQOutP2 ;
 int float64NextQInP1 (TYPE_2__*) ;
 int float64NextQInP2 (TYPE_2__*) ;
 int float64NumQInP1 ;
 int float64NumQInP2 ;
 int float64NumQOutP1 ;
 int float64NumQOutP2 ;
 int floatx80NextQInP1 (TYPE_2__*) ;
 int floatx80NextQInP2 (TYPE_2__*) ;
 int floatx80NumQInP1 ;
 int floatx80NumQInP2 ;
 int floatx80NumQOutP1 ;
 int floatx80NumQOutP2 ;
 int int32NumP1 ;
 int int32NumP2 ;
 int int64NumP1 ;
 int int64NumP2 ;
 int level ;
 TYPE_2__ sequenceA ;
 TYPE_1__ sequenceB ;
 int sequenceType ;
 scalar_t__ subcase ;
 void* testCases_done ;
 int testCases_total ;

void testCases_initSequence( int8 sequenceTypeIn )
{

    sequenceType = sequenceTypeIn;
    sequenceA.term2Num = 0;
    sequenceA.term1Num = 0;
    sequenceA.expNum = 0;
    sequenceA.done = FALSE;
    sequenceB.term2Num = 0;
    sequenceB.term1Num = 0;
    sequenceB.expNum = 0;
    sequenceB.done = FALSE;
    subcase = 0;
    switch ( level ) {
     case 1:
        switch ( sequenceTypeIn ) {
         case 133:
            testCases_total = 3 * int32NumP1;
            break;





         case 136:
            testCases_total = 3 * float32NumQOutP1;
            break;
         case 130:
            testCases_total = 6 * float32NumQInP1 * float32NumQInP1;
            current_a_float32 = float32NextQInP1( &sequenceA );
            break;
         case 135:
            testCases_total = 3 * float64NumQOutP1;
            break;
         case 129:
            testCases_total = 6 * float64NumQInP1 * float64NumQInP1;
            current_a_float64 = float64NextQInP1( &sequenceA );
            break;
        }
        break;
     case 2:
        switch ( sequenceTypeIn ) {
         case 133:
            testCases_total = 2 * int32NumP2;
            break;





         case 136:
            testCases_total = 2 * float32NumQOutP2;
            break;
         case 130:
            testCases_total = 2 * float32NumQInP2 * float32NumQInP2;
            current_a_float32 = float32NextQInP2( &sequenceA );
            break;
         case 135:
            testCases_total = 2 * float64NumQOutP2;
            break;
         case 129:
            testCases_total = 2 * float64NumQInP2 * float64NumQInP2;
            current_a_float64 = float64NextQInP2( &sequenceA );
            break;
        }
        break;
    }
    testCases_done = FALSE;

}
