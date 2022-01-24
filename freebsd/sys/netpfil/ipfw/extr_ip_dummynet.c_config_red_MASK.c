#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_7__ {scalar_t__ w_q; int max_p; int min_th; int max_th; int flags; } ;
struct dn_fsk {scalar_t__ w_q; int max_p; int lookup_step; int lookup_weight; int min_th; int max_th; int c_1; int c_3; int c_4; int* w_q_lookup; int lookup_depth; int avg_pkt_size; int max_pkt_size; TYPE_3__ fs; void* c_2; TYPE_2__* sched; } ;
typedef  int int64_t ;
struct TYPE_8__ {int red_avg_pkt_size; scalar_t__ red_lookup_depth; int red_max_pkt_size; } ;
struct TYPE_5__ {int bandwidth; } ;
struct TYPE_6__ {TYPE_1__ link; } ;

/* Variables and functions */
 int DN_IS_GENTLE_RED ; 
 int DN_IS_RED ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  M_DUMMYNET ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int,int) ; 
 void* FUNC3 (int,scalar_t__) ; 
 TYPE_4__ dn_cfg ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int hz ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(struct dn_fsk *fs)
{
	int64_t s, idle, weight, w0;
	int t, i;

	fs->w_q = fs->fs.w_q;
	fs->max_p = fs->fs.max_p;
	FUNC0("called");
	/* Doing stuff that was in userland */
	i = fs->sched->link.bandwidth;
	s = (i <= 0) ? 0 :
		hz * dn_cfg.red_avg_pkt_size * 8 * FUNC1(1) / i;

	idle = FUNC3((s * 3) , fs->w_q); /* s, fs->w_q scaled; idle not scaled */
	fs->lookup_step = FUNC3(idle , dn_cfg.red_lookup_depth);
	/* fs->lookup_step not scaled, */
	if (!fs->lookup_step)
		fs->lookup_step = 1;
	w0 = weight = FUNC1(1) - fs->w_q; //fs->w_q scaled

	for (t = fs->lookup_step; t > 1; --t)
		weight = FUNC2(weight, w0);
	fs->lookup_weight = (int)(weight); // scaled

	/* Now doing stuff that was in kerneland */
	fs->min_th = FUNC1(fs->fs.min_th);
	fs->max_th = FUNC1(fs->fs.max_th);

	if (fs->fs.max_th == fs->fs.min_th)
		fs->c_1 = fs->max_p;
	else
		fs->c_1 = FUNC1((int64_t)(fs->max_p)) / (fs->fs.max_th - fs->fs.min_th);
	fs->c_2 = FUNC2(fs->c_1, FUNC1(fs->fs.min_th));

	if (fs->fs.flags & DN_IS_GENTLE_RED) {
		fs->c_3 = (FUNC1(1) - fs->max_p) / fs->fs.max_th;
		fs->c_4 = FUNC1(1) - 2 * fs->max_p;
	}

	/* If the lookup table already exist, free and create it again. */
	if (fs->w_q_lookup) {
		FUNC4(fs->w_q_lookup, M_DUMMYNET);
		fs->w_q_lookup = NULL;
	}
	if (dn_cfg.red_lookup_depth == 0) {
		FUNC6("\ndummynet: net.inet.ip.dummynet.red_lookup_depth"
		    "must be > 0\n");
		fs->fs.flags &= ~DN_IS_RED;
		fs->fs.flags &= ~DN_IS_GENTLE_RED;
		return (EINVAL);
	}
	fs->lookup_depth = dn_cfg.red_lookup_depth;
	fs->w_q_lookup = (u_int *)FUNC5(fs->lookup_depth * sizeof(int),
	    M_DUMMYNET, M_NOWAIT);
	if (fs->w_q_lookup == NULL) {
		FUNC6("dummynet: sorry, cannot allocate red lookup table\n");
		fs->fs.flags &= ~DN_IS_RED;
		fs->fs.flags &= ~DN_IS_GENTLE_RED;
		return(ENOSPC);
	}

	/* Fill the lookup table with (1 - w_q)^x */
	fs->w_q_lookup[0] = FUNC1(1) - fs->w_q;

	for (i = 1; i < fs->lookup_depth; i++)
		fs->w_q_lookup[i] =
		    FUNC2(fs->w_q_lookup[i - 1], fs->lookup_weight);

	if (dn_cfg.red_avg_pkt_size < 1)
		dn_cfg.red_avg_pkt_size = 512;
	fs->avg_pkt_size = dn_cfg.red_avg_pkt_size;
	if (dn_cfg.red_max_pkt_size < 1)
		dn_cfg.red_max_pkt_size = 1500;
	fs->max_pkt_size = dn_cfg.red_max_pkt_size;
	FUNC0("exit");
	return 0;
}