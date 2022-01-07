
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtap_medium {int open; int md_mtx; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
medium_open(struct wtap_medium *md)
{

 mtx_lock(&md->md_mtx);
 md->open = 1;
 mtx_unlock(&md->md_mtx);
}
