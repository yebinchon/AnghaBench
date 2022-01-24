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
typedef  char uint8_t ;
struct poly1305_kat {int /*<<< orphan*/  expected_tag_hex; int /*<<< orphan*/  test_msg_len; int /*<<< orphan*/  test_msg_hex; int /*<<< orphan*/  test_key_hex; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLY1305_HASH_LEN ; 
 int /*<<< orphan*/  POLY1305_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct poly1305_kat const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(const struct poly1305_kat *kat,
    uint8_t key[__min_size(POLY1305_KEY_LEN)], char *msg,
    uint8_t exptag[FUNC1(POLY1305_HASH_LEN)])
{
	FUNC0(kat, kat->test_key_hex, key, POLY1305_KEY_LEN);
	FUNC0(kat, kat->test_msg_hex, msg, kat->test_msg_len);
	FUNC0(kat, kat->expected_tag_hex, exptag, POLY1305_HASH_LEN);
}