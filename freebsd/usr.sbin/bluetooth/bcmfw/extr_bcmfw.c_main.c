
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCMFW ;
 int LOG_NDELAY ;
 int LOG_PERROR ;
 int LOG_PID ;
 int LOG_USER ;
 scalar_t__ bcmfw_check_device (char*) ;
 scalar_t__ bcmfw_load_firmware (char*,char*,char*) ;
 int bcmfw_usage () ;
 int closelog () ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int openlog (int ,int,int ) ;
 char* optarg ;

int
main(int argc, char *argv[])
{
 char *name = ((void*)0), *md = ((void*)0), *fw = ((void*)0);
 int x;

 while ((x = getopt(argc, argv, "f:hn:m:")) != -1) {
  switch (x) {
  case 'f':
   fw = optarg;
   break;

  case 'n':
   name = optarg;
   break;

  case 'm':
   md = optarg;
   break;

  case 'h':
  default:
   bcmfw_usage();

  }
 }

 if (name == ((void*)0) || md == ((void*)0) || fw == ((void*)0))
  bcmfw_usage();


 openlog(BCMFW, LOG_NDELAY|LOG_PERROR|LOG_PID, LOG_USER);

 if (bcmfw_check_device(name) < 0)
  exit(1);

 if (bcmfw_load_firmware(name, md, fw) < 0)
  exit(1);

 closelog();

 return (0);
}
