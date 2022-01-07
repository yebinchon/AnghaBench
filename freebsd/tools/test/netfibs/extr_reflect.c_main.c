
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef void* u_int ;


 int EX_USAGE ;
 void* addr ;
 int debug ;
 int errx (int ,char*,...) ;
 void* fib ;
 int getopt (int,char**,char*) ;
 int nostart ;
 void* optarg ;
 char* optopt ;
 int port ;
 int reflect_tcp6 () ;
 int reflect_udp6 () ;
 void* reflectfib ;
 scalar_t__ strcmp (char*,char*) ;
 long long strtoll (void*,char**,int) ;
 int * testcase ;

int
main(int argc, char *argv[])
{
 long long l;
 char *dummy, *afname;
 int ch, rc;

 afname = ((void*)0);
 while ((ch = getopt(argc, argv, "A:dF:f:Np:t:T:")) != -1) {
  switch (ch) {
  case 'A':
   addr = optarg;
   break;
  case 'd':
   debug++;
   break;
  case 'F':
   l = strtoll(optarg, &dummy, 10);
   if (*dummy != '\0' || l < 0)
    errx(EX_USAGE, "Invalid FIB number");
   fib = (u_int)l;
   break;
  case 'f':
   l = strtoll(optarg, &dummy, 10);
   if (*dummy != '\0' || l < 0)
    errx(EX_USAGE, "Invalid FIB number");
   reflectfib = (u_int)l;
   break;
  case 'N':
   nostart=1;
   break;
  case 'p':
   l = strtoll(optarg, &dummy, 10);
   if (*dummy != '\0' || l < 0)
    errx(EX_USAGE, "Invalid port number");
   port = (uint16_t)l;
   break;
  case 't':
   testcase = optarg;
   break;
  case 'T':
   afname = optarg;
   break;
  case '?':
  default:
   errx(EX_USAGE, "Unknown command line option at '%c'",
       optopt);

  }
 }

 if (testcase == ((void*)0))
  errx(EX_USAGE, "Mandatory option -t <testcase> not given");
 if (afname == ((void*)0))
  errx(EX_USAGE, "Mandatory option -T <afname> not given");

 if (strcmp(afname, "TCP6") == 0)
  rc = reflect_tcp6();
 else if (strcmp(afname, "UDP6") == 0)
  rc = reflect_udp6();
 else
  errx(EX_USAGE, "Mandatory option -T %s not a valid option",
      afname);

 return (rc);
}
