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
struct TYPE_5__ {int n_keys; TYPE_1__* key; } ;
typedef  TYPE_2__ keymap_t ;
struct TYPE_4__ {int spcl; int* map; scalar_t__ flgs; } ;

/* Variables and functions */
 int NUM_STATES ; 
 int SPECIAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(char *name, keymap_t *keymap)
{
	int	i, j;

	FUNC1("static keymap_t keymap_%s = { 0x%02x, {\n",
	       name, (unsigned)keymap->n_keys);
	FUNC1(
"/*                                                         alt\n"
" * scan                       cntrl          alt    alt   cntrl\n"
" * code  base   shift  cntrl  shift   alt   shift  cntrl  shift    spcl flgs\n"
" * ---------------------------------------------------------------------------\n"
" */\n");
	for (i = 0; i < keymap->n_keys; i++) {
		FUNC1("/*%02x*/{{", i);
		for (j = 0; j < NUM_STATES; j++) {
			if (keymap->key[i].spcl & (0x80 >> j))
				FUNC0(keymap->key[i].map[j] | SPECIAL);
			else
				FUNC0(keymap->key[i].map[j]);
		}
		FUNC1("}, 0x%02X,0x%02X },\n",
		       (unsigned)keymap->key[i].spcl, 
		       (unsigned)keymap->key[i].flgs);
	}
	FUNC1("} };\n\n");
}