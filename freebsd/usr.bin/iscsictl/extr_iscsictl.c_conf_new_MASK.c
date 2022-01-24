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
struct conf {int /*<<< orphan*/  conf_targets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct conf* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

struct conf *
FUNC3(void)
{
	struct conf *conf;

	conf = FUNC1(1, sizeof(*conf));
	if (conf == NULL)
		FUNC2(1, "calloc");

	FUNC0(&conf->conf_targets);

	return (conf);
}