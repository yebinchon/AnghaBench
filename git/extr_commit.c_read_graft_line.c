
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
struct object_id {int dummy; } ;
struct commit_graft {int nr_parent; struct object_id* parent; struct object_id oid; } ;


 int assert (int) ;
 int error (char*,char const*) ;
 int isspace (int ) ;
 scalar_t__ parse_oid_hex (char const*,struct object_id*,char const**) ;
 int st_add (int,int ) ;
 int st_mult (int,int) ;
 int strbuf_rtrim (struct strbuf*) ;
 struct commit_graft* xmalloc (int ) ;

struct commit_graft *read_graft_line(struct strbuf *line)
{

 int i, phase;
 const char *tail = ((void*)0);
 struct commit_graft *graft = ((void*)0);
 struct object_id dummy_oid, *oid;

 strbuf_rtrim(line);
 if (!line->len || line->buf[0] == '#')
  return ((void*)0);




 for (phase = 0; phase < 2; phase++) {
  oid = graft ? &graft->oid : &dummy_oid;
  if (parse_oid_hex(line->buf, oid, &tail))
   goto bad_graft_data;
  for (i = 0; *tail != '\0'; i++) {
   oid = graft ? &graft->parent[i] : &dummy_oid;
   if (!isspace(*tail++) || parse_oid_hex(tail, oid, &tail))
    goto bad_graft_data;
  }
  if (!graft) {
   graft = xmalloc(st_add(sizeof(*graft),
            st_mult(sizeof(struct object_id), i)));
   graft->nr_parent = i;
  }
 }
 return graft;

bad_graft_data:
 error("bad graft data: %s", line->buf);
 assert(!graft);
 return ((void*)0);
}
