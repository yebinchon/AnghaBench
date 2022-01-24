#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int done; } ;

/* Variables and functions */
 void* FALSE ; 
 void* current_a_float128 ; 
 void* current_a_float32 ; 
 void* current_a_float64 ; 
 void* current_a_floatx80 ; 
 void* current_b_float128 ; 
 void* current_b_float32 ; 
 void* current_b_float64 ; 
 void* current_b_floatx80 ; 
 void* FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (TYPE_1__*) ; 
 void* FUNC4 () ; 
 void* FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (TYPE_1__*) ; 
 void* FUNC7 (TYPE_1__*) ; 
 void* FUNC8 (TYPE_1__*) ; 
 void* FUNC9 () ; 
 void* FUNC10 (TYPE_1__*) ; 
 void* FUNC11 (TYPE_1__*) ; 
 void* FUNC12 (TYPE_1__*) ; 
 void* FUNC13 (TYPE_1__*) ; 
 void* FUNC14 () ; 
 void* FUNC15 (TYPE_1__*) ; 
 void* FUNC16 (TYPE_1__*) ; 
 void* FUNC17 (TYPE_1__*) ; 
 void* FUNC18 (TYPE_1__*) ; 
 void* FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int level ; 
 TYPE_1__ sequenceA ; 
 TYPE_1__ sequenceB ; 
 int /*<<< orphan*/  sequenceType ; 
 int subcase ; 
 void* testCases_a_float128 ; 
 void* testCases_a_float32 ; 
 void* testCases_a_float64 ; 
 void* testCases_a_floatx80 ; 
 int /*<<< orphan*/  testCases_a_int32 ; 
 int /*<<< orphan*/  testCases_a_int64 ; 
 void* testCases_b_float128 ; 
 void* testCases_b_float32 ; 
 void* testCases_b_float64 ; 
 void* testCases_b_floatx80 ; 
 int testCases_done ; 
#define  testCases_sequence_a_float128 137 
#define  testCases_sequence_a_float32 136 
#define  testCases_sequence_a_float64 135 
#define  testCases_sequence_a_floatx80 134 
#define  testCases_sequence_a_int32 133 
#define  testCases_sequence_a_int64 132 
#define  testCases_sequence_ab_float128 131 
#define  testCases_sequence_ab_float32 130 
#define  testCases_sequence_ab_float64 129 
#define  testCases_sequence_ab_floatx80 128 

void FUNC28( void )
{

    switch ( level ) {
     case 1:
        switch ( sequenceType ) {
         case testCases_sequence_a_int32:
            switch ( subcase ) {
             case 0:
                testCases_a_int32 = FUNC22();
                break;
             case 1:
                testCases_a_int32 = FUNC23();
                break;
             case 2:
                testCases_a_int32 = FUNC20( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
#ifdef BITS64
         case testCases_sequence_a_int64:
            switch ( subcase ) {
             case 0:
                testCases_a_int64 = int64RandomP3();
                break;
             case 1:
                testCases_a_int64 = int64RandomPInf();
                break;
             case 2:
                testCases_a_int64 = int64NextP1( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
#endif
         case testCases_sequence_a_float32:
            switch ( subcase ) {
             case 0:
             case 1:
                testCases_a_float32 = FUNC9();
                break;
             case 2:
                testCases_a_float32 = FUNC7( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case testCases_sequence_ab_float32:
            switch ( subcase ) {
             case 0:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_float32 = FUNC5( &sequenceA );
                }
                current_b_float32 = FUNC5( &sequenceB );
             case 2:
             case 4:
                testCases_a_float32 = FUNC9();
                testCases_b_float32 = FUNC9();
                break;
             case 1:
                testCases_a_float32 = current_a_float32;
                testCases_b_float32 = FUNC9();
                break;
             case 3:
                testCases_a_float32 = FUNC9();
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
         case testCases_sequence_a_float64:
            switch ( subcase ) {
             case 0:
             case 1:
                testCases_a_float64 = FUNC14();
                break;
             case 2:
                testCases_a_float64 = FUNC12( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case testCases_sequence_ab_float64:
            switch ( subcase ) {
             case 0:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_float64 = FUNC10( &sequenceA );
                }
                current_b_float64 = FUNC10( &sequenceB );
             case 2:
             case 4:
                testCases_a_float64 = FUNC14();
                testCases_b_float64 = FUNC14();
                break;
             case 1:
                testCases_a_float64 = current_a_float64;
                testCases_b_float64 = FUNC14();
                break;
             case 3:
                testCases_a_float64 = FUNC14();
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
#ifdef FLOATX80
         case testCases_sequence_a_floatx80:
            switch ( subcase ) {
             case 0:
             case 1:
                testCases_a_floatx80 = floatx80Random();
                break;
             case 2:
                testCases_a_floatx80 = floatx80NextQOutP1( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case testCases_sequence_ab_floatx80:
            switch ( subcase ) {
             case 0:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_floatx80 = floatx80NextQInP1( &sequenceA );
                }
                current_b_floatx80 = floatx80NextQInP1( &sequenceB );
             case 2:
             case 4:
                testCases_a_floatx80 = floatx80Random();
                testCases_b_floatx80 = floatx80Random();
                break;
             case 1:
                testCases_a_floatx80 = current_a_floatx80;
                testCases_b_floatx80 = floatx80Random();
                break;
             case 3:
                testCases_a_floatx80 = floatx80Random();
                testCases_b_floatx80 = current_b_floatx80;
                break;
             case 5:
                testCases_a_floatx80 = current_a_floatx80;
                testCases_b_floatx80 = current_b_floatx80;
                testCases_done = sequenceA.done & sequenceB.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
#endif
#ifdef FLOAT128
         case testCases_sequence_a_float128:
            switch ( subcase ) {
             case 0:
             case 1:
                testCases_a_float128 = float128Random();
                break;
             case 2:
                testCases_a_float128 = float128NextQOutP1( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case testCases_sequence_ab_float128:
            switch ( subcase ) {
             case 0:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_float128 = float128NextQInP1( &sequenceA );
                }
                current_b_float128 = float128NextQInP1( &sequenceB );
             case 2:
             case 4:
                testCases_a_float128 = float128Random();
                testCases_b_float128 = float128Random();
                break;
             case 1:
                testCases_a_float128 = current_a_float128;
                testCases_b_float128 = float128Random();
                break;
             case 3:
                testCases_a_float128 = float128Random();
                testCases_b_float128 = current_b_float128;
                break;
             case 5:
                testCases_a_float128 = current_a_float128;
                testCases_b_float128 = current_b_float128;
                testCases_done = sequenceA.done & sequenceB.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
#endif
        }
        break;
     case 2:
        switch ( sequenceType ) {
         case testCases_sequence_a_int32:
            switch ( subcase ) {
             case 0:
                testCases_a_int32 = FUNC22();
                break;
             case 2:
                testCases_a_int32 = FUNC23();
                break;
             case 3:
                subcase = -1;
             case 1:
                testCases_a_int32 = FUNC21( &sequenceA );
                testCases_done = sequenceA.done;
                break;
            }
            ++subcase;
            break;
#ifdef BITS64
         case testCases_sequence_a_int64:
            switch ( subcase ) {
             case 0:
                testCases_a_int64 = int64RandomP3();
                break;
             case 2:
                testCases_a_int64 = int64RandomPInf();
                break;
             case 3:
                subcase = -1;
             case 1:
                testCases_a_int64 = int64NextP2( &sequenceA );
                testCases_done = sequenceA.done;
                break;
            }
            ++subcase;
            break;
#endif
         case testCases_sequence_a_float32:
            switch ( subcase ) {
             case 0:
                testCases_a_float32 = FUNC9();
                break;
             case 1:
                testCases_a_float32 = FUNC8( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case testCases_sequence_ab_float32:
            switch ( subcase ) {
             case 0:
                testCases_a_float32 = FUNC9();
                testCases_b_float32 = FUNC9();
                break;
             case 1:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_float32 = FUNC6( &sequenceA );
                }
                testCases_a_float32 = current_a_float32;
                testCases_b_float32 = FUNC6( &sequenceB );
                testCases_done = sequenceA.done & sequenceB.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case testCases_sequence_a_float64:
            switch ( subcase ) {
             case 0:
                testCases_a_float64 = FUNC14();
                break;
             case 1:
                testCases_a_float64 = FUNC13( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case testCases_sequence_ab_float64:
            switch ( subcase ) {
             case 0:
                testCases_a_float64 = FUNC14();
                testCases_b_float64 = FUNC14();
                break;
             case 1:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_float64 = FUNC11( &sequenceA );
                }
                testCases_a_float64 = current_a_float64;
                testCases_b_float64 = FUNC11( &sequenceB );
                testCases_done = sequenceA.done & sequenceB.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
#ifdef FLOATX80
         case testCases_sequence_a_floatx80:
            switch ( subcase ) {
             case 0:
                testCases_a_floatx80 = floatx80Random();
                break;
             case 1:
                testCases_a_floatx80 = floatx80NextQOutP2( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case testCases_sequence_ab_floatx80:
            switch ( subcase ) {
             case 0:
                testCases_a_floatx80 = floatx80Random();
                testCases_b_floatx80 = floatx80Random();
                break;
             case 1:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_floatx80 = floatx80NextQInP2( &sequenceA );
                }
                testCases_a_floatx80 = current_a_floatx80;
                testCases_b_floatx80 = floatx80NextQInP2( &sequenceB );
                testCases_done = sequenceA.done & sequenceB.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
#endif
#ifdef FLOAT128
         case testCases_sequence_a_float128:
            switch ( subcase ) {
             case 0:
                testCases_a_float128 = float128Random();
                break;
             case 1:
                testCases_a_float128 = float128NextQOutP2( &sequenceA );
                testCases_done = sequenceA.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
         case testCases_sequence_ab_float128:
            switch ( subcase ) {
             case 0:
                testCases_a_float128 = float128Random();
                testCases_b_float128 = float128Random();
                break;
             case 1:
                if ( sequenceB.done ) {
                    sequenceB.done = FALSE;
                    current_a_float128 = float128NextQInP2( &sequenceA );
                }
                testCases_a_float128 = current_a_float128;
                testCases_b_float128 = float128NextQInP2( &sequenceB );
                testCases_done = sequenceA.done & sequenceB.done;
                subcase = -1;
                break;
            }
            ++subcase;
            break;
#endif
        }
        break;
    }

}