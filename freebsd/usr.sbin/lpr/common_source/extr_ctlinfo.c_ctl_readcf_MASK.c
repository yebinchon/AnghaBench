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
struct cjobinfo {char* cji_fname; int /*<<< orphan*/ * cji_acctuser; int /*<<< orphan*/ * cji_accthost; int /*<<< orphan*/  cji_dfcount; void* cji_mailto; void* cji_headruser; void* cji_jobname; void* cji_class; void* cji_curqueue; struct cjprivate* cji_priv; } ;
struct cjprivate {char* cji_buff; int cji_buffsize; char* cji_eobuff; struct cjobinfo pub; scalar_t__ cji_dumpit; int /*<<< orphan*/ * cji_fstream; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t CTI_LINEMAX ; 
 char const* DEBUGREADCF_FNAME ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/ * ctl_dbgfile ; 
 scalar_t__ ctl_dbgline ; 
 int /*<<< orphan*/  ctl_dbgstat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct cjobinfo*) ; 
 char* FUNC1 (struct cjobinfo*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*,void*,long,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC8 (size_t,int) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 void* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 size_t FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 

struct cjobinfo *
FUNC15(const char *ptrname, const char *cfname)
{
	int id;
	char *lbuff;
	void *cstart;
	FILE *cfile;
	struct cjprivate *cpriv;
	struct cjobinfo *cjinf;
	size_t msize, sroom, sroom2;

	cfile = FUNC3(cfname, "r");
	if (cfile == NULL) {
		FUNC14(LOG_ERR, "%s: ctl_readcf error fopen(%s): %s",
		    ptrname, cfname, FUNC12(errno));
		return NULL;
	}

	sroom = FUNC8(sizeof(struct cjprivate), 8);
	sroom2 = sroom + FUNC13(cfname) + 1;
	sroom2 = FUNC8(sroom2, 8);
	msize = sroom2 + CTI_LINEMAX;
	msize = FUNC8(msize, 8);
	cstart = FUNC6(msize);
	if (cstart == NULL) {
		FUNC2(cfile);
		return NULL;
	}
	FUNC7(cstart, 0, msize);
	cpriv = (struct cjprivate *)cstart;
	cpriv->pub.cji_priv = cpriv;

	cpriv->pub.cji_fname = (char *)cstart + sroom;
	FUNC10(cpriv->pub.cji_fname, cfname);
	cpriv->cji_buff = (char *)cstart + sroom2;
	cpriv->cji_buffsize = (int)(msize - sroom2);
	cpriv->cji_eobuff = (char *)cstart + msize - 1;

	cpriv->cji_fstream = cfile;
	cpriv->pub.cji_curqueue = FUNC11(ptrname);

	ctl_dbgline = 0;
#ifdef DEBUGREADCF_FNAME
	ctl_dbgfile = NULL;
	id = stat(DEBUGREADCF_FNAME, &ctl_dbgstat);
	if (id != -1) {
		/* the file exists in this spool directory, write some simple
		 * debugging info to it */
		ctl_dbgfile = fopen(DEBUGREADCF_FNAME, "a");
		if (ctl_dbgfile != NULL) {
			fprintf(ctl_dbgfile, "%s: s=%p r=%ld e=%p %p->%s\n",
			    ptrname, (void *)cpriv, (long)sroom,
			    cpriv->cji_eobuff, cpriv->pub.cji_fname,
			    cpriv->pub.cji_fname);
		}
	}
#endif
	/*
	 * Copy job-attribute values from control file to the struct of
	 * "public" information.  In some cases, it is invalid for the
	 * value to be a null-string, so that is ignored.
	 */
	cjinf = &(cpriv->pub);
	lbuff = FUNC1(cjinf);
	while (lbuff != NULL) {
		id = *lbuff++;
		switch (id) {
		case 'C':
			cpriv->pub.cji_class = FUNC11(lbuff);
			break;
		case 'H':
			if (*lbuff == '\0')
				break;
			cpriv->pub.cji_accthost = FUNC11(lbuff);
			break;
		case 'J':
			cpriv->pub.cji_jobname = FUNC11(lbuff);
			break;
		case 'L':
			cpriv->pub.cji_headruser = FUNC11(lbuff);
			break;
		case 'M':
			/*
			 * No valid mail-to address would start with a minus.
			 * If this one does, it is probably some trickster who
			 * is trying to trigger options on sendmail.  Ignore.
			 */
			if (*lbuff == '-')
				break;
			if (*lbuff == '\0')
				break;
			cpriv->pub.cji_mailto = FUNC11(lbuff);
			break;
		case 'P':
			if (*lbuff == '\0')
				break;
			/* The userid must not start with a minus sign */
			if (*lbuff == '-')
				*lbuff = '_';
			cpriv->pub.cji_acctuser = FUNC11(lbuff);
			break;
		default:
			if (FUNC5(id)) {
				cpriv->pub.cji_dfcount++;
			}
			break;
		}
		lbuff = FUNC1(cjinf);
	}

	/* the 'H'ost and 'P'erson fields are *always* supposed to be there */
	if (cpriv->pub.cji_accthost == NULL)
		cpriv->pub.cji_accthost = FUNC11(".na.");
	if (cpriv->pub.cji_acctuser == NULL)
		cpriv->pub.cji_acctuser = FUNC11(".na.");

#ifdef DEBUGREADCF_FNAME
	if (ctl_dbgfile != NULL) {
		if (cpriv->cji_dumpit)
			ctl_dumpcji(ctl_dbgfile, "end readcf", &(cpriv->pub));
		fclose(ctl_dbgfile);
		ctl_dbgfile = NULL;
	}
#endif
	return &(cpriv->pub);
}