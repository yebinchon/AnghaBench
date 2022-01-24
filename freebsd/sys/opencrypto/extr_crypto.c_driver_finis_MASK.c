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
typedef  scalar_t__ u_int32_t ;
struct cryptocap {scalar_t__ cc_sessions; scalar_t__ cc_koperations; int /*<<< orphan*/  cc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTOCAP_F_CLEANUP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cryptocap*,int) ; 

__attribute__((used)) static void
FUNC2(struct cryptocap *cap)
{
	u_int32_t ses, kops;

	FUNC0();

	ses = cap->cc_sessions;
	kops = cap->cc_koperations;
	FUNC1(cap, sizeof(*cap));
	if (ses != 0 || kops != 0) {
		/*
		 * If there are pending sessions,
		 * just mark as invalid.
		 */
		cap->cc_flags |= CRYPTOCAP_F_CLEANUP;
		cap->cc_sessions = ses;
		cap->cc_koperations = kops;
	}
}