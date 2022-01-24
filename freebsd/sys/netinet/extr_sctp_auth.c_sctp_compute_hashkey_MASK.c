#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ keylen; int /*<<< orphan*/ * key; } ;
typedef  TYPE_1__ sctp_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

sctp_key_t *
FUNC4(sctp_key_t *key1, sctp_key_t *key2, sctp_key_t *shared)
{
	uint32_t keylen;
	sctp_key_t *new_key;
	uint8_t *key_ptr;

	keylen = FUNC3(key1) + FUNC3(key2) +
	    FUNC3(shared);

	if (keylen > 0) {
		/* get space for the new key */
		new_key = FUNC1(keylen);
		if (new_key == NULL) {
			/* out of memory */
			return (NULL);
		}
		new_key->keylen = keylen;
		key_ptr = new_key->key;
	} else {
		/* all keys empty/null?! */
		return (NULL);
	}

	/* concatenate the keys */
	if (FUNC2(key1, key2) <= 0) {
		/* key is shared + key1 + key2 */
		if (FUNC3(shared)) {
			FUNC0(key_ptr, shared->key, shared->keylen);
			key_ptr += shared->keylen;
		}
		if (FUNC3(key1)) {
			FUNC0(key_ptr, key1->key, key1->keylen);
			key_ptr += key1->keylen;
		}
		if (FUNC3(key2)) {
			FUNC0(key_ptr, key2->key, key2->keylen);
		}
	} else {
		/* key is shared + key2 + key1 */
		if (FUNC3(shared)) {
			FUNC0(key_ptr, shared->key, shared->keylen);
			key_ptr += shared->keylen;
		}
		if (FUNC3(key2)) {
			FUNC0(key_ptr, key2->key, key2->keylen);
			key_ptr += key2->keylen;
		}
		if (FUNC3(key1)) {
			FUNC0(key_ptr, key1->key, key1->keylen);
		}
	}
	return (new_key);
}