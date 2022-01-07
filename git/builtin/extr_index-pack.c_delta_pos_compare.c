
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_delta_entry {int obj_no; } ;



__attribute__((used)) static int delta_pos_compare(const void *_a, const void *_b)
{
 struct ref_delta_entry *a = *(struct ref_delta_entry **)_a;
 struct ref_delta_entry *b = *(struct ref_delta_entry **)_b;
 return a->obj_no - b->obj_no;
}
