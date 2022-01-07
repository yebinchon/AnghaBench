
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcbpolicy {int dummy; } ;
struct inpcb {int * inp_sp; } ;


 int ENOBUFS ;
 int IPSEC_ASSERT (int ,char*) ;
 int M_IPSEC_INPCB ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * malloc (int,int ,int) ;

int
ipsec_init_pcbpolicy(struct inpcb *inp)
{

 IPSEC_ASSERT(inp != ((void*)0), ("null inp"));
 IPSEC_ASSERT(inp->inp_sp == ((void*)0), ("inp_sp already initialized"));

 inp->inp_sp = malloc(sizeof(struct inpcbpolicy), M_IPSEC_INPCB,
     M_NOWAIT | M_ZERO);
 if (inp->inp_sp == ((void*)0))
  return (ENOBUFS);
 return (0);
}
