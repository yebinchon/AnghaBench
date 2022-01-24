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
struct socket {int /*<<< orphan*/  so_rcv; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct sockaddr*,struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 

__attribute__((used)) static int
FUNC5(struct socket *s, struct mbuf *mm, struct sockaddr_in *src)
{
    if (s) {
	FUNC0(&s->so_rcv);
	if (FUNC3(&s->so_rcv, (struct sockaddr *)src, mm,
	    NULL) != 0) {
	    FUNC4(s);
	    return 0;
	}
	FUNC1(&s->so_rcv);
    }
    FUNC2(mm);
    return -1;
}