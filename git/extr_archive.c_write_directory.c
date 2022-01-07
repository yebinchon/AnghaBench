
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct directory {char* path; int len; int baselen; int stage; int mode; int oid; struct directory* up; } ;
struct archiver_context {struct directory* bottom; } ;


 scalar_t__ READ_TREE_RECURSIVE ;
 int free (struct directory*) ;
 scalar_t__ write_archive_entry (int *,char*,int,char*,int ,int ,struct archiver_context*) ;

__attribute__((used)) static int write_directory(struct archiver_context *c)
{
 struct directory *d = c->bottom;
 int ret;

 if (!d)
  return 0;
 c->bottom = d->up;
 d->path[d->len - 1] = '\0';
 ret =
  write_directory(c) ||
  write_archive_entry(&d->oid, d->path, d->baselen,
        d->path + d->baselen, d->mode,
        d->stage, c) != READ_TREE_RECURSIVE;
 free(d);
 return ret ? -1 : 0;
}
