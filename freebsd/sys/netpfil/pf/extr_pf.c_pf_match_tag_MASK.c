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
struct pf_rule {int match_tag; scalar_t__ match_tag_not; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */

int
FUNC0(struct mbuf *m, struct pf_rule *r, int *tag, int mtag)
{
	if (*tag == -1)
		*tag = mtag;

	return ((!r->match_tag_not && r->match_tag == *tag) ||
	    (r->match_tag_not && r->match_tag != *tag));
}