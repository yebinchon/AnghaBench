#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  reg_errcode_t ;
struct TYPE_5__ {int nodes_len; scalar_t__ inveclosures; TYPE_1__* eclosures; } ;
typedef  TYPE_2__ re_dfa_t ;
struct TYPE_4__ {int* elems; int nelem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 int /*<<< orphan*/  REG_NOERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static reg_errcode_t
FUNC3 (re_dfa_t *dfa)
{
  int src, idx, ret;
  for (idx = 0; idx < dfa->nodes_len; ++idx)
    FUNC1 (dfa->inveclosures + idx);

  for (src = 0; src < dfa->nodes_len; ++src)
    {
      int *elems = dfa->eclosures[src].elems;
      for (idx = 0; idx < dfa->eclosures[src].nelem; ++idx)
	{
	  ret = FUNC2 (dfa->inveclosures + elems[idx], src);
	  if (FUNC0 (ret == -1, 0))
	    return REG_ESPACE;
	}
    }

  return REG_NOERROR;
}