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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct bhnd_nvram_tlv_env* FUNC1 (struct bhnd_nvram_tlv*,size_t*,void**) ; 
 size_t FUNC2 (struct bhnd_nvram_tlv*,void*) ; 

__attribute__((used)) static const char *
FUNC3(struct bhnd_nvram_data *nv, void **cookiep)
{
	struct bhnd_nvram_tlv		*tlv;
	struct bhnd_nvram_tlv_env	*env;
	size_t				 io_offset;

	tlv = (struct bhnd_nvram_tlv *)nv;

	/* Find next readable TLV record */
	if (*cookiep == NULL) {
		/* Start search at offset 0x0 */
		io_offset = 0x0;
		env = FUNC1(tlv, &io_offset, cookiep);
	} else {
		/* Seek past the previous env record */
		io_offset = FUNC2(tlv, *cookiep);
		env = FUNC1(tlv, &io_offset, NULL);
		if (env == NULL)
			FUNC0("invalid cookiep; record missing");

		/* Advance to next env record, update the caller's cookiep */
		env = FUNC1(tlv, &io_offset, cookiep);
	}

	/* Check for EOF */
	if (env == NULL)
		return (NULL);

	/* Return the NUL terminated name */
	return (env->envp);
}