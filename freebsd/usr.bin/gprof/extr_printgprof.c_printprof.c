
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nltype ;


 double actime ;
 scalar_t__ calloc (int,int) ;
 int errx (int,char*) ;
 int flatprofheader () ;
 int flatprofline (int *) ;
 int free (int **) ;
 int * nl ;
 int nname ;
 int printf (char*) ;
 int qsort (int **,int,int,int ) ;
 int timecmp ;

void
printprof(void)
{
    register nltype *np;
    nltype **sortednlp;
    int idx;

    actime = 0.0;
    printf( "\f\n" );
    flatprofheader();



    sortednlp = (nltype **) calloc( nname , sizeof(nltype *) );
    if ( sortednlp == (nltype **) 0 )
 errx( 1 , "[printprof] ran out of memory for time sorting" );
    for ( idx = 0 ; idx < nname ; idx += 1 ) {
 sortednlp[ idx ] = &nl[ idx ];
    }
    qsort( sortednlp , nname , sizeof(nltype *) , timecmp );
    for ( idx = 0 ; idx < nname ; idx += 1 ) {
 np = sortednlp[ idx ];
 flatprofline( np );
    }
    actime = 0.0;
    free( sortednlp );
}
