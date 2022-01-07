
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuf {scalar_t__ len; int buf; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
netbufcmp(struct netbuf *n1, struct netbuf *n2)
{
 return ((n1->len != n2->len) || memcmp(n1->buf, n2->buf, n1->len));
}
