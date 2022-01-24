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
typedef  int /*<<< orphan*/  uint32_t ;
struct bnxt_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int FUNC2 (struct bnxt_softc*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct bnxt_softc *softc, void *msg, uint32_t msg_len)
{
	int rc;

	FUNC0(softc);
	rc = FUNC2(softc, msg, msg_len);
	FUNC1(softc);
	return rc;
}