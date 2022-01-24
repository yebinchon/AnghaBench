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
struct fha_hash_entry {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fha_hash_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct fha_hash_entry*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct fha_hash_entry *e)
{

	FUNC2(e->mtx, MA_OWNED);
	FUNC0(e, link);
	FUNC1(e);
}