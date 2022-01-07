
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_t ;
typedef int off_t ;
typedef int FILE ;


 int Fclose (int *) ;
 int SEEK_END ;
 int SIGINT ;
 int SIG_IGN ;
 int * collf ;
 int fseeko (int *,int ,int ) ;
 int * run_editor (int *,int ,int,int ) ;
 int signal (int ,int ) ;

void
mesedit(FILE *fp, int c)
{
 sig_t sigint = signal(SIGINT, SIG_IGN);
 FILE *nf = run_editor(fp, (off_t)-1, c, 0);

 if (nf != ((void*)0)) {
  (void)fseeko(nf, (off_t)0, SEEK_END);
  collf = nf;
  (void)Fclose(fp);
 }
 (void)signal(SIGINT, sigint);
}
