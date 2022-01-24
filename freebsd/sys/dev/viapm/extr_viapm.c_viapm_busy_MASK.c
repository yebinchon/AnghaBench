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
typedef  int u_char ;
struct viapm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMBHST ; 
 int SMBHST_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(struct viapm_softc *viapm)
{
	u_char sts;

	sts = FUNC1(SMBHST);

	FUNC0(FUNC2("viapm: idle? STS=0x%x\n", sts));

	return (sts & SMBHST_BUSY);
}