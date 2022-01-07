
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rawarc {int raw_count; int raw_selfpc; int raw_frompc; } ;
struct TYPE_9__ {TYPE_4__* children; } ;
typedef TYPE_3__ nltype ;
struct TYPE_10__ {int arc_count; TYPE_2__* arc_childp; TYPE_1__* arc_parentp; struct TYPE_10__* arc_childlist; } ;
typedef TYPE_4__ arctype ;
struct TYPE_8__ {int value; } ;
struct TYPE_7__ {int value; } ;
typedef int FILE ;


 int SAMPLEDEBUG ;
 int debug ;
 int err (int,char*,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (struct rawarc*,int,int,int *) ;
 struct rawarc gmonhdr ;
 int histcounter_size ;
 TYPE_3__* nl ;
 TYPE_3__* npe ;
 int nsamples ;
 int printf (char*,int ,int ,int ) ;
 struct rawarc* samples ;

void
dumpsum(const char *sumfile)
{
    register nltype *nlp;
    register arctype *arcp;
    struct rawarc arc;
    FILE *sfile;

    if ( ( sfile = fopen ( sumfile , "w" ) ) == ((void*)0) )
 err( 1 , "%s" , sumfile );



    if ( fwrite( &gmonhdr , sizeof gmonhdr , 1 , sfile ) != 1 )
 err( 1 , "%s" , sumfile );



    if (fwrite(samples, histcounter_size, nsamples, sfile) != nsamples)
 err( 1 , "%s" , sumfile );



    for ( nlp = nl ; nlp < npe ; nlp++ ) {
 for ( arcp = nlp -> children ; arcp ; arcp = arcp -> arc_childlist ) {
     arc.raw_frompc = arcp -> arc_parentp -> value;
     arc.raw_selfpc = arcp -> arc_childp -> value;
     arc.raw_count = arcp -> arc_count;
     if ( fwrite ( &arc , sizeof arc , 1 , sfile ) != 1 )
  err( 1 , "%s" , sumfile );






 }
    }
    fclose( sfile );
}
