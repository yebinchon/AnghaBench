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
struct executable {scalar_t__ x_buf; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct executable*,scalar_t__,size_t,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(struct executable *x, EVP_MD_CTX *mdctx, off_t off, size_t len)
{
	int ok;

	FUNC3(x, off, len, "chunk");

	ok = FUNC1(mdctx, x->x_buf + off, len);
	if (ok == 0) {
		FUNC0(stderr);
		FUNC2(1, "EVP_DigestUpdate(3) failed");
	}
}