
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netobj {int n_len; int n_bytes; } ;
struct malloc_type {int dummy; } ;


 int nlm_make_netobj (struct netobj*,int ,int ,struct malloc_type*) ;

void
nlm_copy_netobj(struct netobj *dst, struct netobj *src,
    struct malloc_type *type)
{

 nlm_make_netobj(dst, src->n_bytes, src->n_len, type);
}
