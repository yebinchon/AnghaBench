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
struct vtballoon_softc {int /*<<< orphan*/  vtballoon_page_frames; } ;
typedef  void virtqueue ;
struct sglist_seg {int dummy; } ;
struct sglist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtballoon_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtballoon_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtballoon_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtballoon_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sglist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sglist*,int,struct sglist_seg*) ; 
 void* FUNC7 (void*,int /*<<< orphan*/ *) ; 
 int FUNC8 (void*,void*,struct sglist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

__attribute__((used)) static void
FUNC10(struct vtballoon_softc *sc, struct virtqueue *vq,
    int npages)
{
	struct sglist sg;
	struct sglist_seg segs[1];
	void *c;
	int error;

	FUNC6(&sg, 1, segs);

	error = FUNC5(&sg, sc->vtballoon_page_frames,
	    npages * sizeof(uint32_t));
	FUNC0(error == 0, ("error adding page frames to sglist"));

	error = FUNC8(vq, vq, &sg, 1, 0);
	FUNC0(error == 0, ("error enqueuing page frames to virtqueue"));
	FUNC9(vq);

	/*
	 * Inflate and deflate operations are done synchronously. The
	 * interrupt handler will wake us up.
	 */
	FUNC1(sc);
	while ((c = FUNC7(vq, NULL)) == NULL)
		FUNC4(sc, FUNC2(sc), 0, "vtbspf", 0);
	FUNC3(sc);

	FUNC0(c == vq, ("unexpected balloon operation response"));
}