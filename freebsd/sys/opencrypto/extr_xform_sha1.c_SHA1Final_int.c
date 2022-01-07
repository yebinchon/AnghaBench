
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int SHA1Final (int *,void*) ;

__attribute__((used)) static void
SHA1Final_int(u_int8_t *blk, void *ctx)
{
 SHA1Final(blk, ctx);
}
