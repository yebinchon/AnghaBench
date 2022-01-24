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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct sockbuf {short sb_flags; int /*<<< orphan*/  sb_lowat; int /*<<< orphan*/  sb_hiwat; } ;
struct socket {short sol_sbsnd_flags; short sol_sbrcv_flags; struct sockbuf so_rcv; struct sockbuf so_snd; int /*<<< orphan*/  sol_sbrcv_hiwat; int /*<<< orphan*/  sol_sbrcv_lowat; int /*<<< orphan*/  sol_sbsnd_hiwat; int /*<<< orphan*/  sol_sbsnd_lowat; } ;

/* Variables and functions */
 int ENOBUFS ; 
 short SB_AUTOSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 scalar_t__ FUNC4 (struct socket*) ; 
#define  SO_RCVBUF 131 
#define  SO_RCVLOWAT 130 
#define  SO_SNDBUF 129 
#define  SO_SNDLOWAT 128 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  sb_max_adj ; 
 int /*<<< orphan*/  FUNC5 (struct sockbuf*,int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct socket *so, int cmd, u_long cc)
{
	struct sockbuf *sb;
	short *flags;
	u_int *hiwat, *lowat;
	int error;

	sb = NULL;
	FUNC2(so);
	if (FUNC4(so)) {
		switch (cmd) {
			case SO_SNDLOWAT:
			case SO_SNDBUF:
				lowat = &so->sol_sbsnd_lowat;
				hiwat = &so->sol_sbsnd_hiwat;
				flags = &so->sol_sbsnd_flags;
				break;
			case SO_RCVLOWAT:
			case SO_RCVBUF:
				lowat = &so->sol_sbrcv_lowat;
				hiwat = &so->sol_sbrcv_hiwat;
				flags = &so->sol_sbrcv_flags;
				break;
		}
	} else {
		switch (cmd) {
			case SO_SNDLOWAT:
			case SO_SNDBUF:
				sb = &so->so_snd;
				break;
			case SO_RCVLOWAT:
			case SO_RCVBUF:
				sb = &so->so_rcv;
				break;
		}
		flags = &sb->sb_flags;
		hiwat = &sb->sb_hiwat;
		lowat = &sb->sb_lowat;
		FUNC0(sb);
	}

	error = 0;
	switch (cmd) {
	case SO_SNDBUF:
	case SO_RCVBUF:
		if (FUNC4(so)) {
			if (cc > sb_max_adj) {
				error = ENOBUFS;
				break;
			}
			*hiwat = cc;
			if (*lowat > *hiwat)
				*lowat = *hiwat;
		} else {
			if (!FUNC5(sb, cc, so, curthread))
				error = ENOBUFS;
		}
		if (error == 0)
			*flags &= ~SB_AUTOSIZE;
		break;
	case SO_SNDLOWAT:
	case SO_RCVLOWAT:
		/*
		 * Make sure the low-water is never greater than the
		 * high-water.
		 */
		*lowat = (cc > *hiwat) ? *hiwat : cc;
		break;
	}

	if (!FUNC4(so))
		FUNC1(sb);
	FUNC3(so);
	return (error);
}