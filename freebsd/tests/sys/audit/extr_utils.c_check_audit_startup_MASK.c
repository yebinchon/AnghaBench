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
struct pollfd {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pollfd*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct pollfd fd[], const char *auditrgx, FILE *pipestream){
	FUNC0(fd, auditrgx, pipestream);
}