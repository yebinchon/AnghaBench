#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fingerprint {int dummy; } ;

/* Variables and functions */
 int FINGERPRINT_FILE_THRESHOLD ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct fingerprint*,struct fingerprint*) ; 

__attribute__((used)) static int FUNC2(struct fingerprint *p_fps,
			     struct fingerprint *t_fps, int t_idx,
			     int from, int nr_lines)
{
	int sim, p_idx;
	#define FINGERPRINT_FILE_THRESHOLD	10
	int best_sim_val = FINGERPRINT_FILE_THRESHOLD;
	int best_sim_idx = -1;

	for (p_idx = from; p_idx < from + nr_lines; p_idx++) {
		sim = FUNC1(&t_fps[t_idx], &p_fps[p_idx]);
		if (sim < best_sim_val)
			continue;
		/* Break ties with the closest-to-target line number */
		if (sim == best_sim_val && best_sim_idx != -1 &&
		    FUNC0(best_sim_idx - t_idx) < FUNC0(p_idx - t_idx))
			continue;
		best_sim_val = sim;
		best_sim_idx = p_idx;
	}
	return best_sim_idx;
}