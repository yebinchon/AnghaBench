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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource* CIS_CONFIG_SPACE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(device_t cbdev, device_t child, struct resource *res,
    uint32_t start, uint32_t *off, int *tupleid, int *len,
    uint8_t *tupledata)
{
	if (res == CIS_CONFIG_SPACE)
		return (FUNC0(cbdev, child, start, off,
		    tupleid, len, tupledata));
	return (FUNC1(cbdev, res, start, off, tupleid, len,
	    tupledata));
}