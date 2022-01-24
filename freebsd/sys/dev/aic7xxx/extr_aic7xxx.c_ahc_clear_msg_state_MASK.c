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
struct ahc_softc {int /*<<< orphan*/  msg_type; scalar_t__ msgin_index; scalar_t__ msgout_len; } ;

/* Variables and functions */
 int ATNI ; 
 int CLRATNO ; 
 int /*<<< orphan*/  CLRSINT1 ; 
 int MSG_NOOP ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  MSG_TYPE_NONE ; 
 int /*<<< orphan*/  SCSISIGI ; 
 int /*<<< orphan*/  SEQ_FLAGS2 ; 
 int TARGET_MSG_PENDING ; 
 int FUNC0 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ahc_softc *ahc)
{
	ahc->msgout_len = 0;
	ahc->msgin_index = 0;
	ahc->msg_type = MSG_TYPE_NONE;
	if ((FUNC0(ahc, SCSISIGI) & ATNI) != 0) {
		/*
		 * The target didn't care to respond to our
		 * message request, so clear ATN.
		 */
		FUNC1(ahc, CLRSINT1, CLRATNO);
	}
	FUNC1(ahc, MSG_OUT, MSG_NOOP);
	FUNC1(ahc, SEQ_FLAGS2,
		 FUNC0(ahc, SEQ_FLAGS2) & ~TARGET_MSG_PENDING);
}