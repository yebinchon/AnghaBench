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
struct sockaddr_un {int /*<<< orphan*/  sun_len; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct netconfig {int dummy; } ;
struct gssd_syscall_args {int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLSET_RETRIES ; 
 int EINVAL ; 
 int /*<<< orphan*/  GSSD ; 
 int /*<<< orphan*/  GSSDVERS ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  PRIV_NFS_DAEMON ; 
 int /*<<< orphan*/  RPC_MAXDATASIZE ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_un*) ; 
 int /*<<< orphan*/ * FUNC4 (struct netconfig*,struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 struct netconfig* FUNC6 (char*) ; 
 int /*<<< orphan*/ * kgss_gssd_handle ; 
 int /*<<< orphan*/  kgss_gssd_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC11 (char*) ; 

int
FUNC12(struct thread *td, struct gssd_syscall_args *uap)
{
        struct sockaddr_un sun;
        struct netconfig *nconf;
	char path[MAXPATHLEN];
	int error;
	CLIENT *cl, *oldcl;
        
	error = FUNC9(td, PRIV_NFS_DAEMON);
	if (error)
		return (error);

	error = FUNC5(uap->path, path, sizeof(path), NULL);
	if (error)
		return (error);
	if (FUNC11(path) + 1 > sizeof(sun.sun_path))
		return (EINVAL);

	if (path[0] != '\0') {
		sun.sun_family = AF_LOCAL;
		FUNC10(sun.sun_path, path, sizeof(sun.sun_path));
		sun.sun_len = FUNC3(&sun);
		
		nconf = FUNC6("local");
		cl = FUNC4(nconf,
		    (struct sockaddr *) &sun, GSSD, GSSDVERS,
		    RPC_MAXDATASIZE, RPC_MAXDATASIZE);
		/*
		 * The number of retries defaults to INT_MAX, which effectively
		 * means an infinite, uninterruptable loop.  Limiting it to
		 * five retries keeps it from running forever.
		 */
		if (cl != NULL) {
			int retry_count = 5;
			FUNC1(cl, CLSET_RETRIES, &retry_count);
		}
	} else
		cl = NULL;

	FUNC7(&kgss_gssd_lock);
	oldcl = kgss_gssd_handle;
	kgss_gssd_handle = cl;
	FUNC8(&kgss_gssd_lock);

	if (oldcl != NULL) {
		FUNC0(oldcl);
		FUNC2(oldcl);
	}

	return (0);
}