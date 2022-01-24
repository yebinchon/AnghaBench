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
typedef  int /*<<< orphan*/  uint8_t ;
struct poly1305_kat {int /*<<< orphan*/  vector_name; int /*<<< orphan*/  test_msg_len; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  exptag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  CRYPTO_POLY1305 ; 
 int POLY1305_HASH_LEN ; 
 int POLY1305_KEY_LEN ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 size_t FUNC7 (struct poly1305_kat*) ; 
 int /*<<< orphan*/  FUNC8 (struct poly1305_kat const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct poly1305_kat* rfc7539_kats ; 

__attribute__((used)) static void
FUNC9(int crid, const char *modname)
{
	uint8_t comptag[POLY1305_HASH_LEN], exptag[POLY1305_HASH_LEN],
	    key[POLY1305_KEY_LEN], msg[512];
	int fd, ses;
	size_t i;

	FUNC1(modname);
	FUNC1("cryptodev");

	fd = FUNC5();

	for (i = 0; i < FUNC7(rfc7539_kats); i++) {
		const struct poly1305_kat *kat;

		kat = &rfc7539_kats[i];
		FUNC8(kat, key, msg, exptag);

		ses = FUNC2(fd, CRYPTO_POLY1305, crid, key, sizeof(key));

		FUNC4(fd, ses, msg, kat->test_msg_len, comptag);
		FUNC0(FUNC6(comptag, exptag, sizeof(exptag)), 0,
		    "KAT %s failed:", kat->vector_name);

		FUNC3(fd, ses);
	}
}