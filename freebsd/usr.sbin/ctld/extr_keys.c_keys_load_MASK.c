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
struct pdu {int pdu_data_len; char* pdu_data; } ;
struct keys {char* keys_data; int keys_data_len; char** keys_values; int /*<<< orphan*/ ** keys_names; } ;

/* Variables and functions */
 int KEYS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char**,char*) ; 

void
FUNC8(struct keys *keys, const struct pdu *pdu)
{
	int i;
	char *pair;
	size_t pair_len;

	if (pdu->pdu_data_len == 0)
		return;

	if (pdu->pdu_data[pdu->pdu_data_len - 1] != '\0')
		FUNC3(1, "protocol error: key not NULL-terminated\n");

	FUNC0(keys->keys_data == NULL);
	keys->keys_data_len = pdu->pdu_data_len;
	keys->keys_data = FUNC4(keys->keys_data_len);
	if (keys->keys_data == NULL)
		FUNC2(1, "malloc");
	FUNC5(keys->keys_data, pdu->pdu_data, keys->keys_data_len);

	/*
	 * XXX: Review this carefully.
	 */
	pair = keys->keys_data;
	for (i = 0;; i++) {
		if (i >= KEYS_MAX)
			FUNC3(1, "too many keys received");

		pair_len = FUNC6(pair);

		keys->keys_values[i] = pair;
		keys->keys_names[i] = FUNC7(&keys->keys_values[i], "=");
		if (keys->keys_names[i] == NULL || keys->keys_values[i] == NULL)
			FUNC3(1, "malformed keys");
		FUNC1("key received: \"%s=%s\"",
		    keys->keys_names[i], keys->keys_values[i]);

		pair += pair_len + 1; /* +1 to skip the terminating '\0'. */
		if (pair == keys->keys_data + keys->keys_data_len)
			break;
		FUNC0(pair < keys->keys_data + keys->keys_data_len);
	}
}