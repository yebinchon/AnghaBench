
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCRIPT ;
 scalar_t__ boolean (int ) ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fscript ;
 int kill (scalar_t__,int) ;
 scalar_t__ tipin_pid ;
 int value (int ) ;

__attribute__((used)) static void
intTERM(int signo)
{
 if (boolean(value(SCRIPT)) && fscript != ((void*)0))
  fclose(fscript);
 if (signo && tipin_pid)
  kill(tipin_pid, signo);
 exit(0);
}
