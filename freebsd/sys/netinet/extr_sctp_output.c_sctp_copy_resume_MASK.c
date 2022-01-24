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
typedef  int /*<<< orphan*/  uint32_t ;
struct uio {int dummy; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int M_EOR ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SCTP_FROM_SCTP_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ *) ; 
 struct mbuf* FUNC3 (struct uio*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct mbuf *
FUNC4(struct uio *uio,
    int max_send_len,
    int user_marks_eor,
    int *error,
    uint32_t *sndout,
    struct mbuf **new_tail)
{
	struct mbuf *m;

	m = FUNC3(uio, M_WAITOK, max_send_len, 0,
	    (M_PKTHDR | (user_marks_eor ? M_EOR : 0)));
	if (m == NULL) {
		FUNC0(NULL, NULL, NULL, SCTP_FROM_SCTP_OUTPUT, ENOBUFS);
		*error = ENOBUFS;
	} else {
		*sndout = FUNC2(m, NULL);
		*new_tail = FUNC1(m);
	}
	return (m);
}