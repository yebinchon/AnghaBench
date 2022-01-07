
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_efi ;
 int flag_format ;
 int flag_parse ;
 int flag_unix ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int longopts ;
 scalar_t__ optind ;
 int usage () ;
 int warnx (char*) ;

__attribute__((used)) static void
parse_args(int argc, char **argv)
{
 int ch;

 while ((ch = getopt_long(argc, argv, "efpu",
      longopts, ((void*)0))) != -1) {
  switch (ch) {
  case 'e':
   flag_efi++;
   break;
  case 'f':
   flag_format++;
   break;
  case 'p':
   flag_parse++;
   break;
  case 'u':
   flag_unix++;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc >= 1)
  usage();

 if (flag_parse + flag_format + flag_efi + flag_unix != 1) {
  warnx("Can only use one of -p (--parse), "
      "and -f (--format)");
  usage();
 }
}
