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
struct commit {int dummy; } ;
struct blame_origin {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  blame_suspects ; 
 struct blame_origin** FUNC0 (int /*<<< orphan*/ *,struct commit*) ; 

struct blame_origin *FUNC1(struct commit *commit)
{
	struct blame_origin **result;

	result = FUNC0(&blame_suspects, commit);

	return result ? *result : NULL;
}