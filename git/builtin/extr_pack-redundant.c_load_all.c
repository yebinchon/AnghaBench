
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {struct packed_git* next; } ;


 int add_pack (struct packed_git*) ;
 struct packed_git* get_all_packs (int ) ;
 int the_repository ;

__attribute__((used)) static void load_all(void)
{
 struct packed_git *p = get_all_packs(the_repository);

 while (p) {
  add_pack(p);
  p = p->next;
 }
}
