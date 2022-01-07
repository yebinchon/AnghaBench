
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_hold_token {int dummy; } ;


 int LIST_REMOVE (struct root_hold_token*,int ) ;
 int M_DEVBUF ;
 int TSRELEASE (char*) ;
 int free (struct root_hold_token*,int ) ;
 int list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int root_holds ;
 int root_holds_mtx ;
 int wakeup (int *) ;

void
root_mount_rel(struct root_hold_token *h)
{

 if (h == ((void*)0))
  return;

 mtx_lock(&root_holds_mtx);
 LIST_REMOVE(h, list);
 TSRELEASE("root mount");
 wakeup(&root_holds);
 mtx_unlock(&root_holds_mtx);
 free(h, M_DEVBUF);
}
