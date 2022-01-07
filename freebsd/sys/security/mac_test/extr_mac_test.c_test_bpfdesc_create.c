
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct label {int dummy; } ;
struct bpf_d {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_BPF ;
 int MAGIC_CRED ;
 int bpfdesc_create ;

__attribute__((used)) static void
test_bpfdesc_create(struct ucred *cred, struct bpf_d *d,
    struct label *dlabel)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(dlabel, MAGIC_BPF);
 COUNTER_INC(bpfdesc_create);
}
