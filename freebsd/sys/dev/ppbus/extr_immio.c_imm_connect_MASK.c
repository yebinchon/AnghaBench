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
 int /*<<< orphan*/  CPP_PARAM ; 
 int /*<<< orphan*/  CPP_S1 ; 
 int /*<<< orphan*/  CPP_S2 ; 
 int /*<<< orphan*/  CPP_S3 ; 
 int /*<<< orphan*/  DECLARE_CPP_MICROSEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int VP0_ECONNECT ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  cpp_microseq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char,char,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct vpoio_data *vpo, int how, int *disconnected, int request_bus)
{
	DECLARE_CPP_MICROSEQ;

	device_t ppbus = FUNC1(vpo->vpo_dev);
	char s1, s2, s3;
	int error;
	int ret;

	/* all should be ok */
	if (disconnected)
		*disconnected = 0;

	if (request_bus)
		if ((error = FUNC5(ppbus, vpo->vpo_dev, how)))
			return (error);

	FUNC3(cpp_microseq, 3, CPP_S1, (void *)&s1,
			CPP_S2, (void *)&s2, CPP_S3, (void *)&s3);

	/* select device 0 in compatible mode */
	FUNC3(cpp_microseq, 1, CPP_PARAM, 0xe0);
	FUNC4(ppbus, vpo->vpo_dev, cpp_microseq, &ret);

	/* disconnect all devices */
	FUNC3(cpp_microseq, 1, CPP_PARAM, 0x30);
	FUNC4(ppbus, vpo->vpo_dev, cpp_microseq, &ret);

	if (FUNC0(ppbus))
		FUNC3(cpp_microseq, 1, CPP_PARAM, 0x28);
	else
		FUNC3(cpp_microseq, 1, CPP_PARAM, 0xe0);

	FUNC4(ppbus, vpo->vpo_dev, cpp_microseq, &ret);

	if ((s1 != (char)0xb8 || s2 != (char)0x18 || s3 != (char)0x30)) {
		if (bootverbose)
			FUNC2(vpo->vpo_dev,
			    "(connect) s1=0x%x s2=0x%x, s3=0x%x\n",
			    s1 & 0xff, s2 & 0xff, s3 & 0xff);
		if (disconnected)
			*disconnected = VP0_ECONNECT;
	}

	return (0);
}