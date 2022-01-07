
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct merge_list {size_t stage; int mode; char* path; TYPE_2__* blob; struct merge_list* link; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 char* explanation (struct merge_list*) ;
 char* oid_to_hex (int *) ;
 int printf (char*,char const*,...) ;

__attribute__((used)) static void show_result_list(struct merge_list *entry)
{
 printf("%s\n", explanation(entry));
 do {
  struct merge_list *link = entry->link;
  static const char *desc[4] = { "result", "base", "our", "their" };
  printf("  %-6s %o %s %s\n", desc[entry->stage], entry->mode, oid_to_hex(&entry->blob->object.oid), entry->path);
  entry = link;
 } while (entry);
}
