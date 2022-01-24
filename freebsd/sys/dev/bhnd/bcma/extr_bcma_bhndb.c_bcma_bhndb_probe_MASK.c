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
struct bhnd_chipid {scalar_t__ chip_type; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct bhnd_chipid* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ BHND_CHIPTYPE_BCMA ; 
 int ENXIO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bhnd_chipid const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	const struct bhnd_chipid	*cid;
	int				 error;

	/* Defer to default probe implementation */
	if ((error = FUNC1(dev)) > 0)
		return (error);

	/* Check bus type */
	cid = FUNC0(FUNC3(dev), dev);
	if (cid->chip_type != BHND_CHIPTYPE_BCMA)
		return (ENXIO);

	/* Set device description */
	FUNC2(dev, cid);

	return (error);
}