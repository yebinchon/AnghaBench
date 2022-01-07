
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockproto {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;


 void raw_input_ext (struct mbuf*,struct sockproto*,struct sockaddr*,int *) ;

void
raw_input(struct mbuf *m0, struct sockproto *proto, struct sockaddr *src)
{

 return (raw_input_ext(m0, proto, src, ((void*)0)));
}
