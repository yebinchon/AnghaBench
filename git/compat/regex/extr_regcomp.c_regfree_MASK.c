#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * translate; int /*<<< orphan*/ * fastmap; scalar_t__ allocated; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ regex_t ;
typedef  int /*<<< orphan*/  re_dfa_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3 (regex_t *preg)
{
  re_dfa_t *dfa = (re_dfa_t *) preg->buffer;
  if (FUNC0 (dfa != NULL, 1))
    FUNC1 (dfa);
  preg->buffer = NULL;
  preg->allocated = 0;

  FUNC2 (preg->fastmap);
  preg->fastmap = NULL;

  FUNC2 (preg->translate);
  preg->translate = NULL;
}