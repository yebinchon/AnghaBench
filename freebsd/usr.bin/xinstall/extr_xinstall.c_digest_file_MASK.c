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

/* Variables and functions */
#define  DIGEST_MD5 132 
#define  DIGEST_RIPEMD160 131 
#define  DIGEST_SHA1 130 
#define  DIGEST_SHA256 129 
#define  DIGEST_SHA512 128 
 char* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int digesttype ; 

__attribute__((used)) static char *
FUNC5(const char *name)
{

	switch (digesttype) {
	case DIGEST_MD5:
		return (FUNC0(name, NULL));
	case DIGEST_RIPEMD160:
		return (FUNC1(name, NULL));
	case DIGEST_SHA1:
		return (FUNC2(name, NULL));
	case DIGEST_SHA256:
		return (FUNC3(name, NULL));
	case DIGEST_SHA512:
		return (FUNC4(name, NULL));
	default:
		return (NULL);
	}
}