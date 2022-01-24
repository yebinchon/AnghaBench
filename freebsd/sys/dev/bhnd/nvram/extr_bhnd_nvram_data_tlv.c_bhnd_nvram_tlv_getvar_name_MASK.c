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
struct bhnd_nvram_tlv_env {char const* envp; } ;
struct bhnd_nvram_tlv {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 struct bhnd_nvram_tlv_env* FUNC1 (struct bhnd_nvram_tlv*,void*) ; 

__attribute__((used)) static const char *
FUNC2(struct bhnd_nvram_data *nv, void *cookiep)
{
	struct bhnd_nvram_tlv		*tlv;
	const struct bhnd_nvram_tlv_env	*env;

	tlv = (struct bhnd_nvram_tlv *)nv;

	/* Fetch pointer to the TLV_ENV record */
	if ((env = FUNC1(tlv, cookiep)) == NULL)
		FUNC0("invalid cookiep: %p", cookiep);

	/* Return name pointer */
	return (&env->envp[0]);
}