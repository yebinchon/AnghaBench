
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
typedef int FILE ;


 scalar_t__ S_ISDIR (unsigned int) ;
 int fprintf (int *,char*,char const*,char*) ;

__attribute__((used)) static int show_tree_object(const struct object_id *oid,
  struct strbuf *base,
  const char *pathname, unsigned mode, int stage, void *context)
{
 FILE *file = context;
 fprintf(file, "%s%s\n", pathname, S_ISDIR(mode) ? "/" : "");
 return 0;
}
