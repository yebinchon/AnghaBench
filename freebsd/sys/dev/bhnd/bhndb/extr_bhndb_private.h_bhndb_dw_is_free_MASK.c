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
struct bhndb_resources {int /*<<< orphan*/  dwa_freelist; } ;
struct bhndb_dw_alloc {int /*<<< orphan*/  rnid; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC3(struct bhndb_resources *br, struct bhndb_dw_alloc *dwa)
{
	bool is_free = FUNC1(&dwa->refs);

	FUNC0(is_free == !FUNC2(br->dwa_freelist, dwa->rnid),
	    ("refs out of sync with free list"));

	return (is_free);
}