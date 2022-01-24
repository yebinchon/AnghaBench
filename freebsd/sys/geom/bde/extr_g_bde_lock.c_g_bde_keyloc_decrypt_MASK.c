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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  keyInstance ;
typedef  int /*<<< orphan*/  cipherInstance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DIR_DECRYPT ; 
 int /*<<< orphan*/  G_BDE_KKEYBITS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(u_char *sha2, void *input, uint64_t *output)
{
	keyInstance ki;
	cipherInstance ci;
	u_char buf[16];

	FUNC1(&ci);
	FUNC2(&ki, DIR_DECRYPT, G_BDE_KKEYBITS, sha2 + 0);
	FUNC0(&ci, &ki, input, buf, sizeof buf);
	*output = FUNC4(buf);
	FUNC3(buf, sizeof buf);
	FUNC3(&ci, sizeof ci);
	FUNC3(&ki, sizeof ki);
	return(0);
}