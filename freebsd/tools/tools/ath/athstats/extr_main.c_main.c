
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct athstatfoo {int (* print_verbose ) (struct athstatfoo*,int ) ;int (* collect_tot ) (struct athstatfoo*) ;int (* print_total ) (struct athstatfoo*,int ) ;int (* update_tot ) (struct athstatfoo*) ;int (* print_current ) (struct athstatfoo*,int ) ;int (* collect_cur ) (struct athstatfoo*) ;int (* print_header ) (struct athstatfoo*,int ) ;int (* zerostats ) (struct athstatfoo*) ;int (* setfmt ) (struct athstatfoo*,int ) ;int (* print_fields ) (struct athstatfoo*,int ) ;int (* setifname ) (struct athstatfoo*,char*) ;} ;


 char* ATH_DEFAULT ;
 int SIGALRM ;
 int alarm (int) ;
 struct athstatfoo* athstats_new (char const*,int ) ;
 int catchalarm ;
 int errx (int,char*,char*) ;
 int fflush (int ) ;
 char* getenv (char*) ;
 int getfmt (char*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int sigblock (int ) ;
 int sigmask (int ) ;
 int signal (int ,int ) ;
 scalar_t__ signalled ;
 int sigpause (int ) ;
 int sigsetmask (int) ;
 int stdout ;
 int strtoul (char*,int *,int ) ;
 int stub1 (struct athstatfoo*,char*) ;
 int stub10 (struct athstatfoo*,int ) ;
 int stub11 (struct athstatfoo*) ;
 int stub12 (struct athstatfoo*,int ) ;
 int stub2 (struct athstatfoo*,int ) ;
 int stub3 (struct athstatfoo*,int ) ;
 int stub4 (struct athstatfoo*) ;
 int stub5 (struct athstatfoo*,int ) ;
 int stub6 (struct athstatfoo*) ;
 int stub7 (struct athstatfoo*,int ) ;
 int stub8 (struct athstatfoo*) ;
 int stub9 (struct athstatfoo*) ;

int
main(int argc, char *argv[])
{
 struct athstatfoo *wf;
 const char *ifname;
 int c, banner = 1;

 ifname = getenv("ATH");
 if (ifname == ((void*)0))
  ifname = ATH_DEFAULT;
 wf = athstats_new(ifname, getfmt("default"));
 while ((c = getopt(argc, argv, "bi:lo:z")) != -1) {
  switch (c) {
  case 'b':
   banner = 0;
   break;
  case 'i':
   wf->setifname(wf, optarg);
   break;
  case 'l':
   wf->print_fields(wf, stdout);
   return 0;
  case 'o':
   wf->setfmt(wf, getfmt(optarg));
   break;
  case 'z':
   wf->zerostats(wf);
   break;
  default:
   errx(-1, "usage: %s [-a] [-i ifname] [-l] [-o fmt] [-z] [interval]\n", argv[0]);

  }
 }
 argc -= optind;
 argv += optind;

 if (argc > 0) {
  u_long interval = strtoul(argv[0], ((void*)0), 0);
  int line, omask;

  if (interval < 1)
   interval = 1;
  signal(SIGALRM, catchalarm);
  signalled = 0;
  alarm(interval);
 banner:
  if (banner)
   wf->print_header(wf, stdout);
  line = 0;
 loop:
  if (line != 0) {
   wf->collect_cur(wf);
   wf->print_current(wf, stdout);
   wf->update_tot(wf);
  } else {
   wf->collect_tot(wf);
   wf->print_total(wf, stdout);
  }
  fflush(stdout);
  omask = sigblock(sigmask(SIGALRM));
  if (!signalled)
   sigpause(0);
  sigsetmask(omask);
  signalled = 0;
  alarm(interval);
  line++;
  if (line == 21)
   goto banner;
  else
   goto loop;

 } else {
  wf->collect_tot(wf);
  wf->print_verbose(wf, stdout);
 }
 return 0;
}
