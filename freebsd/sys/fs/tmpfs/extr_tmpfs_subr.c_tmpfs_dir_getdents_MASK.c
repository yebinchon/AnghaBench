#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_long ;
struct uio {int uio_offset; scalar_t__ uio_resid; } ;
struct TYPE_5__ {struct tmpfs_dirent* tn_readdir_lastp; void* tn_readdir_lastn; } ;
struct tmpfs_node {TYPE_2__ tn_dir; } ;
struct tmpfs_mount {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_name; } ;
struct tmpfs_dirent {int td_namelen; TYPE_1__ ud; TYPE_3__* td_node; } ;
struct tmpfs_dir_cursor {int dummy; } ;
struct dirent {int d_fileno; int d_namlen; scalar_t__ d_reclen; int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_type; } ;
typedef  void* off_t ;
struct TYPE_6__ {int tn_id; int tn_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_BLK ; 
 int /*<<< orphan*/  DT_CHR ; 
 int /*<<< orphan*/  DT_DIR ; 
 int /*<<< orphan*/  DT_FIFO ; 
 int /*<<< orphan*/  DT_LNK ; 
 int /*<<< orphan*/  DT_REG ; 
 int /*<<< orphan*/  DT_SOCK ; 
 int /*<<< orphan*/  DT_WHT ; 
 int EINVAL ; 
 int EJUSTRETURN ; 
 scalar_t__ FUNC0 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  TMPFS_DIRCOOKIE_DOT 137 
#define  TMPFS_DIRCOOKIE_DOTDOT 136 
#define  TMPFS_DIRCOOKIE_EOF 135 
 int /*<<< orphan*/  TMPFS_NODE_ACCESSED ; 
 int /*<<< orphan*/  FUNC2 (struct tmpfs_node*) ; 
#define  VBLK 134 
#define  VCHR 133 
#define  VDIR 132 
#define  VFIFO 131 
#define  VLNK 130 
#define  VREG 129 
#define  VSOCK 128 
 int /*<<< orphan*/  FUNC3 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_3__*,int) ; 
 struct tmpfs_dirent* FUNC6 (struct tmpfs_node*,struct tmpfs_dir_cursor*) ; 
 int FUNC7 (struct tmpfs_mount*,struct tmpfs_node*,struct uio*) ; 
 int FUNC8 (struct tmpfs_mount*,struct tmpfs_node*,struct uio*) ; 
 struct tmpfs_dirent* FUNC9 (struct tmpfs_node*,int,struct tmpfs_dir_cursor*) ; 
 struct tmpfs_dirent* FUNC10 (struct tmpfs_node*,struct tmpfs_dir_cursor*) ; 
 void* FUNC11 (struct tmpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC12 (struct tmpfs_mount*,struct tmpfs_node*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct dirent*,scalar_t__,struct uio*) ; 

int
FUNC14(struct tmpfs_mount *tm, struct tmpfs_node *node,
    struct uio *uio, int maxcookies, u_long *cookies, int *ncookies)
{
	struct tmpfs_dir_cursor dc;
	struct tmpfs_dirent *de;
	off_t off;
	int error;

	FUNC2(node);

	off = 0;

	/*
	 * Lookup the node from the current offset.  The starting offset of
	 * 0 will lookup both '.' and '..', and then the first real entry,
	 * or EOF if there are none.  Then find all entries for the dir that
	 * fit into the buffer.  Once no more entries are found (de == NULL),
	 * the offset is set to TMPFS_DIRCOOKIE_EOF, which will cause the next
	 * call to return 0.
	 */
	switch (uio->uio_offset) {
	case TMPFS_DIRCOOKIE_DOT:
		error = FUNC7(tm, node, uio);
		if (error != 0)
			return (error);
		uio->uio_offset = TMPFS_DIRCOOKIE_DOTDOT;
		if (cookies != NULL)
			cookies[(*ncookies)++] = off = uio->uio_offset;
		/* FALLTHROUGH */
	case TMPFS_DIRCOOKIE_DOTDOT:
		error = FUNC8(tm, node, uio);
		if (error != 0)
			return (error);
		de = FUNC6(node, &dc);
		uio->uio_offset = FUNC11(de);
		if (cookies != NULL)
			cookies[(*ncookies)++] = off = uio->uio_offset;
		/* EOF. */
		if (de == NULL)
			return (0);
		break;
	case TMPFS_DIRCOOKIE_EOF:
		return (0);
	default:
		de = FUNC9(node, uio->uio_offset, &dc);
		if (de == NULL)
			return (EINVAL);
		if (cookies != NULL)
			off = FUNC11(de);
	}

	/* Read as much entries as possible; i.e., until we reach the end of
	 * the directory or we exhaust uio space. */
	do {
		struct dirent d;

		/* Create a dirent structure representing the current
		 * tmpfs_node and fill it. */
		if (de->td_node == NULL) {
			d.d_fileno = 1;
			d.d_type = DT_WHT;
		} else {
			d.d_fileno = de->td_node->tn_id;
			switch (de->td_node->tn_type) {
			case VBLK:
				d.d_type = DT_BLK;
				break;

			case VCHR:
				d.d_type = DT_CHR;
				break;

			case VDIR:
				d.d_type = DT_DIR;
				break;

			case VFIFO:
				d.d_type = DT_FIFO;
				break;

			case VLNK:
				d.d_type = DT_LNK;
				break;

			case VREG:
				d.d_type = DT_REG;
				break;

			case VSOCK:
				d.d_type = DT_SOCK;
				break;

			default:
				FUNC5("tmpfs_dir_getdents: type %p %d",
				    de->td_node, (int)de->td_node->tn_type);
			}
		}
		d.d_namlen = de->td_namelen;
		FUNC1(de->td_namelen < sizeof(d.d_name));
		(void)FUNC4(d.d_name, de->ud.td_name, de->td_namelen);
		d.d_reclen = FUNC0(&d);
		FUNC3(&d);

		/* Stop reading if the directory entry we are treating is
		 * bigger than the amount of data that can be returned. */
		if (d.d_reclen > uio->uio_resid) {
			error = EJUSTRETURN;
			break;
		}

		/* Copy the new dirent structure into the output buffer and
		 * advance pointers. */
		error = FUNC13(&d, d.d_reclen, uio);
		if (error == 0) {
			de = FUNC10(node, &dc);
			if (cookies != NULL) {
				off = FUNC11(de);
				FUNC1(*ncookies < maxcookies);
				cookies[(*ncookies)++] = off;
			}
		}
	} while (error == 0 && uio->uio_resid > 0 && de != NULL);

	/* Skip setting off when using cookies as it is already done above. */
	if (cookies == NULL)
		off = FUNC11(de);

	/* Update the offset and cache. */
	uio->uio_offset = off;
	node->tn_dir.tn_readdir_lastn = off;
	node->tn_dir.tn_readdir_lastp = de;

	FUNC12(tm, node, TMPFS_NODE_ACCESSED);
	return error;
}