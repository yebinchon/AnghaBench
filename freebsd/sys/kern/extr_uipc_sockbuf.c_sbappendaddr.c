
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;


 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int sbappendaddr_locked (struct sockbuf*,struct sockaddr const*,struct mbuf*,struct mbuf*) ;

int
sbappendaddr(struct sockbuf *sb, const struct sockaddr *asa,
    struct mbuf *m0, struct mbuf *control)
{
 int retval;

 SOCKBUF_LOCK(sb);
 retval = sbappendaddr_locked(sb, asa, m0, control);
 SOCKBUF_UNLOCK(sb);
 return (retval);
}
