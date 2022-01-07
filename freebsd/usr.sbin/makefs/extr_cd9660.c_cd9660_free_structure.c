
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cn_children; } ;
typedef TYPE_1__ cd9660node ;


 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int cn_next_child ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
cd9660_free_structure(cd9660node *root)
{
 cd9660node *cn;

 while ((cn = TAILQ_FIRST(&root->cn_children)) != ((void*)0)) {
  TAILQ_REMOVE(&root->cn_children, cn, cn_next_child);
  cd9660_free_structure(cn);
 }
 free(root);
}
