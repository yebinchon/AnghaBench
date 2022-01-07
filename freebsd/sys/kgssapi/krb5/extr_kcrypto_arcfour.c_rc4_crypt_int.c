
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int rc4_crypt (void*,void*,void*,int ) ;

__attribute__((used)) static int
rc4_crypt_int(void *rs, void *buf, u_int len)
{

 rc4_crypt(rs, buf, buf, len);
 return (0);
}
