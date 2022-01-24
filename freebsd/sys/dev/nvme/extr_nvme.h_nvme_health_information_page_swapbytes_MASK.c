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
struct nvme_health_information_page {void* ttftmt2; void* ttftmt1; void* tmt2tc; void* tmt1tc; void** temp_sensor; void* error_temp_time; void* warning_temp_time; scalar_t__ num_error_info_log_entries; scalar_t__ media_errors; scalar_t__ unsafe_shutdowns; scalar_t__ power_on_hours; scalar_t__ power_cycles; scalar_t__ controller_busy_time; scalar_t__ host_write_commands; scalar_t__ host_read_commands; scalar_t__ data_units_written; scalar_t__ data_units_read; void* temperature; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static inline
void	FUNC3(struct nvme_health_information_page *s)
{
	int i;

	s->temperature = FUNC0(s->temperature);
	FUNC2((void *)s->data_units_read);
	FUNC2((void *)s->data_units_written);
	FUNC2((void *)s->host_read_commands);
	FUNC2((void *)s->host_write_commands);
	FUNC2((void *)s->controller_busy_time);
	FUNC2((void *)s->power_cycles);
	FUNC2((void *)s->power_on_hours);
	FUNC2((void *)s->unsafe_shutdowns);
	FUNC2((void *)s->media_errors);
	FUNC2((void *)s->num_error_info_log_entries);
	s->warning_temp_time = FUNC1(s->warning_temp_time);
	s->error_temp_time = FUNC1(s->error_temp_time);
	for (i = 0; i < 8; i++)
		s->temp_sensor[i] = FUNC0(s->temp_sensor[i]);
	s->tmt1tc = FUNC1(s->tmt1tc);
	s->tmt2tc = FUNC1(s->tmt2tc);
	s->ttftmt1 = FUNC1(s->ttftmt1);
	s->ttftmt2 = FUNC1(s->ttftmt2);
}