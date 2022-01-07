
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuf {int dummy; } ;


 scalar_t__ FALSE ;
 struct netbuf* calloc (int,int) ;
 int free (struct netbuf*) ;
 scalar_t__ netbuf_copybuf (struct netbuf*,struct netbuf*) ;

__attribute__((used)) static struct netbuf *
netbufdup(struct netbuf *ap)
{
 struct netbuf *np;

 if ((np = calloc(1, sizeof(struct netbuf))) == ((void*)0))
  return (((void*)0));
 if (netbuf_copybuf(np, ap) == FALSE) {
  free(np);
  return (((void*)0));
 }
 return (np);
}
