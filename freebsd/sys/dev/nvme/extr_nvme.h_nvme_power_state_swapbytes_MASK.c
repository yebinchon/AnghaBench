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
struct nvme_power_state {void* actp; void* idlp; void* exlat; void* enlat; void* mp; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static inline
void	FUNC2(struct nvme_power_state *s)
{

	s->mp = FUNC0(s->mp);
	s->enlat = FUNC1(s->enlat);
	s->exlat = FUNC1(s->exlat);
	s->idlp = FUNC0(s->idlp);
	s->actp = FUNC0(s->actp);
}