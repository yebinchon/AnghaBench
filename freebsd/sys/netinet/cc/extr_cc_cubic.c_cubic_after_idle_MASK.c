#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cubic {int max_cwnd; int /*<<< orphan*/  t_last_cong; int /*<<< orphan*/  K; } ;
struct cc_var {struct cubic* cc_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* after_idle ) (struct cc_var*) ;} ;

/* Variables and functions */
 int FUNC0 (struct cc_var*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ newreno_cc_algo ; 
 int /*<<< orphan*/  snd_cwnd ; 
 int /*<<< orphan*/  FUNC2 (struct cc_var*) ; 
 int /*<<< orphan*/  t_maxseg ; 
 int /*<<< orphan*/  ticks ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static void
FUNC4(struct cc_var *ccv)
{
	struct cubic *cubic_data;

	cubic_data = ccv->cc_data;

	cubic_data->max_cwnd = FUNC3(cubic_data->max_cwnd, FUNC0(ccv, snd_cwnd));
	cubic_data->K = FUNC1(cubic_data->max_cwnd / FUNC0(ccv, t_maxseg));

	newreno_cc_algo.after_idle(ccv);
	cubic_data->t_last_cong = ticks;
}