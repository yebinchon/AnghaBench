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
struct in6_addr {int dummy; } ;
struct clip_entry {int /*<<< orphan*/  refcount; } ;
struct adapter {int /*<<< orphan*/  clip_table_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct clip_entry* FUNC2 (struct adapter*,struct in6_addr*) ; 

struct clip_entry *
FUNC3(struct adapter *sc, struct in6_addr *lip, struct clip_entry *ce)
{

#ifdef INET6
	mtx_lock(&sc->clip_table_lock);
	if (ce == NULL)
		ce = search_lip(sc, lip);
	if (ce != NULL)
		ce->refcount++;
	mtx_unlock(&sc->clip_table_lock);

	return (ce);
#else
	return (NULL);
#endif
}