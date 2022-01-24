#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct isns {int /*<<< orphan*/  i_addr; TYPE_1__* i_ai; } ;
struct TYPE_2__ {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct isns *isns)
{
	int s;

	s = FUNC3(isns->i_ai->ai_family, isns->i_ai->ai_socktype,
	    isns->i_ai->ai_protocol);
	if (s < 0) {
		FUNC2("socket(2) failed for %s", isns->i_addr);
		return (-1);
	}
	if (FUNC1(s, isns->i_ai->ai_addr, isns->i_ai->ai_addrlen)) {
		FUNC2("connect(2) failed for %s", isns->i_addr);
		FUNC0(s);
		return (-1);
	}
	return(s);
}