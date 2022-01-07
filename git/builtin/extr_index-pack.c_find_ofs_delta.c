
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ofs_delta_entry {size_t obj_no; int offset; } ;
typedef int off_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {int type; } ;


 int compare_ofs_delta_bases (int const,int ,int,int ) ;
 int nr_ofs_deltas ;
 TYPE_1__* objects ;
 struct ofs_delta_entry* ofs_deltas ;

__attribute__((used)) static int find_ofs_delta(const off_t offset, enum object_type type)
{
 int first = 0, last = nr_ofs_deltas;

 while (first < last) {
  int next = first + (last - first) / 2;
  struct ofs_delta_entry *delta = &ofs_deltas[next];
  int cmp;

  cmp = compare_ofs_delta_bases(offset, delta->offset,
           type, objects[delta->obj_no].type);
  if (!cmp)
   return next;
  if (cmp < 0) {
   last = next;
   continue;
  }
  first = next+1;
 }
 return -first-1;
}
