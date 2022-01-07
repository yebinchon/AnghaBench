
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plut_entry {int dummy; } ;


 int vfree (struct plut_entry*) ;

__attribute__((used)) static void
nm_free_plut(struct plut_entry * lut)
{
 vfree(lut);
}
