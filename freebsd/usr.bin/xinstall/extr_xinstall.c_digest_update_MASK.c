#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  SHA512; int /*<<< orphan*/  SHA256; int /*<<< orphan*/  SHA1; int /*<<< orphan*/  RIPEMD160; int /*<<< orphan*/  MD5; } ;
typedef  TYPE_1__ DIGEST_CTX ;

/* Variables and functions */
#define  DIGEST_MD5 133 
#define  DIGEST_NONE 132 
#define  DIGEST_RIPEMD160 131 
#define  DIGEST_SHA1 130 
#define  DIGEST_SHA256 129 
#define  DIGEST_SHA512 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int digesttype ; 

__attribute__((used)) static void
FUNC5(DIGEST_CTX *c, const char *data, size_t len)
{

	switch (digesttype) {
	case DIGEST_NONE:
		break;
	case DIGEST_MD5:
		FUNC0(&(c->MD5), data, len);
		break;
	case DIGEST_RIPEMD160:
		FUNC1(&(c->RIPEMD160), data, len);
		break;
	case DIGEST_SHA1:
		FUNC2(&(c->SHA1), data, len);
		break;
	case DIGEST_SHA256:
		FUNC3(&(c->SHA256), data, len);
		break;
	case DIGEST_SHA512:
		FUNC4(&(c->SHA512), data, len);
		break;
	}
}