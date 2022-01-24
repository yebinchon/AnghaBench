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
struct fcrypt {int /*<<< orphan*/  sesn; int /*<<< orphan*/  csessions; } ;
struct csession {scalar_t__ ses; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct csession*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static struct csession *
FUNC1(struct fcrypt *fcr, struct csession *cse)
{
	FUNC0(&fcr->csessions, cse, next);
	cse->ses = fcr->sesn++;
	return (cse);
}