
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;


 scalar_t__ ENOENT ;
 int O_RDONLY ;
 struct strbuf STRBUF_INIT ;
 struct commit_list** append_parent (struct repository*,struct commit_list**,struct object_id*) ;
 int close (int) ;
 int die (char*,int ,...) ;
 scalar_t__ errno ;
 scalar_t__ get_oid_hex (int ,struct object_id*) ;
 int git_path_merge_head (struct repository*) ;
 int open (int ,int ) ;
 int strbuf_getwholeline_fd (struct strbuf*,int,char) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void append_merge_parents(struct repository *r,
     struct commit_list **tail)
{
 int merge_head;
 struct strbuf line = STRBUF_INIT;

 merge_head = open(git_path_merge_head(r), O_RDONLY);
 if (merge_head < 0) {
  if (errno == ENOENT)
   return;
  die("cannot open '%s' for reading",
      git_path_merge_head(r));
 }

 while (!strbuf_getwholeline_fd(&line, merge_head, '\n')) {
  struct object_id oid;
  if (get_oid_hex(line.buf, &oid))
   die("unknown line in '%s': %s",
       git_path_merge_head(r), line.buf);
  tail = append_parent(r, tail, &oid);
 }
 close(merge_head);
 strbuf_release(&line);
}
