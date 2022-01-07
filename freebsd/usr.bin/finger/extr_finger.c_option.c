
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int family ;
 int getopt (int,char**,char*) ;
 int gflag ;
 int kflag ;
 int lflag ;
 int mflag ;
 int oflag ;
 int optind ;
 int pplan ;
 int sflag ;
 int usage () ;

__attribute__((used)) static int
option(int argc, char **argv)
{
 int ch;

 optind = 1;

 while ((ch = getopt(argc, argv, "46gklmpsho")) != -1)
  switch(ch) {
  case '4':
   family = AF_INET;
   break;
  case '6':
   family = AF_INET6;
   break;
  case 'g':
   gflag = 1;
   break;
  case 'k':
   kflag = 1;
   break;
  case 'l':
   lflag = 1;
   break;
  case 'm':
   mflag = 1;
   break;
  case 'p':
   pplan = 1;
   break;
  case 's':
   sflag = 1;
   break;
  case 'h':
   oflag = 0;
   break;
  case 'o':
   oflag = 1;
   break;
  case '?':
  default:
   usage();
  }

 return optind;
}
