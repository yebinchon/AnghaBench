
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {char* buf; int len; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_4__ {unsigned int hexsz; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int error (int ,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 int oid_to_hex (int *) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_splice (struct strbuf*,int,int,char const*,int ) ;
 TYPE_2__* the_hash_algo ;
 int the_repository ;

__attribute__((used)) static int replace_parents(struct strbuf *buf, int argc, const char **argv)
{
 struct strbuf new_parents = STRBUF_INIT;
 const char *parent_start, *parent_end;
 int i;
 const unsigned hexsz = the_hash_algo->hexsz;


 parent_start = buf->buf;
 parent_start += hexsz + 6;
 parent_end = parent_start;

 while (starts_with(parent_end, "parent "))
  parent_end += hexsz + 8;


 for (i = 0; i < argc; i++) {
  struct object_id oid;
  struct commit *commit;

  if (get_oid(argv[i], &oid) < 0) {
   strbuf_release(&new_parents);
   return error(_("not a valid object name: '%s'"),
         argv[i]);
  }
  commit = lookup_commit_reference(the_repository, &oid);
  if (!commit) {
   strbuf_release(&new_parents);
   return error(_("could not parse %s as a commit"), argv[i]);
  }
  strbuf_addf(&new_parents, "parent %s\n", oid_to_hex(&commit->object.oid));
 }


 strbuf_splice(buf, parent_start - buf->buf, parent_end - parent_start,
        new_parents.buf, new_parents.len);

 strbuf_release(&new_parents);
 return 0;
}
