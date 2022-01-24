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
struct bhnd_nvram_data {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVRAM_VAL_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int EINVAL ; 
 size_t NVRAM_TLV_ENVP_DATA_MAX_LEN ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  bhnd_nvram_val_bcm_string_fmt ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(struct bhnd_nvram_data *nv, const char *name,
    bhnd_nvram_val *value, bhnd_nvram_val **result)
{
	bhnd_nvram_val	*str;
	const char	*inp;
	bhnd_nvram_type	 itype;
	size_t		 ilen;
	size_t		 name_len, tlv_nremain;
	int		 error;

	tlv_nremain = NVRAM_TLV_ENVP_DATA_MAX_LEN;

	/* Name (trimmed of any path prefix) must be valid */
	if (!FUNC6(FUNC2(name)))
		return (EINVAL);

	/* 'name=' must fit within the maximum TLV_ENV record length */
	name_len = FUNC7(name) + 1; /* '=' */
	if (tlv_nremain < name_len) {
		FUNC0("'%s=' exceeds maximum TLV_ENV record length\n",
		    name);
		return (EINVAL);
	}
	tlv_nremain -= name_len;

	/* Convert value to a (bcm-formatted) string */
	error = FUNC4(&str, &bhnd_nvram_val_bcm_string_fmt,
	    value, BHND_NVRAM_VAL_DYNAMIC);
	if (error)
		return (error);

	/* The string value must fit within remaining TLV_ENV record length */
	inp = FUNC3(str, &ilen, &itype);
	if (tlv_nremain < ilen) {
		FUNC0("'%.*s\\0' exceeds maximum TLV_ENV record length\n",
		    FUNC1(ilen), inp);

		FUNC5(str);
		return (EINVAL);
	}
	tlv_nremain -= name_len;

	/* Success. Transfer result ownership to the caller. */
	*result = str;
	return (0);
}