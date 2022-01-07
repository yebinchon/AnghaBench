
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 scalar_t__ OBJ_BLOB ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int clear_commit_marks (struct commit*,int) ;
 scalar_t__ debug ;
 int describe_blob (struct object_id,struct strbuf*) ;
 int describe_commit (struct object_id*,struct strbuf*) ;
 int die (char*,char const*) ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 struct commit* lookup_commit_reference_gently (int ,struct object_id*,int) ;
 scalar_t__ oid_object_info (int ,struct object_id*,int *) ;
 int puts (int ) ;
 int stderr ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;

__attribute__((used)) static void describe(const char *arg, int last_one)
{
 struct object_id oid;
 struct commit *cmit;
 struct strbuf sb = STRBUF_INIT;

 if (debug)
  fprintf(stderr, _("describe %s\n"), arg);

 if (get_oid(arg, &oid))
  die(_("Not a valid object name %s"), arg);
 cmit = lookup_commit_reference_gently(the_repository, &oid, 1);

 if (cmit)
  describe_commit(&oid, &sb);
 else if (oid_object_info(the_repository, &oid, ((void*)0)) == OBJ_BLOB)
  describe_blob(oid, &sb);
 else
  die(_("%s is neither a commit nor blob"), arg);

 puts(sb.buf);

 if (!last_one)
  clear_commit_marks(cmit, -1);

 strbuf_release(&sb);
}
