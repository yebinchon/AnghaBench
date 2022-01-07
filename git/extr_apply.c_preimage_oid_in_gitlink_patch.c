
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct patch {char const* old_oid_prefix; struct fragment* fragments; } ;
struct object_id {int dummy; } ;
struct fragment {int oldpos; int oldlines; int size; int patch; int next; } ;
typedef int heading ;
struct TYPE_2__ {int hexsz; } ;


 int get_oid_hex (char*,struct object_id*) ;
 char* memchr (int ,char,int ) ;
 scalar_t__ starts_with (char*,char const*) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int preimage_oid_in_gitlink_patch(struct patch *p, struct object_id *oid)
{
 struct fragment *hunk = p->fragments;
 static const char heading[] = "-Subproject commit ";
 char *preimage;

 if (
     hunk && !hunk->next &&

     hunk->oldpos == 1 && hunk->oldlines == 1 &&

     (preimage = memchr(hunk->patch, '\n', hunk->size)) != ((void*)0) &&
     starts_with(++preimage, heading) &&

     !get_oid_hex(preimage + sizeof(heading) - 1, oid) &&
     preimage[sizeof(heading) + the_hash_algo->hexsz - 1] == '\n' &&

     starts_with(preimage + sizeof(heading) - 1, p->old_oid_prefix))
  return 0;


 return get_oid_hex(p->old_oid_prefix, oid);
}
