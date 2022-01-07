
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bcnt; struct TYPE_5__* nextfs; } ;
typedef TYPE_1__ FS ;


 int LC_ALL ;
 scalar_t__ blocksize ;
 int caph_cache_catpages () ;
 scalar_t__ caph_limit_stdio () ;
 int display () ;
 int err (int,char*) ;
 int exit (int ) ;
 int exitval ;
 TYPE_1__* fshead ;
 int newsyntax (int,char***) ;
 int next (char**) ;
 int oldsyntax (int,char***) ;
 int rewrite (TYPE_1__*) ;
 int setlocale (int ,char*) ;
 scalar_t__ size (TYPE_1__*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;

int
main(int argc, char *argv[])
{
 FS *tfs;
 char *p;

 (void)setlocale(LC_ALL, "");

 if (!(p = strrchr(argv[0], 'o')) || strcmp(p, "od"))
  newsyntax(argc, &argv);
 else
  oldsyntax(argc, &argv);


 for (blocksize = 0, tfs = fshead; tfs; tfs = tfs->nextfs) {
  tfs->bcnt = size(tfs);
  if (blocksize < tfs->bcnt)
   blocksize = tfs->bcnt;
 }

 for (tfs = fshead; tfs; tfs = tfs->nextfs)
  rewrite(tfs);





 caph_cache_catpages();
 if (caph_limit_stdio() < 0)
  err(1, "capsicum");

 (void)next(argv);
 display();
 exit(exitval);
}
