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
struct sockproto {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 void FUNC0 (struct mbuf*,struct sockproto*,struct sockaddr*,int /*<<< orphan*/ *) ; 

void
FUNC1(struct mbuf *m0, struct sockproto *proto, struct sockaddr *src)
{

	return (FUNC0(m0, proto, src, NULL));
}