#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {long sb_lowat; long sb_hiwat; } ;
struct socket {TYPE_3__ so_snd; } ;
struct icl_pdu_stailq {int dummy; } ;
struct icl_pdu {TYPE_2__* ip_bhs_mbuf; } ;
struct icl_conn {struct socket* ic_socket; } ;
struct TYPE_8__ {long len; } ;
struct TYPE_9__ {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct icl_pdu_stailq*) ; 
 struct icl_pdu* FUNC5 (struct icl_pdu_stailq*) ; 
 int /*<<< orphan*/  FUNC6 (struct icl_pdu_stailq*,struct icl_pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct icl_pdu_stailq*,int /*<<< orphan*/ ) ; 
 scalar_t__ coalesce ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC8 (struct icl_conn*) ; 
 int FUNC9 (struct icl_pdu*) ; 
 long FUNC10 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC11 (struct icl_conn*,struct icl_pdu*) ; 
 int /*<<< orphan*/  ip_next ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_2__*) ; 
 long FUNC13 (TYPE_3__*) ; 
 int FUNC14 (struct socket*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct icl_conn *ic, struct icl_pdu_stailq *queue)
{
	struct icl_pdu *request, *request2;
	struct socket *so;
	long available, size, size2;
	int coalesced, error;

	FUNC0(ic);

	so = ic->ic_socket;

	FUNC2(&so->so_snd);
	/*
	 * Check how much space do we have for transmit.  We can't just
	 * call sosend() and retry when we get EWOULDBLOCK or EMSGSIZE,
	 * as it always frees the mbuf chain passed to it, even in case
	 * of error.
	 */
	available = FUNC13(&so->so_snd);

	/*
	 * Notify the socket upcall that we don't need wakeups
	 * for the time being.
	 */
	so->so_snd.sb_lowat = so->so_snd.sb_hiwat + 1;
	FUNC3(&so->so_snd);

	while (!FUNC4(queue)) {
		request = FUNC5(queue);
		size = FUNC10(request);
		if (available < size) {

			/*
			 * Set the low watermark, to be checked by
			 * sowriteable() in icl_soupcall_send()
			 * to avoid unnecessary wakeups until there
			 * is enough space for the PDU to fit.
			 */
			FUNC2(&so->so_snd);
			available = FUNC13(&so->so_snd);
			if (available < size) {
#if 1
				FUNC1("no space to send; "
				    "have %ld, need %ld",
				    available, size);
#endif
				so->so_snd.sb_lowat = size;
				FUNC3(&so->so_snd);
				return;
			}
			FUNC3(&so->so_snd);
		}
		FUNC7(queue, ip_next);
		error = FUNC9(request);
		if (error != 0) {
			FUNC1("failed to finalize PDU; "
			    "dropping connection");
			FUNC11(ic, request);
			FUNC8(ic);
			return;
		}
		if (coalesce) {
			coalesced = 1;
			for (;;) {
				request2 = FUNC5(queue);
				if (request2 == NULL)
					break;
				size2 = FUNC10(request2);
				if (available < size + size2)
					break;
				FUNC7(queue, ip_next);
				error = FUNC9(request2);
				if (error != 0) {
					FUNC1("failed to finalize PDU; "
					    "dropping connection");
					FUNC11(ic, request);
					FUNC11(ic, request2);
					FUNC8(ic);
					return;
				}
				FUNC12(request->ip_bhs_mbuf, request2->ip_bhs_mbuf);
				request2->ip_bhs_mbuf = NULL;
				request->ip_bhs_mbuf->m_pkthdr.len += size2;
				size += size2;
				FUNC6(queue, request, ip_next);
				FUNC11(ic, request2);
				coalesced++;
			}
#if 0
			if (coalesced > 1) {
				ICL_DEBUG("coalesced %d PDUs into %ld bytes",
				    coalesced, size);
			}
#endif
		}
		available -= size;
		error = FUNC14(so, NULL, NULL, request->ip_bhs_mbuf,
		    NULL, MSG_DONTWAIT, curthread);
		request->ip_bhs_mbuf = NULL; /* Sosend consumes the mbuf. */
		if (error != 0) {
			FUNC1("failed to send PDU, error %d; "
			    "dropping connection", error);
			FUNC11(ic, request);
			FUNC8(ic);
			return;
		}
		FUNC11(ic, request);
	}
}