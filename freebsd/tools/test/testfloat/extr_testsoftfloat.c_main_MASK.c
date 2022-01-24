#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8 ;
typedef  int int8 ;
typedef  void* flag ;
struct TYPE_2__ {char* name; int numInputs; } ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 void* FALSE ; 
 size_t NUM_FUNCTIONS ; 
 int ROUND_DOWN ; 
 int ROUND_NEAREST_EVEN ; 
 int ROUND_TO_ZERO ; 
 int ROUND_UP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int TININESS_AFTER_ROUNDING ; 
 int TININESS_BEFORE_ROUNDING ; 
 void* TRUE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  catchSIGINT ; 
 int /*<<< orphan*/  clearFlags ; 
 void* errorStop ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* fail_programName ; 
 void* forever ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* functions ; 
 int maxErrorCount ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slow_float_exception_flags ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  testFlagsFunctionPtr ; 
 int /*<<< orphan*/  FUNC7 (size_t,int,int,int) ; 
 char* testName ; 
 int /*<<< orphan*/ * trueFlagsPtr ; 
 char* trueName ; 

int
FUNC8( int argc, char **argv )
{
    char *argPtr;
    flag functionArgument;
    uint8 functionCode;
    int8 operands, roundingPrecision, roundingMode, tininessMode;

    fail_programName = "testsoftfloat";
    if ( argc <= 1 ) goto writeHelpMessage;
    FUNC6( 1 );
    trueName = "true";
    testName = "soft";
    errorStop = FALSE;
    forever = FALSE;
    maxErrorCount = 20;
    trueFlagsPtr = &slow_float_exception_flags;
    testFlagsFunctionPtr = clearFlags;
    functionArgument = FALSE;
    functionCode = 0;
    operands = 0;
    roundingPrecision = 0;
    roundingMode = 0;
    tininessMode = 0;
    --argc;
    ++argv;
    while ( argc && ( argPtr = argv[ 0 ] ) ) {
        if ( argPtr[ 0 ] == '-' ) ++argPtr;
        if ( FUNC5( argPtr, "help" ) == 0 ) {
 writeHelpMessage:
            FUNC3(
"testsoftfloat [<option>...] <function>\n"
"  <option>:  (* is default)\n"
"    -help            --Write this message and exit.\n"
"    -level <num>     --Testing level <num> (1 or 2).\n"
" *  -level 1\n"
"    -errors <num>    --Stop each function test after <num> errors.\n"
" *  -errors 20\n"
"    -errorstop       --Exit after first function with any error.\n"
"    -forever         --Test one function repeatedly (implies `-level 2').\n"
#ifdef FLOATX80
"    -precision32     --Only test rounding precision equivalent to float32.\n"
"    -precision64     --Only test rounding precision equivalent to float64.\n"
"    -precision80     --Only test maximum rounding precision.\n"
#endif
"    -nearesteven     --Only test rounding to nearest/even.\n"
"    -tozero          --Only test rounding to zero.\n"
"    -down            --Only test rounding down.\n"
"    -up              --Only test rounding up.\n"
"    -tininessbefore  --Only test underflow tininess before rounding.\n"
"    -tininessafter   --Only test underflow tininess after rounding.\n"
"  <function>:\n"
"    int32_to_<float>                 <float>_add   <float>_eq\n"
"    <float>_to_int32                 <float>_sub   <float>_le\n"
"    <float>_to_int32_round_to_zero   <float>_mul   <float>_lt\n"
#ifdef BITS64
"    int64_to_<float>                 <float>_div   <float>_eq_signaling\n"
"    <float>_to_int64                 <float>_rem   <float>_le_quiet\n"
"    <float>_to_int64_round_to_zero                 <float>_lt_quiet\n"
"    <float>_to_<float>\n"
"    <float>_round_to_int\n"
"    <float>_sqrt\n"
#else
"    <float>_to_<float>               <float>_div   <float>_eq_signaling\n"
"    <float>_round_to_int             <float>_rem   <float>_le_quiet\n"
"    <float>_sqrt                                   <float>_lt_quiet\n"
#endif
"    -all1            --All 1-operand functions.\n"
"    -all2            --All 2-operand functions.\n"
"    -all             --All functions.\n"
"  <float>:\n"
"    float32          --Single precision.\n"
"    float64          --Double precision.\n"
#ifdef FLOATX80
"    floatx80         --Extended double precision.\n"
#endif
#ifdef FLOAT128
"    float128         --Quadruple precision.\n"
#endif
                ,
                stdout
            );
            return EXIT_SUCCESS;
        }
        else if ( FUNC5( argPtr, "level" ) == 0 ) {
            if ( argc < 2 ) goto optionError;
            FUNC6( FUNC0( argv[ 1 ] ) );
            --argc;
            ++argv;
        }
        else if ( FUNC5( argPtr, "level1" ) == 0 ) {
            FUNC6( 1 );
        }
        else if ( FUNC5( argPtr, "level2" ) == 0 ) {
            FUNC6( 2 );
        }
        else if ( FUNC5( argPtr, "errors" ) == 0 ) {
            if ( argc < 2 ) {
     optionError:
                FUNC2( "`%s' option requires numeric argument", argv[ 0 ] );
            }
            maxErrorCount = FUNC0( argv[ 1 ] );
            --argc;
            ++argv;
        }
        else if ( FUNC5( argPtr, "errorstop" ) == 0 ) {
            errorStop = TRUE;
        }
        else if ( FUNC5( argPtr, "forever" ) == 0 ) {
            FUNC6( 2 );
            forever = TRUE;
        }
#ifdef FLOATX80
        else if ( strcmp( argPtr, "precision32" ) == 0 ) {
            roundingPrecision = 32;
        }
        else if ( strcmp( argPtr, "precision64" ) == 0 ) {
            roundingPrecision = 64;
        }
        else if ( strcmp( argPtr, "precision80" ) == 0 ) {
            roundingPrecision = 80;
        }
#endif
        else if (    ( FUNC5( argPtr, "nearesteven" ) == 0 )
                  || ( FUNC5( argPtr, "nearest_even" ) == 0 ) ) {
            roundingMode = ROUND_NEAREST_EVEN;
        }
        else if (    ( FUNC5( argPtr, "tozero" ) == 0 )
                  || ( FUNC5( argPtr, "to_zero" ) == 0 ) ) {
            roundingMode = ROUND_TO_ZERO;
        }
        else if ( FUNC5( argPtr, "down" ) == 0 ) {
            roundingMode = ROUND_DOWN;
        }
        else if ( FUNC5( argPtr, "up" ) == 0 ) {
            roundingMode = ROUND_UP;
        }
        else if ( FUNC5( argPtr, "tininessbefore" ) == 0 ) {
            tininessMode = TININESS_BEFORE_ROUNDING;
        }
        else if ( FUNC5( argPtr, "tininessafter" ) == 0 ) {
            tininessMode = TININESS_AFTER_ROUNDING;
        }
        else if ( FUNC5( argPtr, "all1" ) == 0 ) {
            functionArgument = TRUE;
            functionCode = 0;
            operands = 1;
        }
        else if ( FUNC5( argPtr, "all2" ) == 0 ) {
            functionArgument = TRUE;
            functionCode = 0;
            operands = 2;
        }
        else if ( FUNC5( argPtr, "all" ) == 0 ) {
            functionArgument = TRUE;
            functionCode = 0;
            operands = 0;
        }
        else {
            for ( functionCode = 1;
                  functionCode < NUM_FUNCTIONS;
                  ++functionCode
                ) {
                if ( FUNC5( argPtr, functions[ functionCode ].name ) == 0 ) {
                    break;
                }
            }
            if ( functionCode == NUM_FUNCTIONS ) {
                FUNC2( "Invalid option or function `%s'", argv[ 0 ] );
            }
            functionArgument = TRUE;
        }
        --argc;
        ++argv;
    }
    if ( ! functionArgument ) FUNC2( "Function argument required" );
    (void) FUNC4( SIGINT, catchSIGINT );
    (void) FUNC4( SIGTERM, catchSIGINT );
    if ( functionCode ) {
        if ( forever ) {
            if ( ! roundingPrecision ) roundingPrecision = 80;
            if ( ! roundingMode ) roundingMode = ROUND_NEAREST_EVEN;
        }
        FUNC7(
            functionCode, roundingPrecision, roundingMode, tininessMode );
    }
    else {
        if ( operands == 1 ) {
            for ( functionCode = 1;
                  functionCode < NUM_FUNCTIONS;
                  ++functionCode
                ) {
                if ( functions[ functionCode ].numInputs == 1 ) {
                    FUNC7(
                        functionCode,
                        roundingPrecision,
                        roundingMode,
                        tininessMode
                    );
                }
            }
        }
        else if ( operands == 2 ) {
            for ( functionCode = 1;
                  functionCode < NUM_FUNCTIONS;
                  ++functionCode
                ) {
                if ( functions[ functionCode ].numInputs == 2 ) {
                    FUNC7(
                        functionCode,
                        roundingPrecision,
                        roundingMode,
                        tininessMode
                    );
                }
            }
        }
        else {
            for ( functionCode = 1;
                  functionCode < NUM_FUNCTIONS;
                  ++functionCode
                ) {
                FUNC7(
                    functionCode, roundingPrecision, roundingMode, tininessMode
                );
            }
        }
    }
    FUNC1();

}