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
struct knote {scalar_t__ kn_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msgbuf_lock ; 
 int /*<<< orphan*/  msgbufp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct knote *kn, long hint)
{

	FUNC1(&msgbuf_lock, MA_OWNED);
	kn->kn_data = FUNC0(msgbufp);
	return (kn->kn_data != 0);
}