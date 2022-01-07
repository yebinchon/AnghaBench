
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
dtlb_missstore(struct counters *cpu, int pos)
{




        int ret;
        struct counters *dtsb_m, *dtsb_d;
        struct counters *unhalt;
        double con, un, d1, d2, res;

        con = 7.0;
        unhalt = find_counter(cpu, "CPU_CLK_UNHALTED.THREAD_P");
        dtsb_m = find_counter(cpu, "DTLB_STORE_MISSES.STLB_HIT");
        dtsb_d = find_counter(cpu, "DTLB_STORE_MISSES.WALK_DURATION");
        if (pos != -1) {
                d1 = dtsb_m->vals[pos] * 1.0;
                d2 = dtsb_d->vals[pos] * 1.0;
                un = unhalt->vals[pos] * 1.0;
        } else {
                d1 = dtsb_m->sum * 1.0;
                d2 = dtsb_d->sum * 1.0;
                un = unhalt->sum * 1.0;
        }
        res = ((d1 * con) + d2)/un;
        ret = printf("%1.3f", res);
        return(ret);
}
