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
struct rchap {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct rchap*,void**,size_t*) ; 

char *
FUNC3(struct rchap *rchap)
{
	void *response;
	size_t response_len;
	char *chap_r;

	FUNC2(rchap, &response, &response_len);
	chap_r = FUNC0(response, response_len);
	FUNC1(response);

	return (chap_r);
}