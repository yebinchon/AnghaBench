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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
typedef  int u_int ;
typedef  int lba_t ;

/* Variables and functions */
 unsigned int QCOW1_CLSTR_LOG2SZ ; 
 unsigned int QCOW2_CLSTR_LOG2SZ ; 
#define  QCOW_VERSION_1 129 
#define  QCOW_VERSION_2 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int clstr_log2sz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int secsz ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC4(lba_t imgsz, u_int version)
{
	uint64_t imagesz;

	switch (version) {
	case QCOW_VERSION_1:
		clstr_log2sz = QCOW1_CLSTR_LOG2SZ;
		break;
	case QCOW_VERSION_2:
		clstr_log2sz = QCOW2_CLSTR_LOG2SZ;
		break;
	default:
		FUNC0(0);
	}

	imagesz = FUNC3(imgsz * secsz);

	if (verbose)
		FUNC1(stderr, "QCOW: image size = %jd, cluster size = %u\n",
		    (uintmax_t)imagesz, (u_int)(1U << clstr_log2sz));

	return (FUNC2(imagesz / secsz));
}