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
struct bio {int bio_cmd; } ;

/* Variables and functions */
#define  BIO_DELETE 131 
#define  BIO_GETATTR 130 
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bio *bp)
{

	switch (bp->bio_cmd) {
	case BIO_DELETE:
	case BIO_READ:
	case BIO_WRITE:
		FUNC0(bp);
		break;
	case BIO_GETATTR:
		FUNC1(bp, EOPNOTSUPP);
		break;
	default:
		FUNC1(bp, EOPNOTSUPP);
		return;
	}
	return;
}