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
typedef  int UBYTE ;
struct TYPE_2__ {scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIRST_X ; 
 scalar_t__ FIRST_Y ; 
 scalar_t__ TITLE_Y ; 
 int /*<<< orphan*/  UNSIGNED ; 
 int /*<<< orphan*/  VAL_X ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* params ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

UBYTE FUNC5(UBYTE mode)
{
  UBYTE i;

  FUNC0();
  FUNC2(FIRST_X, TITLE_Y);
  FUNC3(params[0].name);

  for(i = 0; params[i+1].name; i++) {
    FUNC2(FIRST_X, FIRST_Y+i);
    FUNC3(params[i+1].name);
    FUNC2(VAL_X, FIRST_Y+i);
    FUNC4(FUNC1(mode, i), 10, UNSIGNED);
  }
  return i-1;
}