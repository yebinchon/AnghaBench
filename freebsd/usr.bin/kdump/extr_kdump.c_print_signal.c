
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 char* sysdecode_signal (int) ;

__attribute__((used)) static void
print_signal(int signo)
{
 const char *signame;

 signame = sysdecode_signal(signo);
 if (signame != ((void*)0))
  printf("%s", signame);
 else
  printf("SIG %d", signo);
}
