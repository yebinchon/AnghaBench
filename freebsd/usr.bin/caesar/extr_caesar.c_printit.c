
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int ROTATE (int,int) ;
 int atoi (char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int getchar () ;
 int putchar (int ) ;
 int stderr ;

__attribute__((used)) static void
printit(char *arg)
{
 int ch, rot;

 if ((rot = atoi(arg)) < 0) {
  (void)fprintf(stderr, "caesar: bad rotation value.\n");
  exit(1);
 }
 while ((ch = getchar()) != EOF)
  putchar(ROTATE(ch, rot));
 exit(0);
}
