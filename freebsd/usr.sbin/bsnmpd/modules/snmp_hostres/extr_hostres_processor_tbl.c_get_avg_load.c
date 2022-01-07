
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct processor_entry {int sample_cnt; int cur_sample_idx; int cpu_no; scalar_t__** states; } ;


 size_t CPUSTATES ;
 int HRDBG (char*,int ,long,double) ;
 int MAX_CPU_SAMPLES ;
 int assert (int ) ;

__attribute__((used)) static int
get_avg_load(struct processor_entry *e)
{
 u_int i, oldest;
 long delta = 0;
 double usage = 0.0;

 assert(e != ((void*)0));


 if (e->sample_cnt <= 1)
  return (0);


 if (e->sample_cnt == MAX_CPU_SAMPLES)
  oldest = (e->cur_sample_idx + 1) % MAX_CPU_SAMPLES;
 else
  oldest = 0;


 for (i = 0; i < CPUSTATES; i++) {
  delta += e->states[e->cur_sample_idx][i];
  delta -= e->states[oldest][i];
 }
 if (delta == 0)
  return 0;



 usage = (double)(e->states[e->cur_sample_idx][CPUSTATES-1] -
     e->states[oldest][CPUSTATES-1]) / delta;
 usage = 100 - (usage * 100);
 HRDBG("CPU no. %d, delta ticks %ld, pct usage %.2f", e->cpu_no,
     delta, usage);

 return ((int)(usage));
}
