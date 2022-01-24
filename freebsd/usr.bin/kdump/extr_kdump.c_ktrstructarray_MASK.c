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
struct ktr_struct_array {size_t struct_size; } ;
struct kevent_freebsd11 {int data; int data2; int data1; void* udata; int /*<<< orphan*/  fflags; int /*<<< orphan*/  flags; int /*<<< orphan*/  filter; int /*<<< orphan*/  ident; } ;
struct kevent32_freebsd11 {int data; int data2; int data1; void* udata; int /*<<< orphan*/  fflags; int /*<<< orphan*/  flags; int /*<<< orphan*/  filter; int /*<<< orphan*/  ident; } ;
struct kevent32 {int data; int data2; int data1; void* udata; int /*<<< orphan*/  fflags; int /*<<< orphan*/  flags; int /*<<< orphan*/  filter; int /*<<< orphan*/  ident; } ;
struct kevent {int data; int data2; int data1; void* udata; int /*<<< orphan*/  fflags; int /*<<< orphan*/  flags; int /*<<< orphan*/  filter; int /*<<< orphan*/  ident; } ;
typedef  int /*<<< orphan*/  kev32 ;
typedef  int /*<<< orphan*/  kev11 ;
typedef  int /*<<< orphan*/  kev ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct kevent_freebsd11*) ; 
 int /*<<< orphan*/  FUNC2 (struct kevent_freebsd11*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kevent_freebsd11*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

void
FUNC6(struct ktr_struct_array *ksa, size_t buflen)
{
	struct kevent kev;
	char *name, *data;
	size_t namelen, datalen;
	int i;
	bool first;

	buflen -= sizeof(*ksa);
	for (name = (char *)(ksa + 1), namelen = 0;
	     namelen < buflen && name[namelen] != '\0';
	     ++namelen)
		/* nothing */;
	if (namelen == buflen)
		goto invalid;
	if (name[namelen] != '\0')
		goto invalid;
	/* sanity check */
	for (i = 0; i < (int)namelen; ++i)
		if (!FUNC0(name[i]) && name[i] != '_')
			goto invalid;
	data = name + namelen + 1;
	datalen = buflen - namelen - 1;
	FUNC4("struct %s[] = { ", name);
	first = true;
	for (; datalen >= ksa->struct_size;
	    data += ksa->struct_size, datalen -= ksa->struct_size) {
		if (!first)
			FUNC4("\n             ");
		else
			first = false;
		if (FUNC5(name, "kevent") == 0) {
			if (ksa->struct_size != sizeof(kev))
				goto bad_size;
			FUNC2(&kev, data, sizeof(kev));
			FUNC1(&kev);
		} else if (FUNC5(name, "kevent_freebsd11") == 0) {
			struct kevent_freebsd11 kev11;

			if (ksa->struct_size != sizeof(kev11))
				goto bad_size;
			FUNC2(&kev11, data, sizeof(kev11));
			FUNC3(&kev, 0, sizeof(kev));
			kev.ident = kev11.ident;
			kev.filter = kev11.filter;
			kev.flags = kev11.flags;
			kev.fflags = kev11.fflags;
			kev.data = kev11.data;
			kev.udata = kev11.udata;
			FUNC1(&kev);
#ifdef _WANT_KEVENT32
		} else if (strcmp(name, "kevent32") == 0) {
			struct kevent32 kev32;

			if (ksa->struct_size != sizeof(kev32))
				goto bad_size;
			memcpy(&kev32, data, sizeof(kev32));
			memset(&kev, 0, sizeof(kev));
			kev.ident = kev32.ident;
			kev.filter = kev32.filter;
			kev.flags = kev32.flags;
			kev.fflags = kev32.fflags;
#if BYTE_ORDER == BIG_ENDIAN
			kev.data = kev32.data2 | ((int64_t)kev32.data1 << 32);
#else
			kev.data = kev32.data1 | ((int64_t)kev32.data2 << 32);
#endif
			kev.udata = (void *)(uintptr_t)kev32.udata;
			ktrkevent(&kev);
		} else if (strcmp(name, "kevent32_freebsd11") == 0) {
			struct kevent32_freebsd11 kev32;

			if (ksa->struct_size != sizeof(kev32))
				goto bad_size;
			memcpy(&kev32, data, sizeof(kev32));
			memset(&kev, 0, sizeof(kev));
			kev.ident = kev32.ident;
			kev.filter = kev32.filter;
			kev.flags = kev32.flags;
			kev.fflags = kev32.fflags;
			kev.data = kev32.data;
			kev.udata = (void *)(uintptr_t)kev32.udata;
			ktrkevent(&kev);
#endif
		} else {
			FUNC4("<unknown structure> }\n");
			return;
		}
	}
	FUNC4(" }\n");
	return;
invalid:
	FUNC4("invalid record\n");
	return;
bad_size:
	FUNC4("<bad size> }\n");
	return;
}