
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;
struct ifnet {int dummy; } ;
struct bpf_d {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_BPF ;
 int MAGIC_IFNET ;
 int bpfdesc_check_receive ;

__attribute__((used)) static int
test_bpfdesc_check_receive(struct bpf_d *d, struct label *dlabel,
    struct ifnet *ifp, struct label *ifplabel)
{

 LABEL_CHECK(dlabel, MAGIC_BPF);
 LABEL_CHECK(ifplabel, MAGIC_IFNET);
 COUNTER_INC(bpfdesc_check_receive);

 return (0);
}
