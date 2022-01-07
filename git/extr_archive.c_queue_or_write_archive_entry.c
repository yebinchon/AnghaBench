
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {scalar_t__ len; int buf; } ;
struct object_id {int hash; } ;
struct directory {scalar_t__ len; struct directory* up; int path; } ;
struct attr_check {int dummy; } ;
struct archiver_context {TYPE_2__* args; struct directory* bottom; } ;
struct TYPE_4__ {TYPE_1__* repo; } ;
struct TYPE_3__ {int index; } ;


 int READ_TREE_RECURSIVE ;
 scalar_t__ S_ISDIR (unsigned int) ;
 scalar_t__ check_attr_export_ignore (struct attr_check const*) ;
 int free (struct directory*) ;
 struct attr_check* get_archive_attrs (int ,int ) ;
 int queue_directory (int ,struct strbuf*,char const*,unsigned int,int,struct archiver_context*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 int strncmp (int ,int ,scalar_t__) ;
 int write_archive_entry (struct object_id const*,int ,size_t,char const*,unsigned int,int,void*) ;
 scalar_t__ write_directory (struct archiver_context*) ;

__attribute__((used)) static int queue_or_write_archive_entry(const struct object_id *oid,
  struct strbuf *base, const char *filename,
  unsigned mode, int stage, void *context)
{
 struct archiver_context *c = context;

 while (c->bottom &&
        !(base->len >= c->bottom->len &&
   !strncmp(base->buf, c->bottom->path, c->bottom->len))) {
  struct directory *next = c->bottom->up;
  free(c->bottom);
  c->bottom = next;
 }

 if (S_ISDIR(mode)) {
  size_t baselen = base->len;
  const struct attr_check *check;


  strbuf_addstr(base, filename);
  strbuf_addch(base, '/');
  check = get_archive_attrs(c->args->repo->index, base->buf);
  strbuf_setlen(base, baselen);

  if (check_attr_export_ignore(check))
   return 0;
  queue_directory(oid->hash, base, filename,
    mode, stage, c);
  return READ_TREE_RECURSIVE;
 }

 if (write_directory(c))
  return -1;
 return write_archive_entry(oid, base->buf, base->len, filename, mode,
       stage, context);
}
