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
typedef  size_t u_int ;
struct alg {scalar_t__ type; scalar_t__ name; } ;

/* Variables and functions */
 scalar_t__ T_BLKCIPHER ; 
 scalar_t__ T_HMAC ; 
 struct alg* algs ; 
 struct alg* FUNC0 (struct alg*,struct alg*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (struct alg*) ; 
 int /*<<< orphan*/  FUNC3 (struct alg*,size_t*,size_t) ; 

__attribute__((used)) static void
FUNC4(size_t *sizes, u_int nsizes)
{
	struct alg *authenc, *cipher, *hmac;
	u_int i, j;

	for (i = 0; i < FUNC2(algs); i++) {
		cipher = &algs[i];
		if (cipher->type != T_BLKCIPHER)
			continue;
		for (j = 0; j < FUNC2(algs); j++) {
			hmac = &algs[j];
			if (hmac->type != T_HMAC)
				continue;
			authenc = FUNC0(cipher, hmac);
			FUNC3(authenc, sizes, nsizes);
			FUNC1((char *)authenc->name);
		}
	}
}