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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  keylen; } ;
typedef  TYPE_1__ sctp_key_t ;

/* Variables and functions */

__attribute__((used)) static uint32_t
FUNC0(sctp_key_t *key)
{
	if (key != NULL)
		return (key->keylen);
	else
		return (0);
}