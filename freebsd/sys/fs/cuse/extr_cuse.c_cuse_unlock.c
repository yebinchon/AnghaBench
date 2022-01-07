
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cuse_mtx ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
cuse_unlock(void)
{
 mtx_unlock(&cuse_mtx);
}
