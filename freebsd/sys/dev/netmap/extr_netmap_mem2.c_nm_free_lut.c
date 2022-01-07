
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct lut_entry {int dummy; } ;


 int bzero (struct lut_entry*,int) ;
 int nm_os_free (struct lut_entry*) ;
 int vfree (struct lut_entry*) ;

__attribute__((used)) static void
nm_free_lut(struct lut_entry *lut, u_int objtotal)
{
 bzero(lut, sizeof(struct lut_entry) * objtotal);

 vfree(lut);



}
