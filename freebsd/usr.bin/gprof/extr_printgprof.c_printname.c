
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; scalar_t__ toporder; scalar_t__ propfraction; scalar_t__ cycleno; scalar_t__ index; scalar_t__ printflag; } ;
typedef TYPE_1__ nltype ;


 int DFNDEBUG ;
 int PROPDEBUG ;
 int debug ;
 int printf (char*,scalar_t__) ;

void
printname(nltype *selfp)
{

    if ( selfp -> name != 0 ) {
 printf( "%s" , selfp -> name );
    }
    if ( selfp -> cycleno != 0 ) {
 printf( " <cycle %d>" , selfp -> cycleno );
    }
    if ( selfp -> index != 0 ) {
 if ( selfp -> printflag ) {
     printf( " [%d]" , selfp -> index );
 } else {
     printf( " (%d)" , selfp -> index );
 }
    }
}
