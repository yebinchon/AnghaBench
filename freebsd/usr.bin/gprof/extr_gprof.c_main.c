
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nltype ;


 int ANYDEBUG ;
 char* A_OUTNAME ;
 void* Cflag ;
 void* Eflag ;
 int Elist ;
 void* FALSE ;
 void* Fflag ;
 int Flist ;
 int GMONSUM ;
 void* Kflag ;
 int Lflag ;
 void* TRUE ;
 char* a_outname ;
 int addlist (int ,char*) ;
 void* aflag ;
 int aout_getnfile (char*,char***) ;
 int asgnsamples () ;
 int atoi (char*) ;
 void* bflag ;
 int cyclethreshold ;
 int debug ;
 void* dflag ;
 int ** doarcs () ;
 int dumpsum (int ) ;
 void* eflag ;
 int elf_getnfile (char*,char***) ;
 int elist ;
 int errx (int,char*,char*) ;
 int exit (int ) ;
 void* fflag ;
 int flist ;
 int fprintf (int ,char*) ;
 int getpfile (char*) ;
 char* gmonname ;
 int hz ;
 int kernel_getnfile (char*,char***) ;
 void* kflag ;
 int kfromlist ;
 int ktolist ;
 int lflag ;
 scalar_t__ malloc (scalar_t__) ;
 int nl ;
 int nname ;
 int printf (char*,...) ;
 int printgprof (int **) ;
 int printindex () ;
 int printprof () ;
 int qsort (int ,int ,int,int ) ;
 int setlinebuf (int ) ;
 void* sflag ;
 int stderr ;
 int stdout ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 void* uflag ;
 int valcmp ;
 void* zflag ;

int
main(int argc, char **argv)
{
    char **sp;
    nltype **timesortnlp;
    char **defaultEs;

    --argc;
    argv++;
    debug = 0;
    bflag = TRUE;
    while ( *argv != 0 && **argv == '-' ) {
 (*argv)++;
 switch ( **argv ) {
 case 'a':
     aflag = TRUE;
     break;
 case 'b':
     bflag = FALSE;
     break;
 case 'C':
     Cflag = TRUE;
     cyclethreshold = atoi( *++argv );
     break;
 case 'd':
     dflag = TRUE;
     setlinebuf(stdout);
     debug |= atoi( *++argv );
     debug |= ANYDEBUG;



  printf("gprof: -d ignored\n");

     break;
 case 'E':
     ++argv;
     addlist( Elist , *argv );
     Eflag = TRUE;
     addlist( elist , *argv );
     eflag = TRUE;
     break;
 case 'e':
     addlist( elist , *++argv );
     eflag = TRUE;
     break;
 case 'F':
     ++argv;
     addlist( Flist , *argv );
     Fflag = TRUE;
     addlist( flist , *argv );
     fflag = TRUE;
     break;
 case 'f':
     addlist( flist , *++argv );
     fflag = TRUE;
     break;
 case 'k':
     addlist( kfromlist , *++argv );
     addlist( ktolist , *++argv );
     kflag = TRUE;
     break;
 case 'K':
     Kflag = TRUE;
     break;
 case 'l':
     lflag = 1;
     Lflag = 0;
     break;
 case 'L':
     Lflag = 1;
     lflag = 0;
     break;
 case 's':
     sflag = TRUE;
     break;
 case 'u':
     uflag = TRUE;
     break;
 case 'z':
     zflag = TRUE;
     break;
 }
 argv++;
    }
    if ( *argv != 0 ) {
 a_outname = *argv;
 argv++;
    } else {
 a_outname = A_OUTNAME;
    }
    if ( *argv != 0 ) {
 gmonname = *argv;
 argv++;
    } else {
 gmonname = (char *) malloc(strlen(a_outname)+6);
 strcpy(gmonname, a_outname);
 strcat(gmonname, ".gmon");
    }



    if ((Kflag && kernel_getnfile(a_outname, &defaultEs) == -1) ||
      (!Kflag && elf_getnfile(a_outname, &defaultEs) == -1



      ))
 errx(1, "%s: bad format", a_outname);



    qsort(nl, nname, sizeof(nltype), valcmp);



    for ( sp = defaultEs ; *sp ; sp++ ) {
 Eflag = TRUE;
 addlist( Elist , *sp );
 eflag = TRUE;
 addlist( elist , *sp );
    }



    do {
 getpfile( gmonname );
 if ( *argv != 0 ) {
     gmonname = *argv;
 }
    } while ( *argv++ != 0 );




    if (hz == 0) {
 hz = 1;
 fprintf(stderr, "time is in ticks, not seconds\n");
    }



    if ( sflag ) {
 dumpsum( GMONSUM );
    }



    asgnsamples();



    timesortnlp = doarcs();



    if(!lflag) {
     printgprof( timesortnlp );
    }



    if(!Lflag) {
     printprof();
    }



    printindex();
    exit(0);
}
