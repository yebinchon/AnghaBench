
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rawarc {int raw_count; int raw_selfpc; int raw_frompc; } ;
typedef int FILE ;


 int SAMPLEDEBUG ;
 int debug ;
 int fclose (int *) ;
 int fread (struct rawarc*,int,int,int *) ;
 int * openpfile (char*) ;
 int printf (char*,int ,int ,int ) ;
 int readsamples (int *) ;
 int tally (struct rawarc*) ;

void
getpfile(char *filename)
{
    FILE *pfile;
    struct rawarc arc;

    pfile = openpfile(filename);
    readsamples(pfile);




    while ( fread( &arc , sizeof arc , 1 , pfile ) == 1 ) {
 tally( &arc );
    }
    fclose(pfile);
}
