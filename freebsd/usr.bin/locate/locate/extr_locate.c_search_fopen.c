
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 long cputime () ;
 int err (int,char*,char*) ;
 scalar_t__ f_icase ;
 scalar_t__ f_statistic ;
 scalar_t__ f_stdin ;
 int fastfind (int *,char*,char*) ;
 int fastfind_icase (int *,char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fseek (int *,long,int ) ;
 int statistic (int *,char*) ;
 int * stdin ;
 int warnx (char*,...) ;

void
search_fopen(char *db, char **s)
{
 FILE *fp;





 if (f_stdin) {
  fp = stdin;
  if (*(s+1) != ((void*)0)) {
   warnx("read database from stdin, use only `%s' as pattern", *s);
   *(s+1) = ((void*)0);
  }
 }
 else if ((fp = fopen(db, "r")) == ((void*)0))
  err(1, "`%s'", db);


 if (f_statistic) {
  statistic(fp, db);
  (void)fclose(fp);
  return;
 }


 while(*s != ((void*)0)) {



  if (!f_stdin &&
      fseek(fp, (long)0, SEEK_SET) == -1)
   err(1, "fseek to begin of ``%s''\n", db);

  if (f_icase)
   fastfind_icase(fp, *s, db);
  else
   fastfind(fp, *s, db);



  s++;
 }
 (void)fclose(fp);
}
