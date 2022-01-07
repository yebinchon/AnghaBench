
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ifnet {int dummy; } ;
struct bpf_if {int dummy; } ;


 int dead_bpf_if ;

void
bpfattach2(struct ifnet *ifp, u_int dlt, u_int hdrlen, struct bpf_if **driverp)
{

 *driverp = (struct bpf_if *)&dead_bpf_if;
}
