
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hs ;
typedef int HAL_CHANNEL_SURVEY ;
typedef int FILE ;


 int AF_INET ;
 char* ATH_DEFAULT ;
 int SOCK_DGRAM ;
 int err (int,char*) ;
 scalar_t__ get_survey_stats (int,char const*,int *) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 int memset (int *,char,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*) ;
 int process_survey_stats (int *) ;
 char* progname ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 FILE *fd = ((void*)0);
 const char *ifname;
 int c, s;
 int l = 0;

 s = socket(AF_INET, SOCK_DGRAM, 0);
 if (s < 0)
  err(1, "socket");
 ifname = getenv("ATH");
 if (!ifname)
  ifname = ATH_DEFAULT;

 progname = argv[0];
 while ((c = getopt(argc, argv, "i:")) != -1)
  switch (c) {
  case 'i':
   ifname = optarg;
   break;
  default:
   usage();

  }
 argc -= optind;
 argv += optind;


 while (1) {
  HAL_CHANNEL_SURVEY hs;
  memset(&hs, '\0', sizeof(hs));
  if (get_survey_stats(s, ifname, &hs) == 0)
   break;

  if (l % 23 == 0) {
   printf("         "
       "min                   "
       "avg                   "
       "max\n");
   printf("  tx%%  rx%%  bc%%  ec%%  ");
   printf("  tx%%  rx%%  bc%%  ec%%  ");
   printf("  tx%%  rx%%  bc%%  ec%%\n");
  }
  process_survey_stats(&hs);
  sleep(1);
  l++;
 }

 return (0);
}
