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
struct sockbuf {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*) ; 
 int FUNC2 (struct sockbuf*,struct sockaddr const*,struct mbuf*,struct mbuf*) ; 

int
FUNC3(struct sockbuf *sb, const struct sockaddr *asa,
    struct mbuf *m0, struct mbuf *control)
{
	int retval;

	FUNC0(sb);
	retval = FUNC2(sb, asa, m0, control);
	FUNC1(sb);
	return (retval);
}