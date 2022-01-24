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
struct bhnd_nvram_io {int dummy; } ;
typedef  int /*<<< orphan*/  envp ;

/* Variables and functions */
 int BHND_NVRAM_DATA_PROBE_MAYBE ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 size_t FUNC1 (int,size_t) ; 
 size_t FUNC2 (struct bhnd_nvram_io*) ; 
 int FUNC3 (struct bhnd_nvram_io*,size_t,char*,size_t) ; 

__attribute__((used)) static int
FUNC4(struct bhnd_nvram_io *io)
{
	char	 envp[16];
	size_t	 envp_len;
	size_t	 io_size;
	int	 error;

	io_size = FUNC2(io);

	/*
	 * Fetch initial bytes
	 */
	envp_len = FUNC1(sizeof(envp), io_size);
	if ((error = FUNC3(io, 0x0, envp, envp_len)))
		return (error);

	/* An empty BCM-RAW buffer should still contain a single terminating
	 * NUL */
	if (envp_len == 0)
		return (ENXIO);

	if (envp_len == 1) {
		if (envp[0] != '\0')
			return (ENXIO);

		return (BHND_NVRAM_DATA_PROBE_MAYBE);
	}

	/* Must contain only printable ASCII characters delimited
	 * by NUL record delimiters */
	for (size_t i = 0; i < envp_len; i++) {
		char c = envp[i];

		/* If we hit a newline, this is probably BCM-TXT */
		if (c == '\n')
			return (ENXIO);

		if (c == '\0' && !FUNC0(c))
			continue;
	}

	/* A valid BCM-RAW buffer should contain a terminating NUL for
	 * the last record, followed by a final empty record terminated by
	 * NUL */
	envp_len = 2;
	if (io_size < envp_len)
		return (ENXIO);

	if ((error = FUNC3(io, io_size-envp_len, envp, envp_len)))
		return (error);

	if (envp[0] != '\0' || envp[1] != '\0')
		return (ENXIO);

	return (BHND_NVRAM_DATA_PROBE_MAYBE + 1);
}