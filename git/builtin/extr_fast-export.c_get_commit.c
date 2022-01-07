
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const type; int oid; } ;
struct tag {scalar_t__ tagged; TYPE_1__ object; } ;
struct rev_cmdline_entry {int name; TYPE_2__* item; } ;
struct commit {int dummy; } ;
struct TYPE_6__ {struct tag* util; } ;
struct TYPE_5__ {int type; } ;




 int die (char*,int ) ;
 int parse_object (int ,int *) ;
 TYPE_3__* string_list_append (int *,char*) ;
 int tag_refs ;
 int the_repository ;

__attribute__((used)) static struct commit *get_commit(struct rev_cmdline_entry *e, char *full_name)
{
 switch (e->item->type) {
 case 129:
  return (struct commit *)e->item;
 case 128: {
  struct tag *tag = (struct tag *)e->item;


  while (tag && tag->object.type == 128) {
   parse_object(the_repository, &tag->object.oid);
   string_list_append(&tag_refs, full_name)->util = tag;
   tag = (struct tag *)tag->tagged;
  }
  if (!tag)
   die("Tag %s points nowhere?", e->name);
  return (struct commit *)tag;
  break;
 }
 default:
  return ((void*)0);
 }
}
