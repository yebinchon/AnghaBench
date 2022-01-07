
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int nerror; } ;


 int M_WAITOK ;
 int copyin (void*,void*,size_t) ;
 int g_free (void*) ;
 void* g_malloc (size_t,int ) ;

__attribute__((used)) static void *
geom_alloc_copyin(struct gctl_req *req, void *uaddr, size_t len)
{
 void *ptr;

 ptr = g_malloc(len, M_WAITOK);
 req->nerror = copyin(uaddr, ptr, len);
 if (!req->nerror)
  return (ptr);
 g_free(ptr);
 return (((void*)0));
}
