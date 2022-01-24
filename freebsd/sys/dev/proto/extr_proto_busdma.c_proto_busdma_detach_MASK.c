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
struct proto_softc {int dummy; } ;
struct proto_busdma {int /*<<< orphan*/  sxlck; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PROTO_BUSDMA ; 
 int /*<<< orphan*/  FUNC0 (struct proto_busdma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proto_softc*,struct proto_busdma*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct proto_softc *sc, struct proto_busdma *busdma)
{

	FUNC1(sc, busdma);
	FUNC2(&busdma->sxlck);
	FUNC0(busdma, M_PROTO_BUSDMA);
	return (0);
}