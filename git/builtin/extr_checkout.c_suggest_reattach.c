
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct rev_info {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int DEFAULT_ABBREV ;
 int ORPHAN_CUTOFF ;
 char* Q_ (char*,char*,int) ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ advice_detached_head ;
 int describe_one_orphan (struct strbuf*,struct commit*) ;
 char* find_unique_abbrev (int *,int ) ;
 int fprintf (int ,char*,...) ;
 struct commit* get_revision (struct rev_info*) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,int ,int) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void suggest_reattach(struct commit *commit, struct rev_info *revs)
{
 struct commit *c, *last = ((void*)0);
 struct strbuf sb = STRBUF_INIT;
 int lost = 0;
 while ((c = get_revision(revs)) != ((void*)0)) {
  if (lost < ORPHAN_CUTOFF)
   describe_one_orphan(&sb, c);
  last = c;
  lost++;
 }
 if (ORPHAN_CUTOFF < lost) {
  int more = lost - ORPHAN_CUTOFF;
  if (more == 1)
   describe_one_orphan(&sb, last);
  else
   strbuf_addf(&sb, _(" ... and %d more.\n"), more);
 }

 fprintf(stderr,
  Q_(

  "Warning: you are leaving %d commit behind, "
  "not connected to\n"
  "any of your branches:\n\n"
  "%s\n",

  "Warning: you are leaving %d commits behind, "
  "not connected to\n"
  "any of your branches:\n\n"
  "%s\n",

  lost),
  lost,
  sb.buf);
 strbuf_release(&sb);

 if (advice_detached_head)
  fprintf(stderr,
   Q_(

   "If you want to keep it by creating a new branch, "
   "this may be a good time\nto do so with:\n\n"
   " git branch <new-branch-name> %s\n\n",

   "If you want to keep them by creating a new branch, "
   "this may be a good time\nto do so with:\n\n"
   " git branch <new-branch-name> %s\n\n",

   lost),
   find_unique_abbrev(&commit->object.oid, DEFAULT_ABBREV));
}
