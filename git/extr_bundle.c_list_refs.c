
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_list {int nr; TYPE_1__* list; } ;
struct TYPE_2__ {char* name; int oid; } ;


 char* oid_to_hex (int *) ;
 int printf (char*,char*,char*) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int list_refs(struct ref_list *r, int argc, const char **argv)
{
 int i;

 for (i = 0; i < r->nr; i++) {
  if (argc > 1) {
   int j;
   for (j = 1; j < argc; j++)
    if (!strcmp(r->list[i].name, argv[j]))
     break;
   if (j == argc)
    continue;
  }
  printf("%s %s\n", oid_to_hex(&r->list[i].oid),
    r->list[i].name);
 }
 return 0;
}
