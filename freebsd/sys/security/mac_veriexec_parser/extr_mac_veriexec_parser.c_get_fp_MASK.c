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
struct TYPE_2__ {int fp_size; int /*<<< orphan*/ * fp_type; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* fp_table ; 
 int FUNC0 (char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (char*,size_t) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(const char *entry, char **type, unsigned char **digest, int *flags)
{
	char	*delimiter;
	char	*local_digest;
	char	*fp_type;
	char	*prev_fp_type;
	size_t	min_len;
	int	i;

	delimiter = NULL;
	fp_type = NULL;
	prev_fp_type = NULL;

	for (i = 0; fp_table[i].fp_type != NULL; i++) {
		fp_type = FUNC3(entry, fp_table[i].fp_type);
		/* Look for the last "shaX=hash" in line */
		while (fp_type != NULL) {
			prev_fp_type = fp_type;
			fp_type++;
			fp_type = FUNC3(fp_type, fp_table[i].fp_type);
		}
		fp_type = prev_fp_type;
		if (fp_type != NULL) {
			if (fp_type == entry || fp_type[-1] != ' ')
				return (EINVAL);

			/*
			 * The entry should contain at least
			 * fp_type and digest in hexadecimal form.
			 */
			min_len = FUNC1(fp_table[i].fp_type) +
				2 * fp_table[i].fp_size;

			if (FUNC2(fp_type, min_len) < min_len)
				return (EINVAL);

			local_digest = &fp_type[FUNC1(fp_table[i].fp_type)];
			delimiter = &local_digest[2 * fp_table[i].fp_size];

			/*
			 * Make sure that digest is followed by
			 * some kind of delimiter.
			 */
			if (*delimiter != '\n' &&
			    *delimiter != '\0' &&
			    *delimiter != ' ')
				return (EINVAL);

			/*
			 * Does the entry contain flags we need to parse?
			 */
			if (*delimiter == ' ' && flags != NULL)
				*flags = FUNC0(delimiter);

			/*
			 * Split entry into three parts:
			 * path, fp_type and digest.
			 */
			local_digest[-1] = '\0';
			*delimiter = '\0';
			fp_type[-1] = '\0';
			break;
		}
	}

	if (fp_type == NULL)
		return (EINVAL);

	if (type != NULL)
		*type = fp_type;

	if (digest != NULL)
		*digest = local_digest;

	return (0);
}