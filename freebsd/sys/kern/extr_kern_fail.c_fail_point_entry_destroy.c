
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fail_point_entry {int dummy; } ;


 int fp_free (struct fail_point_entry*) ;

__attribute__((used)) static void
fail_point_entry_destroy(struct fail_point_entry *fp_entry)
{

 fp_free(fp_entry);
}
