
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_flow_queue8 {int drops; int tot_bytes; int tot_pkts; } ;
struct dn_flow_queue7 {int drops; int tot_bytes; int tot_pkts; int id; int len_bytes; int len; } ;
struct dn_flow {int drops; int tot_bytes; int tot_pkts; int fid; int len_bytes; int length; } ;
struct copy_args {int* start; } ;


 scalar_t__ is7 ;

int
dn_c_copy_q (void *_ni, void *arg)
{
 struct copy_args *a = arg;
 struct dn_flow_queue7 *fq7 = (struct dn_flow_queue7 *)*a->start;
 struct dn_flow_queue8 *fq8 = (struct dn_flow_queue8 *)*a->start;
 struct dn_flow *ni = (struct dn_flow *)_ni;
 int size = 0;



 fq7->len = ni->length;
 fq7->len_bytes = ni->len_bytes;
 fq7->id = ni->fid;

 if (is7) {
  size = sizeof(struct dn_flow_queue7);
  fq7->tot_pkts = ni->tot_pkts;
  fq7->tot_bytes = ni->tot_bytes;
  fq7->drops = ni->drops;
 } else {
  size = sizeof(struct dn_flow_queue8);
  fq8->tot_pkts = ni->tot_pkts;
  fq8->tot_bytes = ni->tot_bytes;
  fq8->drops = ni->drops;
 }

 *a->start += size;
 return 0;
}
