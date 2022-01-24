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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct adb_mouse_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct adb_mouse_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  adb_tapping_sysctl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int*) ; 
 struct adb_mouse_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(device_t dev)
{
	struct adb_mouse_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;

	size_t r1_len;
	u_char r1[8];
	u_char r2[8];

	sc = FUNC4(dev);

	r1_len = FUNC2(dev, 1, r1);

	/* An Extended Mouse register1 must return 8 bytes. */
	if (r1_len != 8)
		return;

	if((r1[6] != 0x0d))
	{
		r1[6] = 0x0d;
		
		FUNC3(dev, 1, 8, r1); 
      
		r1_len = FUNC2(dev, 1, r1);
      
		if (r1[6] != 0x0d)
		{
			FUNC7(dev, "ADB Mouse = 0x%x "
				      "(non-Extended Mode)\n", r1[6]);
			return;
		} else {
			FUNC7(dev, "ADB Mouse = 0x%x "
				      "(Extended Mode)\n", r1[6]);
			
			/* Set ADB Extended Features to default values,
			   enabled. */
			r2[0] = 0x19; /* Clicking: 0x19 disabled 0x99 enabled */
			r2[1] = 0x94; /* Dragging: 0x14 disabled 0x94 enabled */
			r2[2] = 0x19;
			r2[3] = 0xff; /* DragLock: 0xff disabled 0xb2 enabled */
			r2[4] = 0xb2;
			r2[5] = 0x8a;
			r2[6] = 0x1b;
		       
			r2[7] = 0x57;  /* 0x57 bits 3:0 for W mode */
			
			FUNC3(dev, 2, 8, r2);
			
		}
	}

	/*
	 * Set up sysctl
	 */
	ctx = FUNC5(dev);
	tree = FUNC6(dev);
	FUNC0(ctx, FUNC1(tree), OID_AUTO, "tapping",
			CTLTYPE_INT | CTLFLAG_RW, sc, 0, adb_tapping_sysctl,
			"I", "Tapping the pad causes button events");
	return;
}