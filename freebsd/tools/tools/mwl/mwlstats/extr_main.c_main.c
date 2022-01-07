
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mwlstatfoo {int (* print_verbose ) (struct mwlstatfoo*,int ) ;int (* collect_tot ) (struct mwlstatfoo*) ;int (* print_total ) (struct mwlstatfoo*,int ) ;int (* update_tot ) (struct mwlstatfoo*) ;int (* print_current ) (struct mwlstatfoo*,int ) ;int (* collect_cur ) (struct mwlstatfoo*) ;int (* print_header ) (struct mwlstatfoo*,int ) ;int (* setfmt ) (struct mwlstatfoo*,int ) ;int (* print_fields ) (struct mwlstatfoo*,int ) ;int (* setifname ) (struct mwlstatfoo*,int ) ;} ;


 int SIGALRM ;
 int S_DEFAULT ;
 int alarm (int) ;
 int catchalarm ;
 int errx (int,char*,char*) ;
 int fflush (int ) ;
 int getopt (int,char**,char*) ;
 struct mwlstatfoo* mwlstats_new (char*,int ) ;
 int optarg ;
 scalar_t__ optind ;
 int sigblock (int ) ;
 int sigmask (int ) ;
 int signal (int ,int ) ;
 scalar_t__ signalled ;
 int sigpause (int ) ;
 int sigsetmask (int) ;
 int stdout ;
 int strtoul (char*,int *,int ) ;
 int stub1 (struct mwlstatfoo*,int ) ;
 int stub10 (struct mwlstatfoo*) ;
 int stub11 (struct mwlstatfoo*,int ) ;
 int stub2 (struct mwlstatfoo*,int ) ;
 int stub3 (struct mwlstatfoo*,int ) ;
 int stub4 (struct mwlstatfoo*,int ) ;
 int stub5 (struct mwlstatfoo*) ;
 int stub6 (struct mwlstatfoo*,int ) ;
 int stub7 (struct mwlstatfoo*) ;
 int stub8 (struct mwlstatfoo*) ;
 int stub9 (struct mwlstatfoo*,int ) ;

int
main(int argc, char *argv[])
{
 struct mwlstatfoo *wf;
 int c;

 wf = mwlstats_new("mwl0", S_DEFAULT);
 while ((c = getopt(argc, argv, "i:lo:")) != -1) {
  switch (c) {
  case 'i':
   wf->setifname(wf, optarg);
   break;
  case 'l':
   wf->print_fields(wf, stdout);
   return 0;
  case 'o':
   wf->setfmt(wf, optarg);
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
