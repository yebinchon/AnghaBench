
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_7__ {scalar_t__ w_q; int max_p; int min_th; int max_th; int flags; } ;
struct dn_fsk {scalar_t__ w_q; int max_p; int lookup_step; int lookup_weight; int min_th; int max_th; int c_1; int c_3; int c_4; int* w_q_lookup; int lookup_depth; int avg_pkt_size; int max_pkt_size; TYPE_3__ fs; void* c_2; TYPE_2__* sched; } ;
typedef int int64_t ;
struct TYPE_8__ {int red_avg_pkt_size; scalar_t__ red_lookup_depth; int red_max_pkt_size; } ;
struct TYPE_5__ {int bandwidth; } ;
struct TYPE_6__ {TYPE_1__ link; } ;


 int DN_IS_GENTLE_RED ;
 int DN_IS_RED ;
 int EINVAL ;
 int ENOSPC ;
 int M_DUMMYNET ;
 int M_NOWAIT ;
 int ND (char*) ;
 int SCALE (int) ;
 void* SCALE_MUL (int,int) ;
 void* div64 (int,scalar_t__) ;
 TYPE_4__ dn_cfg ;
 int free (int*,int ) ;
 int hz ;
 scalar_t__ malloc (int,int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
config_red(struct dn_fsk *fs)
{
 int64_t s, idle, weight, w0;
 int t, i;

 fs->w_q = fs->fs.w_q;
 fs->max_p = fs->fs.max_p;
 ND("called");

 i = fs->sched->link.bandwidth;
 s = (i <= 0) ? 0 :
  hz * dn_cfg.red_avg_pkt_size * 8 * SCALE(1) / i;

 idle = div64((s * 3) , fs->w_q);
 fs->lookup_step = div64(idle , dn_cfg.red_lookup_depth);

 if (!fs->lookup_step)
  fs->lookup_step = 1;
 w0 = weight = SCALE(1) - fs->w_q;

 for (t = fs->lookup_step; t > 1; --t)
  weight = SCALE_MUL(weight, w0);
 fs->lookup_weight = (int)(weight);


 fs->min_th = SCALE(fs->fs.min_th);
 fs->max_th = SCALE(fs->fs.max_th);

 if (fs->fs.max_th == fs->fs.min_th)
  fs->c_1 = fs->max_p;
 else
  fs->c_1 = SCALE((int64_t)(fs->max_p)) / (fs->fs.max_th - fs->fs.min_th);
 fs->c_2 = SCALE_MUL(fs->c_1, SCALE(fs->fs.min_th));

 if (fs->fs.flags & DN_IS_GENTLE_RED) {
  fs->c_3 = (SCALE(1) - fs->max_p) / fs->fs.max_th;
  fs->c_4 = SCALE(1) - 2 * fs->max_p;
 }


 if (fs->w_q_lookup) {
  free(fs->w_q_lookup, M_DUMMYNET);
  fs->w_q_lookup = ((void*)0);
 }
 if (dn_cfg.red_lookup_depth == 0) {
  printf("\ndummynet: net.inet.ip.dummynet.red_lookup_depth"
      "must be > 0\n");
  fs->fs.flags &= ~DN_IS_RED;
  fs->fs.flags &= ~DN_IS_GENTLE_RED;
  return (EINVAL);
 }
 fs->lookup_depth = dn_cfg.red_lookup_depth;
 fs->w_q_lookup = (u_int *)malloc(fs->lookup_depth * sizeof(int),
     M_DUMMYNET, M_NOWAIT);
 if (fs->w_q_lookup == ((void*)0)) {
  printf("dummynet: sorry, cannot allocate red lookup table\n");
  fs->fs.flags &= ~DN_IS_RED;
  fs->fs.flags &= ~DN_IS_GENTLE_RED;
  return(ENOSPC);
 }


 fs->w_q_lookup[0] = SCALE(1) - fs->w_q;

 for (i = 1; i < fs->lookup_depth; i++)
  fs->w_q_lookup[i] =
      SCALE_MUL(fs->w_q_lookup[i - 1], fs->lookup_weight);

 if (dn_cfg.red_avg_pkt_size < 1)
  dn_cfg.red_avg_pkt_size = 512;
 fs->avg_pkt_size = dn_cfg.red_avg_pkt_size;
 if (dn_cfg.red_max_pkt_size < 1)
  dn_cfg.red_max_pkt_size = 1500;
 fs->max_pkt_size = dn_cfg.red_max_pkt_size;
 ND("exit");
 return 0;
}
