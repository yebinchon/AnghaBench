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
typedef  uintptr_t uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  uintptr_t tcp_seq ;
struct in_conninfo {int inc_flags; uintptr_t inc_faddr; uintptr_t inc_laddr; uintptr_t inc6_faddr; uintptr_t inc6_laddr; uintptr_t inc_fport; uintptr_t inc_lport; } ;
typedef  int /*<<< orphan*/  secmod ;
typedef  int /*<<< orphan*/  irs ;
typedef  int /*<<< orphan*/  flags ;
typedef  int /*<<< orphan*/  SIPHASH_CTX ;

/* Variables and functions */
#define  INC_ISIPV6 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,uintptr_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,uintptr_t*,int) ; 

__attribute__((used)) static uint32_t
FUNC4(struct in_conninfo *inc, tcp_seq irs, uint8_t flags,
    uint8_t *secbits, uintptr_t secmod)
{
	SIPHASH_CTX ctx;
	uint32_t siphash[2];

	FUNC0(&ctx);
	FUNC2(&ctx, secbits);
	switch (inc->inc_flags & INC_ISIPV6) {
#ifdef INET
	case 0:
		SipHash_Update(&ctx, &inc->inc_faddr, sizeof(inc->inc_faddr));
		SipHash_Update(&ctx, &inc->inc_laddr, sizeof(inc->inc_laddr));
		break;
#endif
#ifdef INET6
	case INC_ISIPV6:
		SipHash_Update(&ctx, &inc->inc6_faddr, sizeof(inc->inc6_faddr));
		SipHash_Update(&ctx, &inc->inc6_laddr, sizeof(inc->inc6_laddr));
		break;
#endif
	}
	FUNC3(&ctx, &inc->inc_fport, sizeof(inc->inc_fport));
	FUNC3(&ctx, &inc->inc_lport, sizeof(inc->inc_lport));
	FUNC3(&ctx, &irs, sizeof(irs));
	FUNC3(&ctx, &flags, sizeof(flags));
	FUNC3(&ctx, &secmod, sizeof(secmod));
	FUNC1((u_int8_t *)&siphash, &ctx);

	return (siphash[0] ^ siphash[1]);
}