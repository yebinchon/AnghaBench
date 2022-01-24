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
struct wtap_vap {int /*<<< orphan*/  id; int /*<<< orphan*/  av_md; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*) ; 

__attribute__((used)) static int
FUNC1(struct wtap_vap *avp, struct mbuf *m)
{

	return FUNC0(avp->av_md, avp->id, m);
}