
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int MD5Update (void*,void*,int ) ;

__attribute__((used)) static int
MD5Update_int(void *ctx, void *buf, u_int len)
{

 MD5Update(ctx, buf, len);
 return (0);
}
