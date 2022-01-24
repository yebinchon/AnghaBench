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
struct alg {int type; } ;

/* Variables and functions */
#define  T_AUTHENC 133 
#define  T_BLKCIPHER 132 
#define  T_CCM 131 
#define  T_GCM 130 
#define  T_HASH 129 
#define  T_HMAC 128 
 int /*<<< orphan*/  FUNC0 (struct alg*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct alg*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct alg*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct alg*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct alg*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct alg*,size_t) ; 

__attribute__((used)) static void
FUNC6(struct alg *alg, size_t size)
{

	switch (alg->type) {
	case T_HASH:
		FUNC4(alg, size);
		break;
	case T_HMAC:
		FUNC5(alg, size);
		break;
	case T_BLKCIPHER:
		FUNC1(alg, size);
		break;
	case T_AUTHENC:
		FUNC0(alg, size);
		break;
	case T_GCM:
		FUNC3(alg, size);
		break;
	case T_CCM:
		FUNC2(alg, size);
		break;
	}
}