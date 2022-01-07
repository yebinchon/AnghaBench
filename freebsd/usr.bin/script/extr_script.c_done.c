
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int STDIN_FILENO ;
 int TCSAFLUSH ;
 int close (int ) ;
 char* ctime (int *) ;
 int exit (int) ;
 int fclose (int ) ;
 scalar_t__ fflg ;
 char* fmfname ;
 char* fname ;
 int fprintf (int ,char*,...) ;
 int fscript ;
 int master ;
 int printf (char*,char*) ;
 int qflg ;
 scalar_t__ rawout ;
 int record (int ,int *,int ,char) ;
 scalar_t__ showexit ;
 int tcsetattr (int ,int ,int *) ;
 int time (int *) ;
 int tt ;
 scalar_t__ ttyflg ;

__attribute__((used)) static void
done(int eno)
{
 time_t tvec;

 if (ttyflg)
  (void)tcsetattr(STDIN_FILENO, TCSAFLUSH, &tt);
 tvec = time(((void*)0));
 if (rawout)
  record(fscript, ((void*)0), 0, 'e');
 if (!qflg) {
  if (!rawout) {
   if (showexit)
    (void)fprintf(fscript, "\nCommand exit status:"
        " %d", eno);
   (void)fprintf(fscript,"\nScript done on %s",
       ctime(&tvec));
  }
  (void)printf("\nScript done, output file is %s\n", fname);
  if (fflg) {
   (void)printf("Filemon done, output file is %s\n",
       fmfname);
  }
 }
 (void)fclose(fscript);
 (void)close(master);
 exit(eno);
}
