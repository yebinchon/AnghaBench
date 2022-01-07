
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct merge_list {unsigned int stage; char const* path; unsigned int mode; int blob; } ;


 int lookup_blob (int ,struct object_id const*) ;
 int the_repository ;
 struct merge_list* xcalloc (int,int) ;

__attribute__((used)) static struct merge_list *create_entry(unsigned stage, unsigned mode, const struct object_id *oid, const char *path)
{
 struct merge_list *res = xcalloc(1, sizeof(*res));

 res->stage = stage;
 res->path = path;
 res->mode = mode;
 res->blob = lookup_blob(the_repository, oid);
 return res;
}
