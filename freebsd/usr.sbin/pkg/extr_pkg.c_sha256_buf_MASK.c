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
typedef  int /*<<< orphan*/  SHA256_CTX ;

/* Variables and functions */
 int SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char*) ; 

__attribute__((used)) static void
FUNC4(char *buf, size_t len, char out[SHA256_DIGEST_LENGTH * 2 + 1])
{
	unsigned char hash[SHA256_DIGEST_LENGTH];
	SHA256_CTX sha256;

	out[0] = '\0';

	FUNC1(&sha256);
	FUNC2(&sha256, buf, len);
	FUNC0(hash, &sha256);
	FUNC3(hash, out);
}