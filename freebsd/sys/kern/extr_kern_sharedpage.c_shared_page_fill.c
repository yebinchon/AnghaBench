
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int shared_page_alloc_locked (int,int) ;
 int shared_page_alloc_sx ;
 int shared_page_write (int,int,void const*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
shared_page_fill(int size, int align, const void *data)
{
 int res;

 sx_xlock(&shared_page_alloc_sx);
 res = shared_page_alloc_locked(size, align);
 if (res != -1)
  shared_page_write(res, size, data);
 sx_xunlock(&shared_page_alloc_sx);
 return (res);
}
