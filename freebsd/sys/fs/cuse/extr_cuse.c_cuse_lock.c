
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cuse_mtx ;
 int mtx_lock (int *) ;

__attribute__((used)) static void
cuse_lock(void)
{
 mtx_lock(&cuse_mtx);
}
