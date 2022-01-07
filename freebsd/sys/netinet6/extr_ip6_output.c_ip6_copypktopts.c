
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_pktopts {int dummy; } ;


 int M_IP6OPT ;
 int copypktopts (struct ip6_pktopts*,struct ip6_pktopts*,int) ;
 int free (struct ip6_pktopts*,int ) ;
 int ip6_initpktopts (struct ip6_pktopts*) ;
 struct ip6_pktopts* malloc (int,int ,int) ;

struct ip6_pktopts *
ip6_copypktopts(struct ip6_pktopts *src, int canwait)
{
 int error;
 struct ip6_pktopts *dst;

 dst = malloc(sizeof(*dst), M_IP6OPT, canwait);
 if (dst == ((void*)0))
  return (((void*)0));
 ip6_initpktopts(dst);

 if ((error = copypktopts(dst, src, canwait)) != 0) {
  free(dst, M_IP6OPT);
  return (((void*)0));
 }

 return (dst);
}
