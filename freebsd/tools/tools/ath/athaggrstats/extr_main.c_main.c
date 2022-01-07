
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct athaggrstatfoo {int (* print_verbose ) (struct athaggrstatfoo*,int ) ;int (* collect_tot ) (struct athaggrstatfoo*) ;int (* print_total ) (struct athaggrstatfoo*,int ) ;int (* update_tot ) (struct athaggrstatfoo*) ;int (* print_current ) (struct athaggrstatfoo*,int ) ;int (* collect_cur ) (struct athaggrstatfoo*) ;int (* print_header ) (struct athaggrstatfoo*,int ) ;int (* zerostats ) (struct athaggrstatfoo*) ;int (* setfmt ) (struct athaggrstatfoo*,int ) ;int (* print_fields ) (struct athaggrstatfoo*,int ) ;int (* setifname ) (struct athaggrstatfoo*,char*) ;} ;


 char* ATH_DEFAULT ;
 int SIGALRM ;
 int alarm (int) ;
 struct athaggrstatfoo* athaggrstats_new (char const*,int ) ;
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
 int stub1 (struct athaggrstatfoo*,char*) ;
 int stub10 (struct athaggrstatfoo*,int ) ;
 int stub11 (struct athaggrstatfoo*) ;
 int stub12 (struct athaggrstatfoo*,int ) ;
 int stub2 (struct athaggrstatfoo*,int ) ;
 int stub3 (struct athaggrstatfoo*,int ) ;
 int stub4 (struct athaggrstatfoo*) ;
 int stub5 (struct athaggrstatfoo*,int ) ;
 int stub6 (struct athaggrstatfoo*) ;
 int stub7 (struct athaggrstatfoo*,int ) ;
 int stub8 (struct athaggrstatfoo*) ;
 int stub9 (struct athaggrstatfoo*) ;

int
main(int argc, char *argv[])
{
 struct athaggrstatfoo *wf;
 const char *ifname;
 int c, banner = 1;

 ifname = getenv("ATH");
 if (ifname == ((void*)0))
  ifname = ATH_DEFAULT;
 wf = athaggrstats_new(ifname, getfmt("default"));
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
