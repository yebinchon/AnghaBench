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
struct uio {size_t uio_resid; } ;
struct dirent {int d_fileno; size_t d_reclen; size_t d_namlen; int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int EINVAL ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 
 int FUNC4 (struct dirent*,size_t,struct uio*) ; 

__attribute__((used)) static int
FUNC5(struct uio *uio, const char *name, int fileno,
    size_t *reclenp)
{
	struct dirent dirent;
	size_t namlen, reclen;
	int error;

	namlen = FUNC3(name);
	reclen = FUNC0(namlen);
	if (reclenp != NULL)
		*reclenp = reclen;

	if (uio == NULL)
		return (0);

	if (uio->uio_resid < reclen)
		return (EINVAL);

	dirent.d_fileno = fileno;
	dirent.d_reclen = reclen;
	dirent.d_type = DT_DIR;
	dirent.d_namlen = namlen;
	FUNC2(dirent.d_name, name, namlen);
	FUNC1(&dirent);
	error = FUNC4(&dirent, reclen, uio);

	return (error);
}