
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct commit_graft {int dummy; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 int fclose (int *) ;
 int * fopen_or_warn (char const*,char*) ;
 struct commit_graft* read_graft_line (struct strbuf*) ;
 int register_commit_graft (int ,struct commit_graft*,int ) ;
 int strbuf_getwholeline (struct strbuf*,int *,char) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;

__attribute__((used)) static int read_ancestry(const char *graft_file)
{
 FILE *fp = fopen_or_warn(graft_file, "r");
 struct strbuf buf = STRBUF_INIT;
 if (!fp)
  return -1;
 while (!strbuf_getwholeline(&buf, fp, '\n')) {

  struct commit_graft *graft = read_graft_line(&buf);
  if (graft)
   register_commit_graft(the_repository, graft, 0);
 }
 fclose(fp);
 strbuf_release(&buf);
 return 0;
}
