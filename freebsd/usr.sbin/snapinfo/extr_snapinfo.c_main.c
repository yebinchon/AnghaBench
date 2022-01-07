
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntonname; int f_fstypename; } ;
struct stat {int st_mode; } ;


 int MNT_WAIT ;
 int PATH_MAX ;
 int S_ISDIR (int ) ;
 int cont_search ;
 int find_snapshot (struct statfs*) ;
 int getmntinfo (struct statfs**,int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int * realpath (char*,char*) ;
 int stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strncmp (int ,char*,int) ;
 int usage () ;
 int verbose ;

int
main(int argc, char **argv)
{
 char *path;
 struct stat st;
 struct statfs *mntbuf;
 int all = 0, ch, done = 0, fscount, n;

 while ((ch = getopt(argc, argv, "adv")) != -1) {
  switch (ch) {
  case 'a':
   all++;
   break;
  case 'd':


   cont_search++;
   break;
  case 'v':
   verbose++;
   break;
  default:
   usage();
  }
 }

 argc -= optind;
 argv += optind;

 if ((all == 0 && argc != 1) || (all == 1 && argc > 0))
  usage();

 if (!all) {
  char resolved[PATH_MAX];

  path = *argv;




  if (realpath(path, resolved) == ((void*)0) ||
      stat(resolved, &st) == -1 ||
      !S_ISDIR(st.st_mode)) {
   usage();
  }
  path = resolved;
 }

 fscount = getmntinfo(&mntbuf, MNT_WAIT);
 for (n = 0; n < fscount; n++) {
  if (!strncmp(mntbuf[n].f_fstypename, "ufs", 3)) {
   if (all || strcmp(path, mntbuf[n].f_mntonname) == 0) {
    find_snapshot(&mntbuf[n]);
    done++;
   }
  }
 }

 if (done == 0)
  usage();

 return (0);
}
