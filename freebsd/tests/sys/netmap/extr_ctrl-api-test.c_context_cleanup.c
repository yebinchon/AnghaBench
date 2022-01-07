
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int fd; int * csb; } ;


 int close (int) ;
 int free (int *) ;

__attribute__((used)) static void
context_cleanup(struct TestContext *ctx)
{
 if (ctx->csb) {
  free(ctx->csb);
  ctx->csb = ((void*)0);
 }

 close(ctx->fd);
 ctx->fd = -1;
}
