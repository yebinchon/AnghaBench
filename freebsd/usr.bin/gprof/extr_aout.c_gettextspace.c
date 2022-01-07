
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ a_text; } ;
typedef int FILE ;


 int N_TXTOFF (TYPE_1__) ;
 scalar_t__ fread (int *,int,scalar_t__,int *) ;
 int free (int *) ;
 int fseek (int *,int ,int ) ;
 scalar_t__ malloc (scalar_t__) ;
 int * textspace ;
 int warnx (char*,...) ;
 TYPE_1__ xbuf ;

__attribute__((used)) static void
gettextspace(FILE *nfile)
{

    textspace = (u_char *) malloc( xbuf.a_text );
    if ( textspace == ((void*)0) ) {
 warnx("no room for %u bytes of text space: can't do -c" ,
    xbuf.a_text );
 return;
    }
    (void) fseek( nfile , N_TXTOFF( xbuf ) , 0 );
    if ( fread( textspace , 1 , xbuf.a_text , nfile ) != xbuf.a_text ) {
 warnx("couldn't read text space: can't do -c");
 free( textspace );
 textspace = 0;
 return;
    }
}
