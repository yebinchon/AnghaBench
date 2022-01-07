
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fingerprint {int dummy; } ;


 int FINGERPRINT_FILE_THRESHOLD ;
 scalar_t__ abs (int) ;
 int fingerprint_similarity (struct fingerprint*,struct fingerprint*) ;

__attribute__((used)) static int scan_parent_range(struct fingerprint *p_fps,
        struct fingerprint *t_fps, int t_idx,
        int from, int nr_lines)
{
 int sim, p_idx;

 int best_sim_val = 10;
 int best_sim_idx = -1;

 for (p_idx = from; p_idx < from + nr_lines; p_idx++) {
  sim = fingerprint_similarity(&t_fps[t_idx], &p_fps[p_idx]);
  if (sim < best_sim_val)
   continue;

  if (sim == best_sim_val && best_sim_idx != -1 &&
      abs(best_sim_idx - t_idx) < abs(p_idx - t_idx))
   continue;
  best_sim_val = sim;
  best_sim_idx = p_idx;
 }
 return best_sim_idx;
}
