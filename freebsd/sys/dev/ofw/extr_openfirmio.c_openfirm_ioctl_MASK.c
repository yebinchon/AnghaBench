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
typedef  int u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct thread {int dummy; } ;
struct ofiocdesc {scalar_t__ of_nodeid; int of_buflen; int /*<<< orphan*/  of_name; int /*<<< orphan*/  of_namelen; int /*<<< orphan*/  of_buf; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  newname ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOIOCTL ; 
 int ENOMEM ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
#define  OFIOCFINDDEVICE 135 
#define  OFIOCGET 134 
#define  OFIOCGETCHILD 133 
#define  OFIOCGETNEXT 132 
#define  OFIOCGETOPTNODE 131 
#define  OFIOCGETPROPLEN 130 
 int /*<<< orphan*/  OFIOCMAXVALUE ; 
#define  OFIOCNEXTPROP 129 
#define  OFIOCSET 128 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (scalar_t__,char*,void*,int) ; 
 int FUNC3 (scalar_t__,char*) ; 
 int FUNC4 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__,char*,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ lastnode ; 
 char* FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__,scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int
FUNC14(struct cdev *dev, u_long cmd, caddr_t data, int flags,
    struct thread *td)
{
	struct ofiocdesc *of;
	phandle_t node;
	int len, ok, error;
	char *name, *value;
	char newname[32];

	if ((flags & FREAD) == 0)
		return (EBADF);

	of = (struct ofiocdesc *)data;
	switch (cmd) {
	case OFIOCGETOPTNODE:
		*(phandle_t *) data = FUNC1("/options");
		return (0);
	case OFIOCGET:
	case OFIOCSET:
	case OFIOCNEXTPROP:
	case OFIOCFINDDEVICE:
	case OFIOCGETPROPLEN:
		node = of->of_nodeid;
		break;
	case OFIOCGETNEXT:
	case OFIOCGETCHILD:
		node = *(phandle_t *)data;
		break;
	default:
		return (ENOIOCTL);
	}

	if (node != 0 && node != lastnode) {
		/* Not an easy one, we must search for it. */
		ok = FUNC11(FUNC5(0), node);
		if (!ok)
			return (EINVAL);
		lastnode = node;
	}

	name = value = NULL;
	error = 0;
	switch (cmd) {

	case OFIOCGET:
	case OFIOCGETPROPLEN:
		if (node == 0)
			return (EINVAL);
		error = FUNC12(of->of_namelen, of->of_name, &name);
		if (error)
			break;
		len = FUNC3(node, name);
		if (cmd == OFIOCGETPROPLEN) {
			of->of_buflen = len;
			break;
		}
		if (len > of->of_buflen) {
			error = ENOMEM;
			break;
		}
		of->of_buflen = len;
		/* -1 means no entry; 0 means no value. */
		if (len <= 0)
			break;
		value = FUNC10(len, M_TEMP, M_WAITOK);
		len = FUNC2(node, name, (void *)value, len);
		error = FUNC8(value, of->of_buf, len);
		break;

	case OFIOCSET:
		/*
		 * Note: Text string values for at least the /options node
		 * have to be null-terminated and the length parameter must
		 * include this terminating null.  However, like OF_getprop(),
		 * OF_setprop() will return the actual length of the text
		 * string, i.e. omitting the terminating null.
		 */
		if ((flags & FWRITE) == 0)
			return (EBADF);
		if (node == 0)
			return (EINVAL);
		if ((u_int)of->of_buflen > OFIOCMAXVALUE)
			return (ENAMETOOLONG);
		error = FUNC12(of->of_namelen, of->of_name, &name);
		if (error)
			break;
		value = FUNC10(of->of_buflen, M_TEMP, M_WAITOK);
		error = FUNC7(of->of_buf, value, of->of_buflen);
		if (error)
			break;
		len = FUNC6(node, name, value, of->of_buflen);
		if (len < 0)
			error = EINVAL;
		of->of_buflen = len;
		break;

	case OFIOCNEXTPROP:
		if (node == 0 || of->of_buflen < 0)
			return (EINVAL);
		if (of->of_namelen != 0) {
			error = FUNC12(of->of_namelen, of->of_name,
			    &name);
			if (error)
				break;
		}
		ok = FUNC4(node, name, newname, sizeof(newname));
		if (ok == 0) {
			error = ENOENT;
			break;
		}
		if (ok == -1) {
			error = EINVAL;
			break;
		}
		len = FUNC13(newname) + 1;
		if (len > of->of_buflen)
			len = of->of_buflen;
		else
			of->of_buflen = len;
		error = FUNC8(newname, of->of_buf, len);
		break;

	case OFIOCGETNEXT:
		node = FUNC5(node);
		*(phandle_t *)data = lastnode = node;
		break;

	case OFIOCGETCHILD:
		if (node == 0)
			return (EINVAL);
		node = FUNC0(node);
		*(phandle_t *)data = lastnode = node;
		break;

	case OFIOCFINDDEVICE:
		error = FUNC12(of->of_namelen, of->of_name, &name);
		if (error)
			break;
		node = FUNC1(name);
		if (node == -1) {
			error = ENOENT;
			break;
		}
		of->of_nodeid = lastnode = node;
		break;
	}

	if (name != NULL)
		FUNC9(name, M_TEMP);
	if (value != NULL)
		FUNC9(value, M_TEMP);

	return (error);
}