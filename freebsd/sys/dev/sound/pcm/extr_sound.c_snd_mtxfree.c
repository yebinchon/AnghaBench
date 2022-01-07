
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;


 int M_DEVBUF ;
 int free (struct mtx*,int ) ;
 int mtx_destroy (struct mtx*) ;

void
snd_mtxfree(void *m)
{
 struct mtx *mtx = m;

 mtx_destroy(mtx);
 free(mtx, M_DEVBUF);
}
