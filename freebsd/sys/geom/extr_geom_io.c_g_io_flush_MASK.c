#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct g_consumer {TYPE_1__* provider; } ;
struct bio {int /*<<< orphan*/ * bio_data; scalar_t__ bio_length; int /*<<< orphan*/  bio_offset; int /*<<< orphan*/ * bio_attribute; int /*<<< orphan*/ * bio_done; int /*<<< orphan*/  bio_flags; int /*<<< orphan*/  bio_cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  mediasize; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_FLUSH ; 
 int /*<<< orphan*/  BIO_ORDERED ; 
 int /*<<< orphan*/  G_T_BIO ; 
 int FUNC0 (struct bio*,char*) ; 
 struct bio* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct g_consumer *cp)
{
	struct bio *bp;
	int error;

	FUNC4(G_T_BIO, "bio_flush(%s)", cp->provider->name);
	bp = FUNC1();
	bp->bio_cmd = BIO_FLUSH;
	bp->bio_flags |= BIO_ORDERED;
	bp->bio_done = NULL;
	bp->bio_attribute = NULL;
	bp->bio_offset = cp->provider->mediasize;
	bp->bio_length = 0;
	bp->bio_data = NULL;
	FUNC3(bp, cp);
	error = FUNC0(bp, "gflush");
	FUNC2(bp);
	return (error);
}