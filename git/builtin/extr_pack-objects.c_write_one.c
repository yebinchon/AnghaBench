
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; int oid; } ;
struct object_entry {TYPE_1__ idx; scalar_t__ preferred_base; } ;
struct hashfile {int dummy; } ;
typedef int off_t ;
typedef enum write_one_status { ____Placeholder_write_one_status } write_one_status ;


 struct object_entry* DELTA (struct object_entry*) ;
 int SET_DELTA (struct object_entry*,int *) ;


 int WRITE_ONE_SKIP ;
 int WRITE_ONE_WRITTEN ;
 int _ (char*) ;
 int die (int ) ;
 int nr_written ;
 int oid_to_hex (int *) ;
 scalar_t__ signed_add_overflows (int,int) ;
 int warning (int ,int ) ;
 int write_object (struct hashfile*,struct object_entry*,int) ;
 TYPE_1__** written_list ;

__attribute__((used)) static enum write_one_status write_one(struct hashfile *f,
           struct object_entry *e,
           off_t *offset)
{
 off_t size;
 int recursing;






 recursing = (e->idx.offset == 1);
 if (recursing) {
  warning(_("recursive delta detected for object %s"),
   oid_to_hex(&e->idx.oid));
  return 128;
 } else if (e->idx.offset || e->preferred_base) {

  return WRITE_ONE_SKIP;
 }


 if (DELTA(e)) {
  e->idx.offset = 1;
  switch (write_one(f, DELTA(e), offset)) {
  case 128:

   SET_DELTA(e, ((void*)0));
   break;
  default:
   break;
  case 129:
   e->idx.offset = recursing;
   return 129;
  }
 }

 e->idx.offset = *offset;
 size = write_object(f, e, *offset);
 if (!size) {
  e->idx.offset = recursing;
  return 129;
 }
 written_list[nr_written++] = &e->idx;


 if (signed_add_overflows(*offset, size))
  die(_("pack too large for current definition of off_t"));
 *offset += size;
 return WRITE_ONE_WRITTEN;
}
