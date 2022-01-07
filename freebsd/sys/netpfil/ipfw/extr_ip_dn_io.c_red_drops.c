
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t u_int ;
struct TYPE_4__ {scalar_t__ len_bytes; scalar_t__ length; } ;
struct dn_queue {int avg; int q_time; int count; int random; TYPE_1__ ni; struct dn_fsk* fs; } ;
struct TYPE_5__ {int flags; } ;
struct dn_fsk {size_t lookup_depth; int* w_q_lookup; scalar_t__ min_th; scalar_t__ max_th; void* c_4; void* c_2; int max_pkt_size; TYPE_2__ fs; scalar_t__ c_1; scalar_t__ c_3; int lookup_step; scalar_t__ w_q; } ;
typedef int int64_t ;
struct TYPE_6__ {int curr_time; } ;


 int DN_IS_ECN ;
 int DN_IS_GENTLE_RED ;
 int DN_QSIZE_BYTES ;
 int SCALE (int) ;
 void* SCALE_MUL (int,int) ;
 void* div64 (int,int ) ;
 TYPE_3__ dn_cfg ;
 int random () ;

__attribute__((used)) static int
red_drops (struct dn_queue *q, int len)
{
 struct dn_fsk *fs = q->fs;
 int64_t p_b = 0;


 uint32_t q_size = (fs->fs.flags & DN_QSIZE_BYTES) ?
     q->ni.len_bytes : q->ni.length;


 if (q_size != 0) {

  int diff = SCALE(q_size) - q->avg;
  int64_t v = SCALE_MUL((int64_t)diff, (int64_t)fs->w_q);

  q->avg += (int)v;
 } else {







  if (q->avg) {
   u_int t = div64((dn_cfg.curr_time - q->q_time), fs->lookup_step);

   q->avg = (t < fs->lookup_depth) ?
       SCALE_MUL(q->avg, fs->w_q_lookup[t]) : 0;
  }
 }


 if (q->avg < fs->min_th) {
  q->count = -1;
  return (0);
 }
 if (q->avg >= fs->max_th) {
  if (fs->fs.flags & DN_IS_ECN)
   return (1);
  if (fs->fs.flags & DN_IS_GENTLE_RED) {







   p_b = SCALE_MUL((int64_t)fs->c_3, (int64_t)q->avg) -
       fs->c_4;
  } else {
   q->count = -1;
   return (1);
  }
 } else if (q->avg > fs->min_th) {
  if (fs->fs.flags & DN_IS_ECN)
   return (1);






  p_b = SCALE_MUL((int64_t)fs->c_1, (int64_t)q->avg) - fs->c_2;
 }

 if (fs->fs.flags & DN_QSIZE_BYTES)
  p_b = div64((p_b * len) , fs->max_pkt_size);
 if (++q->count == 0)
  q->random = random() & 0xffff;
 else {




  if (SCALE_MUL(p_b, SCALE((int64_t)q->count)) > q->random) {
   q->count = 0;

   q->random = random() & 0xffff;
   return (1);
  }
 }


 return (0);

}
