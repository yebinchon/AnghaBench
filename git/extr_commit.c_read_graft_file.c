
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct repository {int dummy; } ;
struct commit_graft {int dummy; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ advice_graft_file_deprecated ;
 int advise (int ) ;
 int error (char*,int ) ;
 int fclose (int *) ;
 int * fopen_or_warn (char const*,char*) ;
 struct commit_graft* read_graft_line (struct strbuf*) ;
 scalar_t__ register_commit_graft (struct repository*,struct commit_graft*,int) ;
 int strbuf_getwholeline (struct strbuf*,int *,char) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int read_graft_file(struct repository *r, const char *graft_file)
{
 FILE *fp = fopen_or_warn(graft_file, "r");
 struct strbuf buf = STRBUF_INIT;
 if (!fp)
  return -1;
 if (advice_graft_file_deprecated)
  advise(_("Support for <GIT_DIR>/info/grafts is deprecated\n"
    "and will be removed in a future Git version.\n"
    "\n"
    "Please use \"git replace --convert-graft-file\"\n"
    "to convert the grafts into replace refs.\n"
    "\n"
    "Turn this message off by running\n"
    "\"git config advice.graftFileDeprecated false\""));
 while (!strbuf_getwholeline(&buf, fp, '\n')) {

  struct commit_graft *graft = read_graft_line(&buf);
  if (!graft)
   continue;
  if (register_commit_graft(r, graft, 1))
   error("duplicate graft data: %s", buf.buf);
 }
 fclose(fp);
 strbuf_release(&buf);
 return 0;
}
