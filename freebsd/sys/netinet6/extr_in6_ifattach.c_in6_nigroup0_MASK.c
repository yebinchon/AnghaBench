#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  char u_char ;
struct prison {char* pr_hostname; int /*<<< orphan*/  pr_mtx; } ;
struct in6_addr {int* s6_addr8; int* s6_addr32; int /*<<< orphan*/ * s6_addr16; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  n ;
typedef  int /*<<< orphan*/  l ;
typedef  int /*<<< orphan*/  ctxt ;
struct TYPE_4__ {TYPE_1__* td_ucred; } ;
struct TYPE_3__ {struct prison* cr_prison; } ;
typedef  struct in6_addr MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  IPV6_ADDR_INT16_MLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_addr*,int) ; 
 TYPE_2__* curthread ; 
 scalar_t__ FUNC5 (struct in6_addr*,struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,char) ; 

__attribute__((used)) static int
FUNC10(struct ifnet *ifp, const char *name, int namelen,
    struct in6_addr *in6, int oldmcprefix)
{
	struct prison *pr;
	const char *p;
	u_char *q;
	MD5_CTX ctxt;
	u_int8_t digest[16];
	char l;
	char n[64];	/* a single label must not exceed 63 chars */

	/*
	 * If no name is given and namelen is -1,
	 * we try to do the hostname lookup ourselves.
	 */
	if (!name && namelen == -1) {
		pr = curthread->td_ucred->cr_prison;
		FUNC6(&pr->pr_mtx);
		name = pr->pr_hostname;
		namelen = FUNC8(name);
	} else
		pr = NULL;
	if (!name || !namelen) {
		if (pr != NULL)
			FUNC7(&pr->pr_mtx);
		return -1;
	}

	p = name;
	while (p && *p && *p != '.' && p - name < namelen)
		p++;
	if (p == name || p - name > sizeof(n) - 1) {
		if (pr != NULL)
			FUNC7(&pr->pr_mtx);
		return -1;	/* label too long */
	}
	l = p - name;
	FUNC9(n, name, l);
	if (pr != NULL)
		FUNC7(&pr->pr_mtx);
	n[(int)l] = '\0';
	for (q = n; *q; q++) {
		if ('A' <= *q && *q <= 'Z')
			*q = *q - 'A' + 'a';
	}

	/* generate 16 bytes of pseudo-random value. */
	FUNC4(&ctxt, sizeof(ctxt));
	FUNC1(&ctxt);
	FUNC2(&ctxt, &l, sizeof(l));
	FUNC2(&ctxt, n, l);
	FUNC0(digest, &ctxt);

	FUNC4(in6, sizeof(*in6));
	in6->s6_addr16[0] = IPV6_ADDR_INT16_MLL;
	in6->s6_addr8[11] = 2;
	if (oldmcprefix == 0) {
		in6->s6_addr8[12] = 0xff;
	 	/* Copy the first 24 bits of 128-bit hash into the address. */
		FUNC3(digest, &in6->s6_addr8[13], 3);
	} else {
	 	/* Copy the first 32 bits of 128-bit hash into the address. */
		FUNC3(digest, &in6->s6_addr32[3], sizeof(in6->s6_addr32[3]));
	}
	if (FUNC5(in6, ifp, NULL))
		return (-1); /* XXX: should not fail */

	return 0;
}