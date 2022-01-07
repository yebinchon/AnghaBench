
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int STDOUT_FILENO ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int getc (int *) ;
 scalar_t__ isatty (int ) ;
 scalar_t__ pauseall ;
 scalar_t__ pausefst ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static void
ttypause(int pagecnt)
{
 int pch;
 FILE *ttyfp;

 if ((pauseall || (pausefst && pagecnt == 1)) &&
     isatty(STDOUT_FILENO)) {
  if ((ttyfp = fopen("/dev/tty", "r")) != ((void*)0)) {
   (void)putc('\a', stderr);
   while ((pch = getc(ttyfp)) != '\n' && pch != EOF)
    ;
   (void)fclose(ttyfp);
  }
 }
}
