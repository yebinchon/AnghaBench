
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuf {struct netbuf* buf; } ;


 int free (struct netbuf*) ;

__attribute__((used)) static void
netbuffree(struct netbuf *ap)
{

 if (ap == ((void*)0))
  return;
 free(ap->buf);
 ap->buf = ((void*)0);
 free(ap);
}
