
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int fclose (int *) ;
 char* git_path_fetch_head (int ) ;
 int oid_array_append (struct oid_array*,struct object_id*) ;
 scalar_t__ parse_oid_hex (int ,struct object_id*,char const**) ;
 scalar_t__ starts_with (char const*,char*) ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 int * xfopen (char const*,char*) ;

__attribute__((used)) static void get_merge_heads(struct oid_array *merge_heads)
{
 const char *filename = git_path_fetch_head(the_repository);
 FILE *fp;
 struct strbuf sb = STRBUF_INIT;
 struct object_id oid;

 fp = xfopen(filename, "r");
 while (strbuf_getline_lf(&sb, fp) != EOF) {
  const char *p;
  if (parse_oid_hex(sb.buf, &oid, &p))
   continue;
  if (starts_with(p, "\tnot-for-merge\t"))
   continue;
  oid_array_append(merge_heads, &oid);
 }
 fclose(fp);
 strbuf_release(&sb);
}
