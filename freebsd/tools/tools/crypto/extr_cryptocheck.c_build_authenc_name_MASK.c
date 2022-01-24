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
struct alg {int dummy; } ;

/* Variables and functions */
 struct alg* FUNC0 (struct alg*,struct alg*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 struct alg* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,char) ; 
 char* FUNC5 (char const*,int) ; 

__attribute__((used)) static struct alg *
FUNC6(const char *name)
{
	struct alg *cipher, *hmac;
	const char *hmac_name;
	char *cp, *cipher_name;

	cp = FUNC4(name, '+');
	cipher_name = FUNC5(name, cp - name);
	hmac_name = cp + 1;
	cipher = FUNC2(cipher_name);
	FUNC3(cipher_name);
	if (cipher == NULL)
		FUNC1(1, "Invalid cipher %s", cipher_name);
	hmac = FUNC2(hmac_name);
	if (hmac == NULL)
		FUNC1(1, "Invalid hash %s", hmac_name);
	return (FUNC0(cipher, hmac));
}