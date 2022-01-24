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
typedef  int /*<<< orphan*/  u32 ;
struct iavf_sc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IAVF_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct iavf_sc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct iavf_sc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct iavf_sc *sc, u32 op)
{
	int error = 0;

	error = FUNC1(sc, op);
	if (error != 0)
		FUNC0(sc, "Error sending %b: %d\n", op, IAVF_FLAGS, error);

	return (error);
}