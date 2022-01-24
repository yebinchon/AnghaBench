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
typedef  char uint8_t ;
typedef  int uint32_t ;
struct krb5_key_state {int /*<<< orphan*/  ks_key; TYPE_1__* ks_class; } ;
struct TYPE_2__ {scalar_t__ ec_type; } ;

/* Variables and functions */
 scalar_t__ ETYPE_ARCFOUR_HMAC_MD5_56 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static void
FUNC3(const struct krb5_key_state *ks, uint32_t usage,
    uint8_t *newkey)
{
	uint8_t t[4];

	t[0] = (usage >> 24);
	t[1] = (usage >> 16);
	t[2] = (usage >> 8);
	t[3] = (usage >> 0);
	if (ks->ks_class->ec_type == ETYPE_ARCFOUR_HMAC_MD5_56) {
		uint8_t L40[14] = "fortybits";
		FUNC1(t, L40 + 10, 4);
		FUNC0(ks->ks_key, L40, 14, newkey);
		FUNC2(newkey + 7, 0xab, 9);
	} else {
		FUNC0(ks->ks_key, t, 4, newkey);
	}
}