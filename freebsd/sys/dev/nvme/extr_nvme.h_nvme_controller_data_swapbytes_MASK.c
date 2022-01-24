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
struct nvme_controller_data {int /*<<< orphan*/ * power_state; void* mnan; void* sgls; void* acwu; void* awupf; void* awun; void* fuses; void* oncs; void* nn; void* maxcmd; void* pels; void* nanagrpid; void* anagrpmax; void* endgidmax; void* nsetidmax; void* hmmaxd; void* hmminds; void* sanicap; void* mxtmt; void* mntmt; void* hctma; void* kas; void* edstt; void* rpmbs; void* hmmin; void* hmpre; void* mtfa; void* cctemp; void* wctemp; void* oacs; void* crdt3; void* crdt2; void* crdt1; void* rrls; void* ctratt; void* oaes; void* rtd3e; void* rtd3r; void* ver; void* ctrlr_id; void* ssvid; void* vid; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline
void	FUNC3(struct nvme_controller_data *s)
{
	int i;

	s->vid = FUNC0(s->vid);
	s->ssvid = FUNC0(s->ssvid);
	s->ctrlr_id = FUNC0(s->ctrlr_id);
	s->ver = FUNC1(s->ver);
	s->rtd3r = FUNC1(s->rtd3r);
	s->rtd3e = FUNC1(s->rtd3e);
	s->oaes = FUNC1(s->oaes);
	s->ctratt = FUNC1(s->ctratt);
	s->rrls = FUNC0(s->rrls);
	s->crdt1 = FUNC0(s->crdt1);
	s->crdt2 = FUNC0(s->crdt2);
	s->crdt3 = FUNC0(s->crdt3);
	s->oacs = FUNC0(s->oacs);
	s->wctemp = FUNC0(s->wctemp);
	s->cctemp = FUNC0(s->cctemp);
	s->mtfa = FUNC0(s->mtfa);
	s->hmpre = FUNC1(s->hmpre);
	s->hmmin = FUNC1(s->hmmin);
	s->rpmbs = FUNC1(s->rpmbs);
	s->edstt = FUNC0(s->edstt);
	s->kas = FUNC0(s->kas);
	s->hctma = FUNC0(s->hctma);
	s->mntmt = FUNC0(s->mntmt);
	s->mxtmt = FUNC0(s->mxtmt);
	s->sanicap = FUNC1(s->sanicap);
	s->hmminds = FUNC1(s->hmminds);
	s->hmmaxd = FUNC0(s->hmmaxd);
	s->nsetidmax = FUNC0(s->nsetidmax);
	s->endgidmax = FUNC0(s->endgidmax);
	s->anagrpmax = FUNC1(s->anagrpmax);
	s->nanagrpid = FUNC1(s->nanagrpid);
	s->pels = FUNC1(s->pels);
	s->maxcmd = FUNC0(s->maxcmd);
	s->nn = FUNC1(s->nn);
	s->oncs = FUNC0(s->oncs);
	s->fuses = FUNC0(s->fuses);
	s->awun = FUNC0(s->awun);
	s->awupf = FUNC0(s->awupf);
	s->acwu = FUNC0(s->acwu);
	s->sgls = FUNC1(s->sgls);
	s->mnan = FUNC1(s->mnan);
	for (i = 0; i < 32; i++)
		FUNC2(&s->power_state[i]);
}