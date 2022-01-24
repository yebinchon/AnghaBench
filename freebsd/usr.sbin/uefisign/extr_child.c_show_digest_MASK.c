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
struct executable {unsigned char x_digest_len; scalar_t__* x_digest; } ;

/* Variables and functions */
 char* DIGEST ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(const struct executable *x)
{
	int i;

	FUNC0("computed %s digest ", DIGEST);
	for (i = 0; i < (int)x->x_digest_len; i++)
		FUNC0("%02x", (unsigned char)x->x_digest[i]);
	FUNC0("; digest len %u\n", x->x_digest_len);
}