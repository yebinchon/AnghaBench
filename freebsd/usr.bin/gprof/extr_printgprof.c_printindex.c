
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ncall; scalar_t__ time; int index; char* name; int cycleno; scalar_t__ printflag; } ;
typedef TYPE_1__ nltype ;


 int BUFSIZ ;
 scalar_t__ calloc (int,int) ;
 TYPE_1__* cyclenl ;
 int errx (int,char*) ;
 int free (TYPE_1__**) ;
 int namecmp ;
 int ncycle ;
 TYPE_1__* nl ;
 int nname ;
 int printf (char*,...) ;
 int qsort (TYPE_1__**,int,int,int ) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ zflag ;

void
printindex(void)
{
    nltype **namesortnlp;
    register nltype *nlp;
    int idx, nnames, todo, i, j;
    char peterbuffer[ BUFSIZ ];





    namesortnlp = (nltype **) calloc( nname + ncycle , sizeof(nltype *) );
    if ( namesortnlp == (nltype **) 0 )
 errx( 1 , "ran out of memory for sorting");
    for ( idx = 0 , nnames = 0 ; idx < nname ; idx++ ) {
 if ( zflag == 0 && nl[idx].ncall == 0 && nl[idx].time == 0 )
  continue;
 namesortnlp[nnames++] = &nl[idx];
    }
    qsort( namesortnlp , nnames , sizeof(nltype *) , namecmp );
    for ( idx = 1 , todo = nnames ; idx <= ncycle ; idx++ ) {
 namesortnlp[todo++] = &cyclenl[idx];
    }
    printf( "\f\nIndex by function name\n\n" );
    idx = ( todo + 2 ) / 3;
    for ( i = 0; i < idx ; i++ ) {
 for ( j = i; j < todo ; j += idx ) {
     nlp = namesortnlp[ j ];
     if ( nlp -> printflag ) {
  sprintf( peterbuffer , "[%d]" , nlp -> index );
     } else {
  sprintf( peterbuffer , "(%d)" , nlp -> index );
     }
     if ( j < nnames ) {
  printf( "%6.6s %-19.19s" , peterbuffer , nlp -> name );
     } else {
  printf( "%6.6s " , peterbuffer );
  sprintf( peterbuffer , "<cycle %d>" , nlp -> cycleno );
  printf( "%-19.19s" , peterbuffer );
     }
 }
 printf( "\n" );
    }
    free( namesortnlp );
}
