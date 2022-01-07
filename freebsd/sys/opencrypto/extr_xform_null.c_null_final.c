
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int bzero (int *,int) ;

__attribute__((used)) static void
null_final(u_int8_t *buf, void *ctx)
{
 if (buf != (u_int8_t *) 0)
  bzero(buf, 12);
}
