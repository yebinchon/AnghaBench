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
struct thread {int dummy; } ;
struct socket {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int EPROTONOSUPPORT ; 
 int IPPROTO_SEND ; 
 int /*<<< orphan*/  PRIV_NETINET_RAW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct socket* V_send_so ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_recvspace ; 
 int /*<<< orphan*/  send_sendspace ; 
 int FUNC3 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct socket *so, int proto, struct thread *td)
{
	int error;

	FUNC0();
	if (V_send_so != NULL) {
		FUNC1();
		return (EEXIST);
	}

	error = FUNC2(td, PRIV_NETINET_RAW);
	if (error) {
		FUNC1();
		return(error);
	}

	if (proto != IPPROTO_SEND) {
		FUNC1();
		return (EPROTONOSUPPORT);
	}
	error = FUNC3(so, send_sendspace, send_recvspace);
	if (error) {
		FUNC1();
		return(error);
	}

	V_send_so = so;
	FUNC1();

	return (0);
}