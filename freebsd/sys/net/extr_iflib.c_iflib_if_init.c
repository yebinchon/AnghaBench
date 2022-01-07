
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* if_ctx_t ;


 int CTX_LOCK (void*) ;
 int CTX_UNLOCK (void*) ;
 int iflib_if_init_locked (void*) ;

__attribute__((used)) static void
iflib_if_init(void *arg)
{
 if_ctx_t ctx = arg;

 CTX_LOCK(ctx);
 iflib_if_init_locked(ctx);
 CTX_UNLOCK(ctx);
}
