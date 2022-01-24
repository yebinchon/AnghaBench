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
 int M_WAITOK ; 
 int M_ZERO ; 
 struct proto_busdma* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

struct proto_busdma *
FUNC2(struct proto_softc *sc)
{
	struct proto_busdma *busdma;

	busdma = FUNC0(sizeof(*busdma), M_PROTO_BUSDMA, M_WAITOK | M_ZERO);
	FUNC1(&busdma->sxlck, "proto-busdma");
	return (busdma);
}