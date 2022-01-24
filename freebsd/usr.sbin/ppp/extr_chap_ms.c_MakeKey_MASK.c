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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  DES_cblock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(u_char *key, u_char *des_key)
{
    des_key[0] = FUNC1(key,  0);
    des_key[1] = FUNC1(key,  7);
    des_key[2] = FUNC1(key, 14);
    des_key[3] = FUNC1(key, 21);
    des_key[4] = FUNC1(key, 28);
    des_key[5] = FUNC1(key, 35);
    des_key[6] = FUNC1(key, 42);
    des_key[7] = FUNC1(key, 49);

    FUNC0((DES_cblock *)des_key);
}