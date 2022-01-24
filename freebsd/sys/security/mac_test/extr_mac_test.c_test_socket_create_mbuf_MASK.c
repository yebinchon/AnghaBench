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
struct mbuf {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_MBUF ; 
 int /*<<< orphan*/  MAGIC_SOCKET ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  socket_create_mbuf ; 

__attribute__((used)) static void
FUNC4(struct socket *so, struct label *solabel,
    struct mbuf *m, struct label *mlabel)
{

	FUNC2(so);
	FUNC1(solabel, MAGIC_SOCKET);
	FUNC3(so);
	FUNC1(mlabel, MAGIC_MBUF);
	FUNC0(socket_create_mbuf);
}