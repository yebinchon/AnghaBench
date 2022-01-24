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
struct bhnd_nvram_tlv_env {char* envp; } ;
struct bhnd_nvram_tlv {scalar_t__ count; int /*<<< orphan*/ * data; } ;
struct bhnd_nvram_io {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int ENOMEM ; 
 size_t FUNC2 (struct bhnd_nvram_tlv_env*) ; 
 int /*<<< orphan*/ * FUNC3 (struct bhnd_nvram_io*,int,size_t) ; 
 int FUNC4 (char*,size_t,char,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bhnd_nvram_tlv_env* FUNC5 (struct bhnd_nvram_tlv*,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct bhnd_nvram_io*,size_t*) ; 

__attribute__((used)) static int
FUNC7(struct bhnd_nvram_tlv *tlv, struct bhnd_nvram_io *src)
{
	struct bhnd_nvram_tlv_env	*env;
	size_t				 size;
	size_t				 next;
	int				 error;

	FUNC0(tlv->data == NULL, ("tlv data already initialized"));

	/* Determine the actual size of the TLV source data */
	if ((error = FUNC6(src, &size)))
		return (error);

	/* Copy to our own internal buffer */
	if ((tlv->data = FUNC3(src, 0x0, size)) == NULL)
		return (ENOMEM);

	/* Initialize our backing buffer */
	tlv->count = 0;
	next = 0;
	while ((env = FUNC5(tlv, &next, NULL)) != NULL) {
		size_t env_len;
		size_t name_len;

		/* TLV_ENV data must not be empty */
		env_len = FUNC2(env);
		if (env_len == 0) {
			FUNC1("cannot parse zero-length TLV_ENV record "
			    "data\n");
			return (EINVAL);
		}

		/* Parse the key=value string, and then replace the '='
		 * delimiter with '\0' to allow us to provide direct 
		 * name pointers from our backing buffer */
		error = FUNC4(env->envp, env_len, '=', NULL,
		    &name_len, NULL, NULL);
		if (error) {
			FUNC1("error parsing TLV_ENV data: %d\n", error);
			return (error);
		}

		/* Replace '=' with '\0' */
		*(env->envp + name_len) = '\0';

		/* Add to variable count */
		tlv->count++;
	};

	return (0);
}