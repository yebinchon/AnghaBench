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
typedef  int /*<<< orphan*/  HASHINFO ;
typedef  int /*<<< orphan*/  DB ;

/* Variables and functions */
 int /*<<< orphan*/  DB_HASH ; 
 int /*<<< orphan*/  PERM_SECURE ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static DB *
FUNC1(char *path, int flags)
{
	extern HASHINFO openinfo;

	return(FUNC0(path, flags, PERM_SECURE, DB_HASH, &openinfo));
}