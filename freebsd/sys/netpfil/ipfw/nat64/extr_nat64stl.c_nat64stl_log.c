
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pfloghdr {char* ruleset; int ifname; void* subrulenr; void* rulenr; int dir; int action; int af; int length; } ;
struct mbuf {int dummy; } ;
typedef int sa_family_t ;


 int PFLOG_HDRLEN ;
 int PFLOG_REAL_HDRLEN ;
 int PF_IN ;
 int PF_NAT ;
 void* htonl (scalar_t__) ;
 int ipfw_bpf_mtap2 (struct pfloghdr*,int ,struct mbuf*) ;
 int memset (struct pfloghdr*,int ,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
nat64stl_log(struct pfloghdr *plog, struct mbuf *m, sa_family_t family,
    uint32_t kidx)
{
 static uint32_t pktid = 0;

 memset(plog, 0, sizeof(*plog));
 plog->length = PFLOG_REAL_HDRLEN;
 plog->af = family;
 plog->action = PF_NAT;
 plog->dir = PF_IN;
 plog->rulenr = htonl(kidx);
 pktid++;
 plog->subrulenr = htonl(pktid);
 plog->ruleset[0] = '\0';
 strlcpy(plog->ifname, "NAT64STL", sizeof(plog->ifname));
 ipfw_bpf_mtap2(plog, PFLOG_HDRLEN, m);
}
