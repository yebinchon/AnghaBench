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
struct vtscsi_softc {int dummy; } ;
struct vtscsi_request {int dummy; } ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  VTSCSI_TRACE ; 
 struct vtscsi_request* FUNC1 (struct virtqueue*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtscsi_softc*,struct vtscsi_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*,struct virtqueue*) ; 

__attribute__((used)) static void
FUNC5(struct vtscsi_softc *sc, struct virtqueue *vq)
{
	struct vtscsi_request *req;
	int last;

	last = 0;

	FUNC4(sc, VTSCSI_TRACE, "vq=%p\n", vq);

	while ((req = FUNC1(vq, &last)) != NULL)
		FUNC3(sc, req);

	FUNC0(FUNC2(vq), ("virtqueue not empty"));
}