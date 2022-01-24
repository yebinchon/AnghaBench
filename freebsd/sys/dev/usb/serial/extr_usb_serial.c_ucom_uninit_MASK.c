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
struct unrhdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct unrhdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ucom_mtx ; 
 struct unrhdr* ucom_unrhdr ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct unrhdr *hdr;
	hdr = ucom_unrhdr;
	ucom_unrhdr = NULL;

	FUNC0("\n");

	if (hdr != NULL)
		FUNC1(hdr);

	FUNC2(&ucom_mtx);
}