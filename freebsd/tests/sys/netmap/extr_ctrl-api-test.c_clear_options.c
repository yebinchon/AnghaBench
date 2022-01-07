
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int * nr_opt; } ;



__attribute__((used)) static void
clear_options(struct TestContext *ctx)
{
 ctx->nr_opt = ((void*)0);
}
