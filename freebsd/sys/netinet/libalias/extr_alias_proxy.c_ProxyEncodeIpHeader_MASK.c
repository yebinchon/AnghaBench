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
typedef  scalar_t__ u_short ;
typedef  int u_int ;
typedef  int u_char ;
struct tcphdr {int /*<<< orphan*/  th_sport; } ;
struct ip {int ip_hl; int /*<<< orphan*/  ip_sum; scalar_t__ ip_len; int /*<<< orphan*/  ip_dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ip*) ; 
 int OPTION_LEN_BYTES ; 
 int OPTION_LEN_INT16 ; 
 int OPTION_LEN_INT32 ; 
 scalar_t__ FUNC2 (struct ip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct ip*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC8(struct ip *pip,
    int maxpacketsize)
{
#define OPTION_LEN_BYTES  8
#define OPTION_LEN_INT16  4
#define OPTION_LEN_INT32  2
	u_char option[OPTION_LEN_BYTES];

#ifdef LIBALIAS_DEBUG
	fprintf(stdout, " ip cksum 1 = %x\n", (u_int) IpChecksum(pip));
	fprintf(stdout, "tcp cksum 1 = %x\n", (u_int) TcpChecksum(pip));
#endif

	(void)maxpacketsize;

/* Check to see that there is room to add an IP option */
	if (pip->ip_hl > (0x0f - OPTION_LEN_INT32))
		return;

/* Build option and copy into packet */
	{
		u_char *ptr;
		struct tcphdr *tc;

		ptr = (u_char *) pip;
		ptr += 20;
		FUNC6(ptr + OPTION_LEN_BYTES, ptr, FUNC7(pip->ip_len) - 20);

		option[0] = 0x64;	/* class: 3 (reserved), option 4 */
		option[1] = OPTION_LEN_BYTES;

		FUNC6(&option[2], (u_char *) & pip->ip_dst, 4);

		tc = (struct tcphdr *)FUNC5(pip);
		FUNC6(&option[6], (u_char *) & tc->th_sport, 2);

		FUNC6(ptr, option, 8);
	}

/* Update checksum, header length and packet length */
	{
		int i;
		int accumulate;
		u_short *sptr;

		sptr = (u_short *) option;
		accumulate = 0;
		for (i = 0; i < OPTION_LEN_INT16; i++)
			accumulate -= *(sptr++);

		sptr = (u_short *) pip;
		accumulate += *sptr;
		pip->ip_hl += OPTION_LEN_INT32;
		accumulate -= *sptr;

		accumulate += pip->ip_len;
		pip->ip_len = FUNC4(FUNC7(pip->ip_len) + OPTION_LEN_BYTES);
		accumulate -= pip->ip_len;

		FUNC0(accumulate, pip->ip_sum);
	}
#undef OPTION_LEN_BYTES
#undef OPTION_LEN_INT16
#undef OPTION_LEN_INT32
#ifdef LIBALIAS_DEBUG
	fprintf(stdout, " ip cksum 2 = %x\n", (u_int) IpChecksum(pip));
	fprintf(stdout, "tcp cksum 2 = %x\n", (u_int) TcpChecksum(pip));
#endif
}