
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {struct packed_git* next; int pack_name; } ;
struct pack_list {int dummy; } ;


 struct pack_list* add_pack (struct packed_git*) ;
 int die (char*,char const*) ;
 struct packed_git* get_all_packs (int ) ;
 int strlen (char const*) ;
 scalar_t__ strstr (int ,char const*) ;
 int the_repository ;

__attribute__((used)) static struct pack_list * add_pack_file(const char *filename)
{
 struct packed_git *p = get_all_packs(the_repository);

 if (strlen(filename) < 40)
  die("Bad pack filename: %s", filename);

 while (p) {
  if (strstr(p->pack_name, filename))
   return add_pack(p);
  p = p->next;
 }
 die("Filename %s not found in packed_git", filename);
}
