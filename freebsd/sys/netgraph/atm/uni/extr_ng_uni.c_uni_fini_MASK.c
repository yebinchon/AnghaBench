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
typedef  size_t u_int ;
struct unimem_debug {char* file; int lno; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 struct unimem_debug* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct unimem_debug*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_UNI ; 
 size_t UNIMEM_TYPES ; 
 int /*<<< orphan*/  FUNC2 (struct unimem_debug*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nguni_freemem ; 
 int /*<<< orphan*/  nguni_unilist_mtx ; 
 int /*<<< orphan*/ * nguni_usedmem ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,char*,int) ; 
 char** unimem_names ; 

__attribute__((used)) static void
FUNC5(void)
{
	u_int type;
	struct unimem_debug *h;

	for (type = 0; type < UNIMEM_TYPES; type++) {
		while ((h = FUNC0(&nguni_freemem[type])) != NULL) {
			FUNC1(h, link);
			FUNC2(h, M_UNI);
		}

		while ((h = FUNC0(&nguni_usedmem[type])) != NULL) {
			FUNC1(h, link);
			FUNC4("ng_uni: %s in use: %p (%s,%u)\n",
			    unimem_names[type], (caddr_t)h->data,
			    h->file, h->lno);
			FUNC2(h, M_UNI);
		}
	}

	FUNC3(&nguni_unilist_mtx);
}