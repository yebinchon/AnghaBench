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
struct ucred {struct label* cr_label; } ;
struct socket {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_CRED ; 
 int /*<<< orphan*/  MAGIC_SOCKET ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  socket_relabel ; 

__attribute__((used)) static void
FUNC3(struct ucred *cred, struct socket *so,
    struct label *solabel, struct label *newlabel)
{

	FUNC2(so);

	FUNC1(cred->cr_label, MAGIC_CRED);
	FUNC1(solabel, MAGIC_SOCKET);
	FUNC1(newlabel, MAGIC_SOCKET);
	FUNC0(socket_relabel);
}