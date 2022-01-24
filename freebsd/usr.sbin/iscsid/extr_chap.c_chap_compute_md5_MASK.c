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
typedef  int /*<<< orphan*/  id ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 size_t CHAP_DIGEST_LEN ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(const char id, const char *secret,
    const void *challenge, size_t challenge_len, void *response,
    size_t response_len)
{
	MD5_CTX ctx;

	FUNC3(response_len == CHAP_DIGEST_LEN);

	FUNC1(&ctx);
	FUNC2(&ctx, &id, sizeof(id));
	FUNC2(&ctx, secret, FUNC4(secret));
	FUNC2(&ctx, challenge, challenge_len);
	FUNC0(response, &ctx);
}