
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct npestatfoo {int (* print_verbose ) (struct npestatfoo*,int ) ;int (* collect_tot ) (struct npestatfoo*) ;int (* print_total ) (struct npestatfoo*,int ) ;int (* update_tot ) (struct npestatfoo*) ;int (* print_current ) (struct npestatfoo*,int ) ;int (* collect_cur ) (struct npestatfoo*) ;int (* print_header ) (struct npestatfoo*,int ) ;int (* setfmt ) (struct npestatfoo*,int ) ;int (* print_fields ) (struct npestatfoo*,int ) ;int (* setifname ) (struct npestatfoo*,char*) ;} ;


 int SIGALRM ;
 int alarm (int) ;
 int catchalarm ;
 int errx (int,char*,char*) ;
 int fflush (int ) ;
 char* getenv (char*) ;
 int getfmt (char*) ;
 int getopt (int,char**,char*) ;
 struct npestatfoo* npestats_new (char const*,int ) ;
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
 int stub1 (struct npestatfoo*,char*) ;
 int stub10 (struct npestatfoo*) ;
 int stub11 (struct npestatfoo*,int ) ;
 int stub2 (struct npestatfoo*,int ) ;
 int stub3 (struct npestatfoo*,int ) ;
 int stub4 (struct npestatfoo*,int ) ;
 int stub5 (struct npestatfoo*) ;
 int stub6 (struct npestatfoo*,int ) ;
 int stub7 (struct npestatfoo*) ;
 int stub8 (struct npestatfoo*) ;
 int stub9 (struct npestatfoo*,int ) ;

int
main(int argc, char *argv[])
{
 struct npestatfoo *wf;
 const char *ifname;
 int c, banner = 1;

 ifname = getenv("NPE");
 if (ifname == ((void*)0))
  ifname = "npe0";
 wf = npestats_new(ifname, getfmt("default"));
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
  default:
   errx(-1, "usage: %s [-a] [-i ifname] [-l] [-o fmt] [interval]\n", argv[0]);

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
