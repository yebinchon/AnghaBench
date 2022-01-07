
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netobj {size_t n_len; int n_bytes; } ;
struct malloc_type {int dummy; } ;
typedef int caddr_t ;


 int M_WAITOK ;
 int malloc (size_t,struct malloc_type*,int ) ;
 int memcpy (int ,int ,size_t) ;

void
nlm_make_netobj(struct netobj *dst, caddr_t src, size_t srcsize,
    struct malloc_type *type)
{

 dst->n_len = srcsize;
 dst->n_bytes = malloc(srcsize, type, M_WAITOK);
 memcpy(dst->n_bytes, src, srcsize);
}
