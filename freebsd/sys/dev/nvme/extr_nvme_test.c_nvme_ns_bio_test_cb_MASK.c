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
struct mtx {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtx*) ; 
 struct mtx* FUNC1 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 

__attribute__((used)) static void
FUNC4(struct bio *bio)
{
	struct mtx *mtx;

	mtx = FUNC1(mtxpool_sleep, bio);
	FUNC0(mtx);
	FUNC3(bio);
	FUNC2(mtx);
}