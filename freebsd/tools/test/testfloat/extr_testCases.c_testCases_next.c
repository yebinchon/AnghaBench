
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int done; } ;


 void* FALSE ;
 void* current_a_float128 ;
 void* current_a_float32 ;
 void* current_a_float64 ;
 void* current_a_floatx80 ;
 void* current_b_float128 ;
 void* current_b_float32 ;
 void* current_b_float64 ;
 void* current_b_floatx80 ;
 void* float128NextQInP1 (TYPE_1__*) ;
 void* float128NextQInP2 (TYPE_1__*) ;
 void* float128NextQOutP1 (TYPE_1__*) ;
 void* float128NextQOutP2 (TYPE_1__*) ;
 void* float128Random () ;
 void* float32NextQInP1 (TYPE_1__*) ;
 void* float32NextQInP2 (TYPE_1__*) ;
 void* float32NextQOutP1 (TYPE_1__*) ;
 void* float32NextQOutP2 (TYPE_1__*) ;
 void* float32Random () ;
 void* float64NextQInP1 (TYPE_1__*) ;
 void* float64NextQInP2 (TYPE_1__*) ;
 void* float64NextQOutP1 (TYPE_1__*) ;
 void* float64NextQOutP2 (TYPE_1__*) ;
 void* float64Random () ;
 void* floatx80NextQInP1 (TYPE_1__*) ;
 void* floatx80NextQInP2 (TYPE_1__*) ;
 void* floatx80NextQOutP1 (TYPE_1__*) ;
 void* floatx80NextQOutP2 (TYPE_1__*) ;
 void* floatx80Random () ;
 int int32NextP1 (TYPE_1__*) ;
 int int32NextP2 (TYPE_1__*) ;
 int int32RandomP3 () ;
 int int32RandomPInf () ;
 int int64NextP1 (TYPE_1__*) ;
 int int64NextP2 (TYPE_1__*) ;
 int int64RandomP3 () ;
 int int64RandomPInf () ;
 int level ;
 TYPE_1__ sequenceA ;
 TYPE_1__ sequenceB ;
 int sequenceType ;
 int subcase ;
 void* testCases_a_float128 ;
 void* testCases_a_float32 ;
 void* testCases_a_float64 ;
 void* testCases_a_floatx80 ;
 int testCases_a_int32 ;
 int testCases_a_int64 ;
 void* testCases_b_float128 ;
 void* testCases_b_float32 ;
 void* testCases_b_float64 ;
 void* testCases_b_floatx80 ;
 int testCases_done ;
void testCases_next( void )
{

    switch ( level ) {
     case 1:
        switch ( sequenceType ) {
         case 133:
            switch ( subcase ) {
             case 0:
                testCases_a_int32 = int32RandomP3();
                break;
             case 1:
                testCases_a_int32 = int32RandomPInf();
                break;
             case 2:
                testCases_a_int32 = int32NextP1( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case 136:
            switch ( subcase ) {
             case 0:
             case 1:
                testCases_a_float32 = float32Random();
                break;
             case 2:
                testCases_a_float32 = float32NextQOutP1( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case 130:
            switch ( subcase ) {
             case 0:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_float32 = float32NextQInP1( &sequenceA );
                }
                current_b_float32 = float32NextQInP1( &sequenceB );
             case 2:
             case 4:
                testCases_a_float32 = float32Random();
                testCases_b_float32 = float32Random();
                break;
             case 1:
                testCases_a_float32 = current_a_float32;
                testCases_b_float32 = float32Random();
                break;
             case 3:
                testCases_a_float32 = float32Random();
                testCases_b_float32 = current_b_float32;
                break;
             case 5:
                testCases_a_float32 = current_a_float32;
                testCases_b_float32 = current_b_float32;
                testCases_done = sequenceA.done & sequenceB.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case 135:
            switch ( subcase ) {
             case 0:
             case 1:
                testCases_a_float64 = float64Random();
                break;
             case 2:
                testCases_a_float64 = float64NextQOutP1( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case 129:
            switch ( subcase ) {
             case 0:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_float64 = float64NextQInP1( &sequenceA );
                }
                current_b_float64 = float64NextQInP1( &sequenceB );
             case 2:
             case 4:
                testCases_a_float64 = float64Random();
                testCases_b_float64 = float64Random();
                break;
             case 1:
                testCases_a_float64 = current_a_float64;
                testCases_b_float64 = float64Random();
                break;
             case 3:
                testCases_a_float64 = float64Random();
                testCases_b_float64 = current_b_float64;
                break;
             case 5:
                testCases_a_float64 = current_a_float64;
                testCases_b_float64 = current_b_float64;
                testCases_done = sequenceA.done & sequenceB.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
        }
        break;
     case 2:
        switch ( sequenceType ) {
         case 133:
            switch ( subcase ) {
             case 0:
                testCases_a_int32 = int32RandomP3();
                break;
             case 2:
                testCases_a_int32 = int32RandomPInf();
                break;
             case 3:
                subcase = -1;
             case 1:
                testCases_a_int32 = int32NextP2( &sequenceA );
                testCases_done = sequenceA.done;
                break;
            }
            ++subcase;
            break;
         case 136:
            switch ( subcase ) {
             case 0:
                testCases_a_float32 = float32Random();
                break;
             case 1:
                testCases_a_float32 = float32NextQOutP2( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case 130:
            switch ( subcase ) {
             case 0:
                testCases_a_float32 = float32Random();
                testCases_b_float32 = float32Random();
                break;
             case 1:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_float32 = float32NextQInP2( &sequenceA );
                }
                testCases_a_float32 = current_a_float32;
                testCases_b_float32 = float32NextQInP2( &sequenceB );
                testCases_done = sequenceA.done & sequenceB.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case 135:
            switch ( subcase ) {
             case 0:
                testCases_a_float64 = float64Random();
                break;
             case 1:
                testCases_a_float64 = float64NextQOutP2( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case 129:
            switch ( subcase ) {
             case 0:
                testCases_a_float64 = float64Random();
                testCases_b_float64 = float64Random();
                break;
             case 1:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_float64 = float64NextQInP2( &sequenceA );
                }
                testCases_a_float64 = current_a_float64;
                testCases_b_float64 = float64NextQInP2( &sequenceB );
                testCases_done = sequenceA.done & sequenceB.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
        }
        break;
    }

}
