
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int MSGBUF_NAME ;
 int expect (char*,int,int ,int ) ;
 int sysctlbyname (int ,int *,size_t*,int *,int ) ;

void
priv_msgbuf_unprivok(int asroot, int injail, struct test *test)
{
 size_t len;
 int error;

 error = sysctlbyname(MSGBUF_NAME, ((void*)0), &len, ((void*)0), 0);
 if (asroot && injail)
  expect("priv_msgbuf_unprivok(asroot, injail)", error, 0, 0);
 if (asroot && !injail)
  expect("priv_msgbuf_unprivok(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_msgbuf_unprivok(!asroot, injail)", error, 0, 0);
 if (!asroot && !injail)
  expect("priv_msgbuf_unprivok(!asroot, !injail)", error, 0, 0);
}
