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
struct alg {scalar_t__ type; char* name; int /*<<< orphan*/  evp_md; int /*<<< orphan*/  evp_cipher; int /*<<< orphan*/  mac; int /*<<< orphan*/  cipher; } ;
typedef  int /*<<< orphan*/  authenc ;

/* Variables and functions */
 scalar_t__ T_AUTHENC ; 
 scalar_t__ T_BLKCIPHER ; 
 scalar_t__ T_HMAC ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct alg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct alg *
FUNC3(struct alg *cipher, struct alg *hmac)
{
	static struct alg authenc;
	char *name;

	FUNC1(cipher->type == T_BLKCIPHER);
	FUNC1(hmac->type == T_HMAC);
	FUNC2(&authenc, 0, sizeof(authenc));
	FUNC0(&name, "%s+%s", cipher->name, hmac->name);
	authenc.name = name;
	authenc.cipher = cipher->cipher;
	authenc.mac = hmac->mac;
	authenc.type = T_AUTHENC;
	authenc.evp_cipher = cipher->evp_cipher;
	authenc.evp_md = hmac->evp_md;
	return (&authenc);
}