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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  rc4state ;
struct TYPE_5__ {int sessions_collected; TYPE_1__* sessions; } ;
struct TYPE_4__ {int* keystream; int /*<<< orphan*/ * iv; } ;
typedef  TYPE_2__ PTW_attackstate ;

/* Variables and functions */
 size_t IVBYTES ; 
 int PTW_KSBYTES ; 
 int TESTBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(PTW_attackstate * state, uint8_t * key, int keylen) {
	int i;
        int j;
        uint8_t keybuf[PTW_KSBYTES];
        rc4state rc4state;

        for (i = 0; i < state->sessions_collected; i++) {
                FUNC0(&keybuf[IVBYTES], key, keylen);
                FUNC0(keybuf, state->sessions[i].iv, IVBYTES);
                FUNC1(keybuf, keylen+IVBYTES, &rc4state);
                for (j = 0; j < TESTBYTES; j++) {
                        if  ((FUNC2(&rc4state) ^ state->sessions[i].keystream[j]) != 0) {
                                return 0;
                        }
                }
        }
        return 1;
}