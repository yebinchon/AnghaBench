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
struct g_consumer {int dummy; } ;
struct bio {char const* bio_attribute; int bio_length; int bio_completed; void* bio_data; int /*<<< orphan*/ * bio_done; int /*<<< orphan*/  bio_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_GETATTR ; 
 int /*<<< orphan*/  G_T_BIO ; 
 int FUNC0 (struct bio*,char*) ; 
 struct bio* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 

int
FUNC5(const char *attr, struct g_consumer *cp, int *len, void *ptr)
{
	struct bio *bp;
	int error;

	FUNC4(G_T_BIO, "bio_getattr(%s)", attr);
	bp = FUNC1();
	bp->bio_cmd = BIO_GETATTR;
	bp->bio_done = NULL;
	bp->bio_attribute = attr;
	bp->bio_length = *len;
	bp->bio_data = ptr;
	FUNC3(bp, cp);
	error = FUNC0(bp, "ggetattr");
	*len = bp->bio_completed;
	FUNC2(bp);
	return (error);
}