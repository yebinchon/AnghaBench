
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_MESSAGES ;
 int err (int,int *) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int printf (char*,char*) ;
 int setlocale (int ,char*) ;
 char* strerror (long) ;
 long strtol (char*,char**,int ) ;
 int usage () ;

int
main(int argc, char **argv)
{
 char *cp;
 char *errstr;
 long errnum;

 (void) setlocale(LC_MESSAGES, "");
 if (argc != 2)
  usage();

 errno = 0;

 errnum = strtol(argv[1], &cp, 0);

 if (errno != 0)
  err(1, ((void*)0));

 if ((errstr = strerror(errnum)) == ((void*)0))
  err(1, ((void*)0));

 printf("%s\n", errstr);

 exit(0);
}
