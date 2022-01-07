
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int get_signing_key () ;
 int sign_buffer (struct strbuf*,struct strbuf*,int ) ;

__attribute__((used)) static int do_sign(struct strbuf *buffer)
{
 return sign_buffer(buffer, buffer, get_signing_key());
}
