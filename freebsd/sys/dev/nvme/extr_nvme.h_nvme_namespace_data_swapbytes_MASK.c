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
struct nvme_namespace_data {void** lbaf; void* endgid; void* nvmsetid; void* anagrpid; void* nows; void* npda; void* npdg; void* npwa; void* npwg; void* noiob; void* nabspf; void* nabo; void* nabsn; void* nacwu; void* nawupf; void* nawun; void* nuse; void* ncap; void* nsze; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static inline
void	FUNC3(struct nvme_namespace_data *s)
{
	int i;

	s->nsze = FUNC2(s->nsze);
	s->ncap = FUNC2(s->ncap);
	s->nuse = FUNC2(s->nuse);
	s->nawun = FUNC0(s->nawun);
	s->nawupf = FUNC0(s->nawupf);
	s->nacwu = FUNC0(s->nacwu);
	s->nabsn = FUNC0(s->nabsn);
	s->nabo = FUNC0(s->nabo);
	s->nabspf = FUNC0(s->nabspf);
	s->noiob = FUNC0(s->noiob);
	s->npwg = FUNC0(s->npwg);
	s->npwa = FUNC0(s->npwa);
	s->npdg = FUNC0(s->npdg);
	s->npda = FUNC0(s->npda);
	s->nows = FUNC0(s->nows);
	s->anagrpid = FUNC1(s->anagrpid);
	s->nvmsetid = FUNC0(s->nvmsetid);
	s->endgid = FUNC0(s->endgid);
	for (i = 0; i < 16; i++)
		s->lbaf[i] = FUNC1(s->lbaf[i]);
}