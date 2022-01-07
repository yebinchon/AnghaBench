
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int hostmode (char*,int) ;
 scalar_t__ optind ;
 int protomode (char*,int) ;
 int usage () ;

int
main(int argc, char **argv)
{
 int opt, brief = 0, proto = 0;

 while ((opt = getopt(argc, argv, "bhp")) != -1) {
  switch (opt) {
  case 'b':
   brief = 1;
   break;

  case 'p':
   proto = 1;
   break;

  case 'h':
  default:
   usage();

  }
 }

 argc -= optind;
 argv += optind;

 if (argc < 1)
  usage();

 exit(proto? protomode(*argv, brief) : hostmode(*argv, brief));
}
