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
struct var {char const* v_name; struct var* v_link; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*) ; 
 size_t FUNC1 (char const*) ; 
 struct var** variables ; 

struct var *
FUNC2(const char *name)
{
	struct var *vp;

	for (vp = variables[FUNC1(name)]; vp != NULL; vp = vp->v_link)
		if (*vp->v_name == *name && FUNC0(vp->v_name, name))
			return (vp);
	return (NULL);
}