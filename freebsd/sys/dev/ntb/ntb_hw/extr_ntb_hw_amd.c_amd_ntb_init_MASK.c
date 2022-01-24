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
struct amd_ntb_softc {scalar_t__ conn_type; } ;

/* Variables and functions */
 scalar_t__ NTB_CONN_PRI ; 
 scalar_t__ FUNC0 (struct amd_ntb_softc*) ; 
 int FUNC1 (struct amd_ntb_softc*) ; 
 int FUNC2 (struct amd_ntb_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC4(struct amd_ntb_softc *ntb)
{
	int rc = 0;

	ntb->conn_type = FUNC0(ntb);
	FUNC3(0, "AMD NTB Side: %s\n",
	    (ntb->conn_type == NTB_CONN_PRI)? "PRIMARY" : "SECONDARY");

	rc = FUNC1(ntb);
	if (rc != 0)
		return (rc);

	rc = FUNC2(ntb);
	if (rc != 0)
		return (rc);

	return (0);
}