
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtap_medium {int md_mtx; scalar_t__ open; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
medium_close(struct wtap_medium *md)
{

 mtx_lock(&md->md_mtx);
 md->open = 0;
 mtx_unlock(&md->md_mtx);
}
