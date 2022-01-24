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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(const char* cmd)
{
	FUNC1("usage: %s [-czsbv] [-d dev] [-a algorithm] [count] [size ...]\n",
		cmd);
	FUNC1("where algorithm is one of:\n");
	FUNC1("    null des 3des (default) blowfish cast skipjack rij\n");
	FUNC1("    aes aes192 aes256 chacha20 md5 sha1 sha256 sha384 sha512\n");
	FUNC1("    blake2b blake2s\n");
	FUNC1(" or an encryption algorithm concatented with authentication\n");
	FUNC1(" algorithm with '+' in the middle, e.g., aes+sha1.\n");
	FUNC1("count is the number of encrypt/decrypt ops to do\n");
	FUNC1("size is the number of bytes of text to encrypt+decrypt\n");
	FUNC1("\n");
	FUNC1("-c check the results (slows timing)\n");
	FUNC1("-d use specific device, specify 'soft' for testing software implementations\n");
	FUNC1("\tNOTE: to use software you must set:\n\t sysctl kern.cryptodevallowsoft=1\n");
	FUNC1("-z run all available algorithms on a variety of sizes\n");
	FUNC1("-v be verbose\n");
	FUNC1("-b mark operations for batching\n");
	FUNC1("-p profile kernel crypto operation (must be root)\n");
	FUNC1("-t n for n threads and run tests concurrently\n");
	FUNC0(-1);
}