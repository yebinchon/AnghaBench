
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct bpf_d {int bd_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct bpf_d*,int ) ;
 int bpfdesc_create ;

void
mac_bpfdesc_create(struct ucred *cred, struct bpf_d *d)
{

 MAC_POLICY_PERFORM_NOSLEEP(bpfdesc_create, cred, d, d->bd_label);
}
