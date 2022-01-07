
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfloghdr {int af; int dir; } ;
struct mbuf {int dummy; } ;
typedef int sa_family_t ;


 int PFLOG_HDRLEN ;
 int PF_OUT ;
 int ipfw_bpf_mtap2 (struct pfloghdr*,int ,struct mbuf*) ;

__attribute__((used)) static void
nat64_log(struct pfloghdr *logdata, struct mbuf *m, sa_family_t family)
{

 logdata->dir = PF_OUT;
 logdata->af = family;
 ipfw_bpf_mtap2(logdata, PFLOG_HDRLEN, m);
}
