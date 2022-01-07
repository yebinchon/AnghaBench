
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packed_git {int dummy; } ;
struct TYPE_3__ {int hash; } ;
struct object {TYPE_1__ oid; } ;
struct in_pack {size_t nr; TYPE_2__* array; } ;
struct TYPE_4__ {struct object* object; int offset; } ;


 int find_pack_entry_one (int ,struct packed_git*) ;

__attribute__((used)) static void mark_in_pack_object(struct object *object, struct packed_git *p, struct in_pack *in_pack)
{
 in_pack->array[in_pack->nr].offset = find_pack_entry_one(object->oid.hash, p);
 in_pack->array[in_pack->nr].object = object;
 in_pack->nr++;
}
