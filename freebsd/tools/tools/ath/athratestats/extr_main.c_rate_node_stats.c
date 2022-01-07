
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sample_node {int dummy; } ;
struct ether_addr {int dummy; } ;
struct TYPE_2__ {scalar_t__ buf; } ;
struct ath_ratestats {TYPE_1__ re; } ;
struct ath_rateioctl_tlv {int tlv_id; int tlv_len; } ;
struct ath_rateioctl_rt {int dummy; } ;


 int ATH_RATE_TLV_RATETABLE ;
 int ATH_RATE_TLV_SAMPLENODE ;
 int ath_sample_stats (struct ath_ratestats*,struct ath_rateioctl_rt*,struct sample_node*) ;
 int exit (int) ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;

__attribute__((used)) static int
rate_node_stats(struct ath_ratestats *r, struct ether_addr *e)
{
 struct ath_rateioctl_tlv *av;
 struct sample_node *sn = ((void*)0);
 struct ath_rateioctl_rt *rt = ((void*)0);
 int error = 0;
 uint8_t *buf = (uint8_t *) r->re.buf;




 av = (struct ath_rateioctl_tlv *) buf;
 if (av->tlv_id != ATH_RATE_TLV_RATETABLE) {
  fprintf(stderr, "unexpected rate control TLV (got 0x%x, "
      "expected 0x%x\n",
      av->tlv_id,
      ATH_RATE_TLV_RATETABLE);
  exit(127);
 }
 if (av->tlv_len != sizeof(struct ath_rateioctl_rt)) {
  fprintf(stderr, "unexpected TLV len (got %d bytes, "
      "expected %d bytes\n",
      av->tlv_len,
      (int) sizeof(struct ath_rateioctl_rt));
  exit(127);
 }
 rt = (void *) (buf + sizeof(struct ath_rateioctl_tlv));


 av = (void *) (buf + sizeof(struct ath_rateioctl_tlv) +
     sizeof(struct ath_rateioctl_rt));
 if (av->tlv_id != ATH_RATE_TLV_SAMPLENODE) {
  fprintf(stderr, "unexpected rate control TLV (got 0x%x, "
      "expected 0x%x\n",
      av->tlv_id,
      ATH_RATE_TLV_SAMPLENODE);
  exit(127);
 }
 if (av->tlv_len != sizeof(struct sample_node)) {
  fprintf(stderr, "unexpected TLV len (got %d bytes, "
      "expected %d bytes\n",
      av->tlv_len,
      (int) sizeof(struct sample_node));
  exit(127);
 }
 sn = (void *) (buf + sizeof(struct ath_rateioctl_tlv) +
     sizeof(struct ath_rateioctl_rt) +
     sizeof(struct ath_rateioctl_tlv));

 ath_sample_stats(r, rt, sn);

 return (0);
}
