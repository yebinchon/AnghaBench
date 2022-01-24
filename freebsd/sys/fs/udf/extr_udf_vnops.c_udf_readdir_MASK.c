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
typedef  int /*<<< orphan*/  u_long ;
struct vop_readdir_args {int* a_eofflag; int /*<<< orphan*/ ** a_cookies; scalar_t__* a_ncookies; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct uio {int uio_resid; scalar_t__ uio_offset; } ;
struct udf_uiodir {int eofflag; int ncookies; scalar_t__ acookies; struct dirent* dirent; int /*<<< orphan*/ * cookies; } ;
struct udf_node {void* hash_id; struct udf_mnt* udfmp; TYPE_1__* fentry; } ;
struct udf_mnt {int dummy; } ;
struct udf_dirstream {int this_off; int error; scalar_t__ off; scalar_t__ offset; } ;
struct fileid_desc {int file_char; scalar_t__ l_fi; size_t l_iu; int /*<<< orphan*/  icb; int /*<<< orphan*/ * data; int /*<<< orphan*/  tag; } ;
struct dirent {char* d_name; int d_namlen; int d_off; void* d_reclen; void* d_type; void* d_fileno; } ;
struct TYPE_2__ {int /*<<< orphan*/  inf_len; } ;

/* Variables and functions */
 void* DT_DIR ; 
 void* DT_UNKNOWN ; 
 int EIO ; 
 int ENOMEM ; 
 void* FUNC0 (struct dirent*) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  TAGID_FID ; 
 int /*<<< orphan*/  UDF_FID_SIZE ; 
 int UDF_FILE_CHAR_DEL ; 
 int UDF_FILE_CHAR_DIR ; 
 int UDF_FILE_CHAR_PAR ; 
 struct udf_node* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fileid_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct udf_dirstream*) ; 
 struct fileid_desc* FUNC10 (struct udf_dirstream*) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 struct udf_dirstream* FUNC12 (struct udf_node*,scalar_t__,int /*<<< orphan*/ ,struct udf_mnt*) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,scalar_t__,struct udf_mnt*) ; 
 int FUNC14 (struct udf_uiodir*,void*,struct uio*,int) ; 

__attribute__((used)) static int
FUNC15(struct vop_readdir_args *a)
{
	struct vnode *vp;
	struct uio *uio;
	struct dirent dir;
	struct udf_node *node;
	struct udf_mnt *udfmp;
	struct fileid_desc *fid;
	struct udf_uiodir uiodir;
	struct udf_dirstream *ds;
	u_long *cookies = NULL;
	int ncookies;
	int error = 0;

	vp = a->a_vp;
	uio = a->a_uio;
	node = FUNC1(vp);
	udfmp = node->udfmp;
	uiodir.eofflag = 1;

	if (a->a_ncookies != NULL) {
		/*
		 * Guess how many entries are needed.  If we run out, this
		 * function will be called again and thing will pick up were
		 * it left off.
		 */
		ncookies = uio->uio_resid / 8;
		cookies = FUNC6(sizeof(u_long) * ncookies,
		    M_TEMP, M_WAITOK);
		if (cookies == NULL)
			return (ENOMEM);
		uiodir.ncookies = ncookies;
		uiodir.cookies = cookies;
		uiodir.acookies = 0;
	} else {
		uiodir.cookies = NULL;
	}

	/*
	 * Iterate through the file id descriptors.  Give the parent dir
	 * entry special attention.
	 */
	ds = FUNC12(node, uio->uio_offset, FUNC5(node->fentry->inf_len),
	    node->udfmp);

	while ((fid = FUNC10(ds)) != NULL) {

		/* XXX Should we return an error on a bad fid? */
		if (FUNC8(&fid->tag, TAGID_FID)) {
			FUNC7("Invalid FID tag\n");
			FUNC4(fid, UDF_FID_SIZE, NULL, 0);
			error = EIO;
			break;
		}

		/* Is this a deleted file? */
		if (fid->file_char & UDF_FILE_CHAR_DEL)
			continue;

		if ((fid->l_fi == 0) && (fid->file_char & UDF_FILE_CHAR_PAR)) {
			/* Do up the '.' and '..' entries.  Dummy values are
			 * used for the cookies since the offset here is
			 * usually zero, and NFS doesn't like that value
			 */
			dir.d_fileno = node->hash_id;
			dir.d_type = DT_DIR;
			dir.d_name[0] = '.';
			dir.d_namlen = 1;
			dir.d_reclen = FUNC0(&dir);
			dir.d_off = 1;
			FUNC2(&dir);
			uiodir.dirent = &dir;
			error = FUNC14(&uiodir, dir.d_reclen, uio, 1);
			if (error)
				break;

			dir.d_fileno = FUNC11(&fid->icb);
			dir.d_type = DT_DIR;
			dir.d_name[0] = '.';
			dir.d_name[1] = '.';
			dir.d_namlen = 2;
			dir.d_reclen = FUNC0(&dir);
			dir.d_off = 2;
			FUNC2(&dir);
			uiodir.dirent = &dir;
			error = FUNC14(&uiodir, dir.d_reclen, uio, 2);
		} else {
			dir.d_namlen = FUNC13(&fid->data[fid->l_iu],
			    &dir.d_name[0], fid->l_fi, udfmp);
			dir.d_fileno = FUNC11(&fid->icb);
			dir.d_type = (fid->file_char & UDF_FILE_CHAR_DIR) ?
			    DT_DIR : DT_UNKNOWN;
			dir.d_reclen = FUNC0(&dir);
			dir.d_off = ds->this_off;
			FUNC2(&dir);
			uiodir.dirent = &dir;
			error = FUNC14(&uiodir, dir.d_reclen, uio,
			    ds->this_off);
		}
		if (error)
			break;
		uio->uio_offset = ds->offset + ds->off;
	}

	/* tell the calling layer whether we need to be called again */
	*a->a_eofflag = uiodir.eofflag;

	if (error < 0)
		error = 0;
	if (!error)
		error = ds->error;

	FUNC9(ds);

	if (a->a_ncookies != NULL) {
		if (error)
			FUNC3(cookies, M_TEMP);
		else {
			*a->a_ncookies = uiodir.acookies;
			*a->a_cookies = cookies;
		}
	}

	return (error);
}