
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwnstats {int dummy; } ;


 int IWN_DEFAULT_IF ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ iwn_collect (struct iwnstats*) ;
 int iwn_print (struct iwnstats*) ;
 struct iwnstats* iwnstats_new (char*) ;
 int optarg ;
 int stderr ;
 char* strdup (int ) ;
 int usage () ;
 int usleep (int) ;

int
main(int argc, char *argv[])
{
 struct iwnstats *is;
 int ch;
 char *ifname;
 bool first;
 char *sysctlname;
 size_t len;
 int ret;

 ifname = strdup(IWN_DEFAULT_IF);


 while ((ch = getopt(argc, argv,
     "hi:")) != -1) {
  switch (ch) {
  case 'i':
   if (ifname)
    free(ifname);
   ifname = strdup(optarg);
   break;
  default:
  case '?':
  case 'h':
   usage();
   exit(1);
  }
 }

 is = iwnstats_new(ifname);

 if (is == ((void*)0)) {
  fprintf(stderr, "%s: couldn't allocate new stats structure\n",
      argv[0]);
  exit(127);
 }


 first = 1;
 while (1) {
  if (iwn_collect(is) != 0) {
   fprintf(stderr, "%s: fetch failed\n", argv[0]);
   if (first)
    return 1;
   goto next;
  }

  iwn_print(is);

 next:
  usleep(100 * 1000);
  first = 0;
 }

 exit(0);
}
