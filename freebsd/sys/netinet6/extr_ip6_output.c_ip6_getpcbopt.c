
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int dummy; } ;
struct ip6_pktopts {int ip6po_tclass; int ip6po_minmtu; int ip6po_flags; int ip6po_prefer_tempaddr; int ip6po_pktinfo; } ;
struct inpcb {struct ip6_pktopts* in6p_outputopts; } ;
struct in6_pktinfo {int ipi6_addr; } ;
typedef int on ;
typedef int null_pktinfo ;


 int ENOPROTOOPT ;
 int GET_PKTOPT_EXT_HDR (int ) ;
 int GET_PKTOPT_SOCKADDR (int ) ;
 int INP_RLOCK (struct inpcb*) ;
 int INP_RUNLOCK (struct inpcb*) ;
 int IP6PO_DONTFRAG ;
 int IP6PO_MINMTU_MCASTONLY ;
 int IP6PO_TEMPADDR_SYSTEM ;
 int M_TEMP ;
 int bcopy (int ,struct in6_pktinfo*,int) ;
 int bzero (struct in6_pktinfo*,int) ;
 int free (void*,int ) ;
 int in6_clearscope (int *) ;
 int ip6po_dest1 ;
 int ip6po_dest2 ;
 int ip6po_hbh ;
 int ip6po_nexthop ;
 int ip6po_rthdr ;
 int panic (char*) ;
 int sooptcopyout (struct sockopt*,void*,int) ;

__attribute__((used)) static int
ip6_getpcbopt(struct inpcb *inp, int optname, struct sockopt *sopt)
{
 void *optdata = ((void*)0);
 bool malloc_optdata = 0;
 int optdatalen = 0;
 int error = 0;
 struct in6_pktinfo null_pktinfo;
 int deftclass = 0, on;
 int defminmtu = IP6PO_MINMTU_MCASTONLY;
 int defpreftemp = IP6PO_TEMPADDR_SYSTEM;
 struct ip6_pktopts *pktopt;

 INP_RLOCK(inp);
 pktopt = inp->in6p_outputopts;

 switch (optname) {
 case 133:
  optdata = (void *)&null_pktinfo;
  if (pktopt && pktopt->ip6po_pktinfo) {
   bcopy(pktopt->ip6po_pktinfo, &null_pktinfo,
       sizeof(null_pktinfo));
   in6_clearscope(&null_pktinfo.ipi6_addr);
  } else {

   bzero(&null_pktinfo, sizeof(null_pktinfo));
  }
  optdatalen = sizeof(struct in6_pktinfo);
  break;
 case 129:
  if (pktopt && pktopt->ip6po_tclass >= 0)
   deftclass = pktopt->ip6po_tclass;
  optdata = (void *)&deftclass;
  optdatalen = sizeof(int);
  break;
 case 135:
  GET_PKTOPT_EXT_HDR(ip6po_hbh);
  break;
 case 131:
  GET_PKTOPT_EXT_HDR(ip6po_rthdr);
  break;
 case 130:
  GET_PKTOPT_EXT_HDR(ip6po_dest1);
  break;
 case 136:
  GET_PKTOPT_EXT_HDR(ip6po_dest2);
  break;
 case 134:
  GET_PKTOPT_SOCKADDR(ip6po_nexthop);
  break;
 case 128:
  if (pktopt)
   defminmtu = pktopt->ip6po_minmtu;
  optdata = (void *)&defminmtu;
  optdatalen = sizeof(int);
  break;
 case 137:
  if (pktopt && ((pktopt->ip6po_flags) & IP6PO_DONTFRAG))
   on = 1;
  else
   on = 0;
  optdata = (void *)&on;
  optdatalen = sizeof(on);
  break;
 case 132:
  if (pktopt)
   defpreftemp = pktopt->ip6po_prefer_tempaddr;
  optdata = (void *)&defpreftemp;
  optdatalen = sizeof(int);
  break;
 default:



  INP_RUNLOCK(inp);
  return (ENOPROTOOPT);
 }
 INP_RUNLOCK(inp);

 error = sooptcopyout(sopt, optdata, optdatalen);
 if (malloc_optdata)
  free(optdata, M_TEMP);

 return (error);
}
