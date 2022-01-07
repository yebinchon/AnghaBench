
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct bpf_d {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_BPF ;
 int MAGIC_MBUF ;
 int bpfdesc_create_mbuf ;

__attribute__((used)) static void
test_bpfdesc_create_mbuf(struct bpf_d *d, struct label *dlabel,
    struct mbuf *m, struct label *mlabel)
{

 LABEL_CHECK(dlabel, MAGIC_BPF);
 LABEL_CHECK(mlabel, MAGIC_MBUF);
 COUNTER_INC(bpfdesc_create_mbuf);
}
