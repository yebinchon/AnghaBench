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
struct vpoio_data {int /*<<< orphan*/  vpo_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DECLARE_NEGOCIATE_MICROSEQ ; 
 int /*<<< orphan*/  NEGOCIATED_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int VP0_ENEGOCIATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  negociate_microseq ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC6(struct vpoio_data *vpo)
{
	DECLARE_NEGOCIATE_MICROSEQ;
	device_t ppbus = FUNC2(vpo->vpo_dev);
	int negociate_mode;
	int ret;

	if (FUNC0(ppbus))
		negociate_mode = 0;
	else if (FUNC1(ppbus))
		negociate_mode = 1;
	else
		return (0);

#if 0 /* XXX use standalone code not to depend on ppb_1284 code yet */
	ret = ppb_1284_negociate(ppbus, negociate_mode);

	if (ret)
		return (VP0_ENEGOCIATE);
#endif

	FUNC4(negociate_microseq, 1,
			NEGOCIATED_MODE, negociate_mode);

	FUNC5(ppbus, vpo->vpo_dev, negociate_microseq, &ret);

	return (ret);
}