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
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  k_opad ;
typedef  int /*<<< orphan*/  k_ipad ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_2__ {size_t blksz; int rawsz; int /*<<< orphan*/  (* final_fn ) (unsigned char*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,unsigned char*,int) ;int /*<<< orphan*/  (* init_fn ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int GIT_MAX_BLKSZ ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static void FUNC13(unsigned char *out,
		      const char *key_in, size_t key_len,
		      const char *text, size_t text_len)
{
	unsigned char key[GIT_MAX_BLKSZ];
	unsigned char k_ipad[GIT_MAX_BLKSZ];
	unsigned char k_opad[GIT_MAX_BLKSZ];
	int i;
	git_hash_ctx ctx;

	/* RFC 2104 2. (1) */
	FUNC1(key, '\0', GIT_MAX_BLKSZ);
	if (the_hash_algo->blksz < key_len) {
		the_hash_algo->init_fn(&ctx);
		the_hash_algo->update_fn(&ctx, key_in, key_len);
		the_hash_algo->final_fn(key, &ctx);
	} else {
		FUNC0(key, key_in, key_len);
	}

	/* RFC 2104 2. (2) & (5) */
	for (i = 0; i < sizeof(key); i++) {
		k_ipad[i] = key[i] ^ 0x36;
		k_opad[i] = key[i] ^ 0x5c;
	}

	/* RFC 2104 2. (3) & (4) */
	the_hash_algo->init_fn(&ctx);
	the_hash_algo->update_fn(&ctx, k_ipad, sizeof(k_ipad));
	the_hash_algo->update_fn(&ctx, text, text_len);
	the_hash_algo->final_fn(out, &ctx);

	/* RFC 2104 2. (6) & (7) */
	the_hash_algo->init_fn(&ctx);
	the_hash_algo->update_fn(&ctx, k_opad, sizeof(k_opad));
	the_hash_algo->update_fn(&ctx, out, the_hash_algo->rawsz);
	the_hash_algo->final_fn(out, &ctx);
}