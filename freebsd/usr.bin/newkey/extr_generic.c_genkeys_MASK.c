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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  seed ;
typedef  int /*<<< orphan*/  MINT ;

/* Variables and functions */
 unsigned short BASE ; 
 int BASEBITS ; 
 int /*<<< orphan*/  HEXMODULUS ; 
 int KEYSIZE ; 
 short PROOT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(char *public, char *secret, char *pass)
{
	unsigned int i;

#   define BASEBITS (8*sizeof (short) - 1)
#	define BASE		(1 << BASEBITS)

	MINT *pk = FUNC2(0);
	MINT *sk = FUNC2(0);
	MINT *tmp;
	MINT *base = FUNC2((short)BASE);
	MINT *root = FUNC2(PROOT);
	MINT *modulus = FUNC9(HEXMODULUS);
	short r;
	unsigned short seed[KEYSIZE/BASEBITS + 1];
	char *xkey;

	FUNC1((char *)seed, sizeof (seed), (u_char *)pass);
	for (i = 0; i < KEYSIZE/BASEBITS + 1; i++) {
		r = seed[i] % BASE;
		tmp = FUNC2(r);
		FUNC7(sk, base, sk);
		FUNC3(sk, tmp, sk);
		FUNC5(tmp);
	}
	tmp = FUNC2(0);
	FUNC4(sk, modulus, tmp, sk);
	FUNC5(tmp);
	FUNC8(root, sk, modulus, pk);
	xkey = FUNC6(sk);
	FUNC0(secret, xkey);
	xkey = FUNC6(pk);
	FUNC0(public, xkey);
	FUNC5(sk);
	FUNC5(base);
	FUNC5(pk);
	FUNC5(root);
	FUNC5(modulus);
}