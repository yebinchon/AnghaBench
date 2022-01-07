
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int Fclose (int *) ;
 int * Fopen (char*,char*) ;
 scalar_t__ fsize (int *) ;
 int getc (int *) ;
 char* getdeadletter () ;
 int putc (int,int *) ;
 int rewind (int *) ;
 int umask (int) ;

void
savedeadletter(FILE *fp)
{
 FILE *dbuf;
 int c;
 char *cp;

 if (fsize(fp) == 0)
  return;
 cp = getdeadletter();
 c = umask(077);
 dbuf = Fopen(cp, "a");
 (void)umask(c);
 if (dbuf == ((void*)0))
  return;
 while ((c = getc(fp)) != EOF)
  (void)putc(c, dbuf);
 (void)Fclose(dbuf);
 rewind(fp);
}
