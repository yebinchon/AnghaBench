
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct bpf_d {int dummy; } ;


 struct mac_biba* SLOT (struct label*) ;
 int biba_copy_effective (struct mac_biba*,struct mac_biba*) ;

__attribute__((used)) static void
biba_bpfdesc_create(struct ucred *cred, struct bpf_d *d,
    struct label *dlabel)
{
 struct mac_biba *source, *dest;

 source = SLOT(cred->cr_label);
 dest = SLOT(dlabel);

 biba_copy_effective(source, dest);
}
