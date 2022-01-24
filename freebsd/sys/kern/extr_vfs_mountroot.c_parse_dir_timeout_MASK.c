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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,char**) ; 
 long root_mount_timeout ; 
 long FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(char **conf)
{
	char *tok, *endtok;
	long secs;
	int error;

	error = FUNC1(conf, &tok);
	if (error)
		return (error);

	secs = FUNC2(tok, &endtok, 0);
	error = (secs < 0 || *endtok != '\0') ? EINVAL : 0;
	if (!error)
		root_mount_timeout = secs;
	FUNC0(tok, M_TEMP);
	return (error);
}