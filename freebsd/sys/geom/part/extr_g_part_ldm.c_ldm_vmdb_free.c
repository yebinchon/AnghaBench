
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldm_xvblk {struct ldm_xvblk* data; } ;
struct ldm_vblk {struct ldm_vblk* data; } ;
struct ldm_db {int vblks; int xvblks; } ;


 int LIST_EMPTY (int *) ;
 struct ldm_xvblk* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct ldm_xvblk*,int ) ;
 int entry ;
 int g_free (struct ldm_xvblk*) ;

__attribute__((used)) static void
ldm_vmdb_free(struct ldm_db *db)
{
 struct ldm_vblk *vblk;
 struct ldm_xvblk *xvblk;

 while (!LIST_EMPTY(&db->xvblks)) {
  xvblk = LIST_FIRST(&db->xvblks);
  LIST_REMOVE(xvblk, entry);
  g_free(xvblk->data);
  g_free(xvblk);
 }
 while (!LIST_EMPTY(&db->vblks)) {
  vblk = LIST_FIRST(&db->vblks);
  LIST_REMOVE(vblk, entry);
  g_free(vblk);
 }
}
