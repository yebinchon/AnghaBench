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
struct nvme_sanitize_status_page {void* etfcewnd; void* etfbewnd; void* etfownd; void* etfce; void* etfbe; void* etfo; void* scdw10; void* sstat; void* sprog; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static inline
void	FUNC2(struct nvme_sanitize_status_page *s)
{
	s->sprog = FUNC0(s->sprog);
	s->sstat = FUNC0(s->sstat);
	s->scdw10 = FUNC1(s->scdw10);
	s->etfo = FUNC1(s->etfo);
	s->etfbe = FUNC1(s->etfbe);
	s->etfce = FUNC1(s->etfce);
	s->etfownd = FUNC1(s->etfownd);
	s->etfbewnd = FUNC1(s->etfbewnd);
	s->etfcewnd = FUNC1(s->etfcewnd);
}