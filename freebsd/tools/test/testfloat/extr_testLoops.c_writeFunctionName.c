
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputs (char*,int *) ;
 char* functionName ;
 char* roundingModeName ;
 char* roundingPrecisionName ;
 char* tininessModeName ;

void writeFunctionName( FILE *stream )
{

    fputs( functionName, stream );
    if ( roundingModeName ) {
        if ( roundingPrecisionName ) {
            fputs( ", precision ", stream );
            fputs( roundingPrecisionName, stream );
        }
        fputs( ", rounding ", stream );
        fputs( roundingModeName, stream );
        if ( tininessModeName ) {
            fputs( ", tininess ", stream );
            fputs( tininessModeName, stream );
            fputs( " rounding", stream );
        }
    }

}
