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
struct thread {int dummy; } ;
struct sbuf {int dummy; } ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  pss_string ;
typedef  enum proc_vector_type { ____Placeholder_proc_vector_type } proc_vector_type ;

/* Variables and functions */
 int ARG_MAX ; 
 int GET_PS_STRINGS_CHUNK_SZ ; 
 int /*<<< orphan*/  M_TEMP ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,struct proc*,char***,size_t*,int) ; 
 int FUNC3 (struct thread*,struct proc*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,int) ; 
 size_t FUNC5 (char*,int) ; 

__attribute__((used)) static int
FUNC6(struct thread *td, struct proc *p, struct sbuf *sb,
    enum proc_vector_type type)
{
	size_t done, len, nchr, vsize;
	int error, i;
	char **proc_vector, *sptr;
	char pss_string[GET_PS_STRINGS_CHUNK_SZ];

	FUNC0(p);

	/*
	 * We are not going to read more than 2 * (PATH_MAX + ARG_MAX) bytes.
	 */
	nchr = 2 * (PATH_MAX + ARG_MAX);

	error = FUNC2(td, p, &proc_vector, &vsize, type);
	if (error != 0)
		return (error);
	for (done = 0, i = 0; i < (int)vsize && done < nchr; i++) {
		/*
		 * The program may have scribbled into its argv array, e.g. to
		 * remove some arguments.  If that has happened, break out
		 * before trying to read from NULL.
		 */
		if (proc_vector[i] == NULL)
			break;
		for (sptr = proc_vector[i]; ; sptr += GET_PS_STRINGS_CHUNK_SZ) {
			error = FUNC3(td, p, sptr, pss_string,
			    sizeof(pss_string));
			if (error != 0)
				goto done;
			len = FUNC5(pss_string, GET_PS_STRINGS_CHUNK_SZ);
			if (done + len >= nchr)
				len = nchr - done - 1;
			FUNC4(sb, pss_string, len);
			if (len != GET_PS_STRINGS_CHUNK_SZ)
				break;
			done += GET_PS_STRINGS_CHUNK_SZ;
		}
		FUNC4(sb, "", 1);
		done += len + 1;
	}
done:
	FUNC1(proc_vector, M_TEMP);
	return (error);
}