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
struct wtap_medium {int /*<<< orphan*/  md_mtx; int /*<<< orphan*/  md_pktbuf; } ;
struct packet {int dummy; } ;

/* Variables and functions */
 struct packet* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pf_list ; 

struct packet *
FUNC4(struct wtap_medium *md)
{
	struct packet *p;

	FUNC2(&md->md_mtx);
	p = FUNC0(&md->md_pktbuf);
	if (p == NULL){
		FUNC3(&md->md_mtx);
		return NULL;
	}

	FUNC1(&md->md_pktbuf, pf_list);
	FUNC3(&md->md_mtx);
	return p;
}