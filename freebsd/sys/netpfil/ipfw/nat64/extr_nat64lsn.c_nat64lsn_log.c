
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pfloghdr {char* ruleset; int ifname; void* subrulenr; void* rulenr; int dir; int action; int af; int length; } ;
struct nat64lsn_state {int ip_src; int aport; int proto; int ip_dst; } ;
struct mbuf {int dummy; } ;
typedef int sa_family_t ;


 int PFLOG_HDRLEN ;
 int PFLOG_REAL_HDRLEN ;
 int PF_IN ;
 int PF_NAT ;
 void* htonl (int) ;
 int ipfw_bpf_mtap2 (struct pfloghdr*,int ,struct mbuf*) ;
 int memset (struct pfloghdr*,int ,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
nat64lsn_log(struct pfloghdr *plog, struct mbuf *m, sa_family_t family,
    struct nat64lsn_state *state)
{

 memset(plog, 0, sizeof(*plog));
 plog->length = PFLOG_REAL_HDRLEN;
 plog->af = family;
 plog->action = PF_NAT;
 plog->dir = PF_IN;
 plog->rulenr = htonl(state->ip_src);
 plog->subrulenr = htonl((uint32_t)(state->aport << 16) |
     (state->proto << 8) | (state->ip_dst & 0xff));
 plog->ruleset[0] = '\0';
 strlcpy(plog->ifname, "NAT64LSN", sizeof(plog->ifname));
 ipfw_bpf_mtap2(plog, PFLOG_HDRLEN, m);
}
