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
struct tty {int t_cflag; int t_state; scalar_t__ t_actout; int /*<<< orphan*/  t_dev; } ;
struct rp_port {int /*<<< orphan*/  rp_channel; } ;
typedef  int /*<<< orphan*/  CHANNEL_t ;

/* Variables and functions */
 int CHANINT_EN ; 
 scalar_t__ FALSE ; 
 int HUPCL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MCINT_EN ; 
 int RXINT_EN ; 
 int SRCINT_EN ; 
 scalar_t__* FUNC1 (struct tty*) ; 
 int TS_ISOPEN ; 
 int TXINT_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct rp_port* FUNC11 (struct tty*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC13(struct tty *tp)
{
	struct	rp_port	*rp;
	CHANNEL_t	*cp;

	rp = FUNC11(tp);
	cp = &rp->rp_channel;

	FUNC9(cp);
	FUNC10(cp);
	FUNC7(cp);
	FUNC5(cp, TXINT_EN|MCINT_EN|RXINT_EN|SRCINT_EN|CHANINT_EN);
	FUNC6(cp);
	FUNC4(cp);
	FUNC8(cp);
	FUNC3(cp);

#ifdef DJA
	if(tp->t_cflag&HUPCL || !(tp->t_state&TS_ISOPEN) || !tp->t_actout) {
		sClrDTR(cp);
	}
	if(ISCALLOUT(tp->t_dev)) {
		sClrDTR(cp);
	}
	tp->t_actout = FALSE;
	wakeup(&tp->t_actout);
	wakeup(TSA_CARR_ON(tp));
#endif /* DJA */
}