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
struct pctrie_node {int dummy; } ;
struct pctrie {scalar_t__ pt_root; } ;

/* Variables and functions */

__attribute__((used)) static __inline struct pctrie_node *
FUNC0(struct pctrie *ptree)
{

	return ((struct pctrie_node *)ptree->pt_root);
}