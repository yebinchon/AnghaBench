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
typedef  void uint8_t ;
struct vnode {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct mac_veriexec_file_info {TYPE_1__* ops; } ;
typedef  size_t off_t ;
struct TYPE_2__ {size_t context_size; size_t digest_len; int /*<<< orphan*/  (* final ) (unsigned char*,void*) ;int /*<<< orphan*/  (* update ) (void*,void*,size_t) ;int /*<<< orphan*/  (* init ) (void*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IO_NODELOCKED ; 
 int /*<<< orphan*/  M_VERIEXEC ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  NOCRED ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,void*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct vnode*,void*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,struct thread*) ; 

__attribute__((used)) static int
FUNC7(struct vnode *vp, struct mac_veriexec_file_info *ip,
    struct thread *td, off_t file_size, unsigned char *fingerprint)
{
	uint8_t *filebuf;
	void *ctx;
	off_t offset;
	size_t count, nread, resid;
	int error = EINVAL;

	filebuf = FUNC1(PAGE_SIZE, M_VERIEXEC, M_WAITOK);
	ctx = FUNC1(ip->ops->context_size, M_VERIEXEC, M_WAITOK);

	(ip->ops->init)(ctx);
	for (offset = 0; offset < file_size; offset += nread) {
		if ((offset + PAGE_SIZE) > file_size)
			count = file_size - offset;
		else
			count = PAGE_SIZE;

		error = FUNC6(UIO_READ, vp, filebuf, count, offset,
		    UIO_SYSSPACE, IO_NODELOCKED, td->td_ucred, NOCRED, &resid,
		    td);
		if (error)
			goto failed;

		nread = count - resid;
		(ip->ops->update)(ctx, filebuf, nread);
	}
	(ip->ops->final)(fingerprint, ctx);

#ifdef DEBUG_VERIEXEC_FINGERPRINT
	for (offset = 0; offset < ip->ops->digest_len; offset++)
		printf("%02x", fingerprint[offset]);
	printf("\n");
#endif

failed:
	FUNC0(ctx, M_VERIEXEC);
	FUNC0(filebuf, M_VERIEXEC);
	return (error);
}