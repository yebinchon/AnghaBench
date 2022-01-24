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
struct intel_log_temp_stats {void* est_offset; void* min_oper_temp; void* max_oper_temp; void* min_temp; void* max_temp; void* overtemp_flag_life; void* overtemp_flag_last; void* current; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

__attribute__((used)) static inline
void	FUNC1(struct intel_log_temp_stats *s)
{

	s->current = FUNC0(s->current);
	s->overtemp_flag_last = FUNC0(s->overtemp_flag_last);
	s->overtemp_flag_life = FUNC0(s->overtemp_flag_life);
	s->max_temp = FUNC0(s->max_temp);
	s->min_temp = FUNC0(s->min_temp);
	/* omit _rsvd[] */
	s->max_oper_temp = FUNC0(s->max_oper_temp);
	s->min_oper_temp = FUNC0(s->min_oper_temp);
	s->est_offset = FUNC0(s->est_offset);
}