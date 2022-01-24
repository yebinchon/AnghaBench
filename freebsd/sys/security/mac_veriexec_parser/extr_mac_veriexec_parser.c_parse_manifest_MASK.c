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
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  M_VERIEXEC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 char* FUNC3 (char*,unsigned char*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static int
FUNC5(char *path, unsigned char *hash, char *prefix)
{
	char	*data;
	char	*entry;
	char	*next_entry;
	int	rc, success_count;

	data = NULL;
	success_count = 0;
	rc = 0;

	data = FUNC3(path, hash);
	if (data == NULL) {
		rc = EIO;
		goto out;
	}

	entry = data;
	while (entry != NULL) {
		next_entry = FUNC4(entry, '\n');
		if (next_entry != NULL) {
			*next_entry = '\0';
			next_entry++;
		}
		if (entry[0] == '\n' || entry[0] == '\0') {
			entry = next_entry;
			continue;
		}
		if ((rc = FUNC1(entry, prefix)))
			FUNC2("mac_veriexec_parser: Warning: Failed to parse"
			       " entry with rc:%d, entry:\"%s\"\n", rc, entry);
		else
			success_count++;

		entry = next_entry;
	}
	rc = 0;

out:
	if (data != NULL)
		FUNC0(data, M_VERIEXEC);

	if (success_count == 0)
		rc = EINVAL;

	return (rc);
}