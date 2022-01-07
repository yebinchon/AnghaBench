
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; } ;
struct object_id {int dummy; } ;
struct commit {int date; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int DATE_MODE (int ) ;
 int DEFAULT_ABBREV ;




 int SHORT ;
 int find_commit_subject (char*,char const**) ;
 int free (char*) ;
 char* getenv (char*) ;
 struct commit* lookup_commit_reference (int ,struct object_id const*) ;
 int oid_object_info (int ,struct object_id const*,int *) ;
 char* read_object_file (struct object_id const*,int*,unsigned long*) ;
 int show_date (int ,int ,int ) ;
 int strbuf_add_unique_abbrev (struct strbuf*,struct object_id const*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_insert (struct strbuf*,int ,char const*,int) ;
 int the_repository ;

__attribute__((used)) static void create_reflog_msg(const struct object_id *oid, struct strbuf *sb)
{
 enum object_type type;
 struct commit *c;
 char *buf;
 unsigned long size;
 int subject_len = 0;
 const char *subject_start;

 char *rla = getenv("GIT_REFLOG_ACTION");
 if (rla) {
  strbuf_addstr(sb, rla);
 } else {
  strbuf_addstr(sb, "tag: tagging ");
  strbuf_add_unique_abbrev(sb, oid, DEFAULT_ABBREV);
 }

 strbuf_addstr(sb, " (");
 type = oid_object_info(the_repository, oid, ((void*)0));
 switch (type) {
 default:
  strbuf_addstr(sb, "object of unknown type");
  break;
 case 130:
  if ((buf = read_object_file(oid, &type, &size)) != ((void*)0)) {
   subject_len = find_commit_subject(buf, &subject_start);
   strbuf_insert(sb, sb->len, subject_start, subject_len);
  } else {
   strbuf_addstr(sb, "commit object");
  }
  free(buf);

  if ((c = lookup_commit_reference(the_repository, oid)) != ((void*)0))
   strbuf_addf(sb, ", %s", show_date(c->date, 0, DATE_MODE(SHORT)));
  break;
 case 128:
  strbuf_addstr(sb, "tree object");
  break;
 case 131:
  strbuf_addstr(sb, "blob object");
  break;
 case 129:
  strbuf_addstr(sb, "other tag object");
  break;
 }
 strbuf_addch(sb, ')');
}
