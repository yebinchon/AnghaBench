
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;


 int RMD160Update (void*,int const*,int ) ;

__attribute__((used)) static int
RMD160Update_int(void *ctx, const u_int8_t *buf, u_int16_t len)
{
 RMD160Update(ctx, buf, len);
 return 0;
}
