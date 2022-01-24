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
typedef  scalar_t__ u_int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2(const void *gen, size_t genlen, const void *ref, size_t reflen)
{
	int i;

	for (i = 0; i < genlen; i++)
		if (((const u_int8_t *)gen)[i] != ((const u_int8_t *)ref)[i]) {
			FUNC1("first difference at byte %u\n", i);
			break;
		}
	FUNC0("Generated", gen, genlen);
	FUNC0("Reference", ref, reflen);
}