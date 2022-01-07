
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;
typedef int SHA1_CTX ;


 int sha1_result (int *,int ) ;

__attribute__((used)) static void
SHA1_Final(unsigned char *buf, void *ctx)
{

 sha1_result((SHA1_CTX *) ctx, (caddr_t) buf);
}
