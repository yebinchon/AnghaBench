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
struct socket {struct sockbuf so_rcv; } ;

/* Variables and functions */
 int FUNC0 (struct socket*) ; 
 int FUNC1 (struct socket*) ; 

__attribute__((used)) static __inline int
FUNC2(struct socket *so, struct sockbuf *sb)
{
	return (sb == &so->so_rcv ? FUNC0(so) : FUNC1(so));
}