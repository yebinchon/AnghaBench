
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_hold_token {char const* who; } ;


 int LIST_INSERT_HEAD (int *,struct root_hold_token*,int ) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TSHOLD (char*) ;
 int list ;
 struct root_hold_token* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int root_holds ;
 int root_holds_mtx ;

struct root_hold_token *
root_mount_hold(const char *identifier)
{
 struct root_hold_token *h;

 h = malloc(sizeof *h, M_DEVBUF, M_ZERO | M_WAITOK);
 h->who = identifier;
 mtx_lock(&root_holds_mtx);
 TSHOLD("root mount");
 LIST_INSERT_HEAD(&root_holds, h, list);
 mtx_unlock(&root_holds_mtx);
 return (h);
}
