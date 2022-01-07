
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int new_oid_prefix; int old_oid_prefix; int lines_deleted; int lines_added; int is_delete; int is_new; int old_mode; int new_mode; int old_name; int new_name; struct fragment* fragments; struct patch* next; } ;
struct fragment {int oldlines; int newlines; int oldpos; int newpos; struct fragment* next; } ;


 int SWAP (int ,int ) ;

__attribute__((used)) static void reverse_patches(struct patch *p)
{
 for (; p; p = p->next) {
  struct fragment *frag = p->fragments;

  SWAP(p->new_name, p->old_name);
  SWAP(p->new_mode, p->old_mode);
  SWAP(p->is_new, p->is_delete);
  SWAP(p->lines_added, p->lines_deleted);
  SWAP(p->old_oid_prefix, p->new_oid_prefix);

  for (; frag; frag = frag->next) {
   SWAP(frag->newpos, frag->oldpos);
   SWAP(frag->newlines, frag->oldlines);
  }
 }
}
