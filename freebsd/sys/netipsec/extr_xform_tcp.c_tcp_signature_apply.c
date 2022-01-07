
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int MD5Update (void*,int *,int ) ;

__attribute__((used)) static int
tcp_signature_apply(void *fstate, void *data, u_int len)
{

 MD5Update(fstate, (u_char *)data, len);
 return (0);
}
