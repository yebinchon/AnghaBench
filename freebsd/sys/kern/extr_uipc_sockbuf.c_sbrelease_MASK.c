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
struct socket {int dummy; } ;
struct sockbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockbuf*,struct socket*) ; 

void
FUNC3(struct sockbuf *sb, struct socket *so)
{

	FUNC0(sb);
	FUNC2(sb, so);
	FUNC1(sb);
}