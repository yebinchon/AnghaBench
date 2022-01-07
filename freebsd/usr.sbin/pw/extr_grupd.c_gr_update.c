
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct group {int dummy; } ;
struct TYPE_2__ {int etcpath; } ;


 struct group* GETGRNAM (char const*) ;
 int close (int) ;
 TYPE_1__ conf ;
 int err (int,char*) ;
 int free (struct group*) ;
 int fsync (int) ;
 int gr_copy (int,int,struct group*,struct group*) ;
 struct group* gr_dup (struct group*) ;
 int gr_fini () ;
 scalar_t__ gr_init (int ,int *) ;
 int gr_lock () ;
 int gr_mkdb () ;
 int gr_tmp (int) ;

__attribute__((used)) static int
gr_update(struct group * grp, char const * group)
{
 int pfd, tfd;
 struct group *gr = ((void*)0);
 struct group *old_gr = ((void*)0);

 if (grp != ((void*)0))
  gr = gr_dup(grp);

 if (group != ((void*)0))
  old_gr = GETGRNAM(group);

 if (gr_init(conf.etcpath, ((void*)0)))
  err(1, "gr_init()");

 if ((pfd = gr_lock()) == -1) {
  gr_fini();
  err(1, "gr_lock()");
 }
 if ((tfd = gr_tmp(-1)) == -1) {
  gr_fini();
  err(1, "gr_tmp()");
 }
 if (gr_copy(pfd, tfd, gr, old_gr) == -1) {
  gr_fini();
  close(tfd);
  err(1, "gr_copy()");
 }
 fsync(tfd);
 close(tfd);
 if (gr_mkdb() == -1) {
  gr_fini();
  err(1, "gr_mkdb()");
 }
 free(gr);
 gr_fini();
 return 0;
}
