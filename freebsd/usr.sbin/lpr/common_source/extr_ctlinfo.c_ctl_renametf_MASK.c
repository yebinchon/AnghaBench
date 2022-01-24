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
typedef  int /*<<< orphan*/  tfname2 ;
struct stat {int st_size; } ;
struct cjobinfo {char* cji_accthost; char* cji_acctuser; char* cji_class; char* cji_jobname; char* cji_headruser; char* cji_mailto; int /*<<< orphan*/  cji_dfcount; } ;
typedef  int /*<<< orphan*/  errm ;
typedef  int /*<<< orphan*/  cfname2 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CTI_LINEMAX ; 
 int /*<<< orphan*/  NAME_MAX ; 
 char* OTHER_USERID_CHARS ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 char* TRIGGERTEST_FNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cjobinfo*) ; 
 char* FUNC2 (struct cjobinfo*) ; 
 struct cjobinfo* FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct cjobinfo*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 char* from_host ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (char) ; 
 scalar_t__ FUNC11 (char) ; 
 scalar_t__ FUNC12 (char) ; 
 int FUNC13 (char const*,char*) ; 
 int FUNC14 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char const*,...) ; 
 int FUNC17 (char const*,struct stat*) ; 
 char* FUNC18 (char*,char) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 char* FUNC20 (char*) ; 
 char* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,size_t) ; 
 char FUNC25 (char) ; 
 int /*<<< orphan*/  FUNC26 (char const*) ; 

char *
FUNC27(const char *ptrname, const char *tfname)
{
	int chk3rd, has_uc, newfd, nogood, res;
	FILE *newcf;
	struct cjobinfo *cjinf;
	char *lbuff, *slash, *cp;
	char tfname2[NAME_MAX+1], cfname2[NAME_MAX+1];
	char errm[CTI_LINEMAX];

#ifdef TRIGGERTEST_FNAME
	struct stat tstat;
	res = stat(TRIGGERTEST_FNAME, &tstat);
	if (res == -1) {
		/*
		 * if the trigger file does NOT exist in this spool directory,
		 * then do the exact same steps that the pre-ctlinfo code had
		 * been doing.  Ie, very little.
		 */
		strlcpy(cfname2, tfname, sizeof(cfname2));
		cfname2[0] = 'c';
		res = link(tfname, cfname2);
		if (res < 0) {
			snprintf(errm, sizeof(errm),
			    "ctl_renametf error link(%s,%s): %s", tfname,
			    cfname2, strerror(errno));
			return strdup(errm);
		}
		unlink(tfname);
		return NULL;
	}
#endif
	cjinf = NULL;		/* in case of early jump to error_ret */
	newcf = NULL;		/* in case of early jump to error_ret */
	*errm = '\0';		/* in case of early jump to error_ret */

	chk3rd = tfname[2];
	if ((tfname[0] != 't') || (tfname[1] != 'f') || (!FUNC9(chk3rd))) {
		FUNC16(errm, sizeof(errm),
		    "ctl_renametf invalid filename: %s", tfname);
		goto error_ret;
	}

	cjinf = FUNC3(ptrname, tfname);
	if (cjinf == NULL) {
		FUNC16(errm, sizeof(errm),
		    "ctl_renametf error cti_readcf(%s)", tfname);
		goto error_ret;
	}

	/*
	 * This uses open+fdopen instead of fopen because that combination
	 * gives us greater control over file-creation issues.
	 */
	FUNC23(tfname2, tfname, sizeof(tfname2));
	tfname2[0] = 'r';		/* rf<letter><job><hostname> */
	newfd = FUNC14(tfname2, O_WRONLY|O_CREAT|O_TRUNC, 0660);
	if (newfd == -1) {
		FUNC16(errm, sizeof(errm),
		    "ctl_renametf error open(%s): %s", tfname2,
		    FUNC21(errno));
		goto error_ret;
	}
	newcf = FUNC6(newfd, "w");
	if (newcf == NULL) {
		FUNC0(newfd);
		FUNC16(errm, sizeof(errm),
		    "ctl_renametf error fopen(%s): %s", tfname2,
		    FUNC21(errno));
		goto error_ret;
	}

	/*
	 * Do extra sanity checks on some key job-attribute fields, and
	 * write them out first (thus making sure they are written in the
	 * order we generally expect them to be in).
	 */
	/*
	 * Some lpr implementations on PC's set a null-string for their
	 * hostname.  A MacOS 10 system which has not correctly setup
	 * /etc/hostconfig will claim a hostname of 'localhost'.  Anything
	 * with blanks in it would be an invalid value for hostname.  For
	 * any of these invalid hostname values, replace the given value
	 * with the name of the host that this job is coming from.
	 */
	nogood = 0;
	if (cjinf->cji_accthost == NULL)
		nogood = 1;
	else if (FUNC19(cjinf->cji_accthost, ".na.") == 0)
		nogood = 1;
	else if (FUNC19(cjinf->cji_accthost, "localhost") == 0)
		nogood = 1;
	else {
		for (cp = cjinf->cji_accthost; *cp != '\0'; cp++) {
			if (*cp <= ' ') {
				nogood = 1;
				break;
			}
		}
	}
	if (nogood)
		FUNC7(newcf, "H%s\n", from_host);
	else
		FUNC7(newcf, "H%s\n", cjinf->cji_accthost);

	/*
	 * Now do some sanity checks on the 'P' (original userid) value.  Note
	 * that the 'P'erson line is the second line which is ALWAYS supposed
	 * to be present in a control file.
	 *
	 * There is no particularly good value to use for replacements, but
	 * at least make sure the value is something reasonable to use in
	 * environment variables and statistics records.  Again, some PC
	 * implementations send a null-string for a value.  Various Mac
	 * implementations will set whatever string the user has set for
	 * their 'Owner Name', which usually includes blanks, etc.
	 */
	nogood = 0;
	if (cjinf->cji_acctuser == NULL)
		nogood = 1;
	else if (FUNC19(cjinf->cji_acctuser, ".na.") == 0)
		;			/* No further checks needed... */
	else {
		has_uc = 0;
		cp = cjinf->cji_acctuser;
		if (*cp == '-')
			*cp++ = '_';
		for (; *cp != '\0'; cp++) {
			if (FUNC11(*cp) || FUNC10(*cp))
				continue;	/* Standard valid characters */
			if (FUNC18(OTHER_USERID_CHARS, *cp) != NULL)
				continue;	/* Some more valid characters */
			if (FUNC12(*cp)) {
				has_uc = 1;	/* These may be valid... */
				continue;
			}
			*cp = '_';
		}
		/*
		 * Some Windows hosts send print jobs where the correct userid
		 * has been converted to uppercase, and that can cause trouble
		 * for sites that expect the correct value (for something like
		 * accounting).  On the other hand, some sites do use uppercase
		 * in their userids, so we can't blindly convert to lowercase.
		 */
		if (has_uc && (FUNC8(cjinf->cji_acctuser) == NULL)) {
			for (cp = cjinf->cji_acctuser; *cp != '\0'; cp++) {
				if (FUNC12(*cp))
					*cp = FUNC25(*cp);
			}
		}
	}
	if (nogood)
		FUNC7(newcf, "P%s\n", ".na.");
	else
		FUNC7(newcf, "P%s\n", cjinf->cji_acctuser);

	/* No need for sanity checks on class, jobname, "literal" user. */
	if (cjinf->cji_class != NULL)
		FUNC7(newcf, "C%s\n", cjinf->cji_class);
	if (cjinf->cji_jobname != NULL)
		FUNC7(newcf, "J%s\n", cjinf->cji_jobname);
	if (cjinf->cji_headruser != NULL)
		FUNC7(newcf, "L%s\n", cjinf->cji_headruser);

	/*
	 * This should probably add more sanity checks on mailto value.
	 * Note that if the mailto value is "wrong", then there's no good
	 * way to know what the "correct" value would be, and we should not
	 * semd email to some random address.  At least for now, just ignore
	 * any invalid values.
	 */
	nogood = 0;
	if (cjinf->cji_mailto == NULL)
		nogood = 1;
	else {
		for (cp = cjinf->cji_mailto; *cp != '\0'; cp++) {
			if (*cp <= ' ') {
				nogood = 1;
				break;
			}
		}
	}
	if (!nogood)
		FUNC7(newcf, "M%s\n", cjinf->cji_mailto);

	/*
	 * Now go thru the old control file, copying all information which
	 * hasn't already been written into the new file.
	 */
	FUNC4(cjinf);
	lbuff = FUNC2(cjinf);
	while (lbuff != NULL) {
		switch (lbuff[0]) {
		case 'H':
		case 'P':
		case 'C':
		case 'J':
		case 'L':
		case 'M':
			/* already wrote values for these to the newcf */
			break;
		case 'N':
			/* see comments under 'U'... */
			if (cjinf->cji_dfcount == 0) {
				/* in this case, 'N's will be done in 'U' */
				break;
			}
			FUNC7(newcf, "%s\n", lbuff);
			break;
		case 'U':
			/*
			 * check for the very common case where the remote
			 * host had to process 'lpr -s -r', but it did not
			 * remove the Unlink line from the control file.
			 * Such Unlink lines will legitimately have a '/' in
			 * them, but it is the original lpr host which would
			 * have done the unlink of such files, and not any
			 * host receiving that job.
			 */
			slash = FUNC18(lbuff, '/');
			if (slash != NULL) {
				break;		/* skip this line */
			}
			/*
			 * Okay, another kind of broken lpr implementation
			 * is one which send datafiles, and Unlink's those
			 * datafiles, but never includes any PRINT request
			 * for those files.  Experimentation shows that one
			 * copy of those datafiles should be printed with a
			 * format of 'f'.  If this is an example of such a
			 * screwed-up control file, fix it here.
			 */
			if (cjinf->cji_dfcount == 0) {
				lbuff++;
				if (FUNC24(lbuff, "df", (size_t)2) == 0) {
					FUNC7(newcf, "f%s\n", lbuff);
					FUNC7(newcf, "U%s\n", lbuff);
					FUNC7(newcf, "N%s\n", lbuff);
				}
				break;
			}
			FUNC7(newcf, "%s\n", lbuff);
			break;
		default:
			FUNC7(newcf, "%s\n", lbuff);
			break;
		}
		lbuff = FUNC2(cjinf);
	}

	FUNC1(cjinf);
	cjinf = NULL;

	res = FUNC5(newcf);
	newcf = NULL;
	if (res != 0) {
		FUNC16(errm, sizeof(errm),
		    "ctl_renametf error fclose(%s): %s", tfname2,
		    FUNC21(errno));
		goto error_ret;
	}

	FUNC23(cfname2, tfname, sizeof(cfname2));
	cfname2[0] = 'c';		/* rename new file to 'cfA*' */
	res = FUNC13(tfname2, cfname2);
	if (res != 0) {
		FUNC16(errm, sizeof(errm),
		    "ctl_renametf error link(%s,%s): %s", tfname2, cfname2,
		    FUNC21(errno));
		goto error_ret;
	}

	/* All the important work is done.  Now just remove temp files */
#ifdef LEAVE_TMPCF_FILES
	{
		struct stat tfstat;
		size_t size1;
		tfstat.st_size = 1;	/* certainly invalid value */
		res = stat(tfname, &tfstat);
		size1 = tfstat.st_size;
		tfstat.st_size = 2;	/* certainly invalid value */
		res = stat(tfname2, &tfstat);
		/*
		 * If the sizes do not match, or either stat call failed,
		 * then do not remove the temp files, but just move them
		 * out of the way.  This is so I can see what this routine
		 * had changed (and the files won't interfere with some
		 * later job coming in from the same host).  In this case,
		 * we don't care if we clobber some previous file.
		 */
		if (size1 != tfstat.st_size) {
			strlcpy(cfname2, tfname, sizeof(cfname2));
			strlcat(cfname2, "._T", sizeof(cfname2));
			rename(tfname, cfname2);
			strlcpy(cfname2, tfname2, sizeof(cfname2));
			strlcat(cfname2, "._T", sizeof(cfname2));
			rename(tfname2, cfname2);
			return NULL;
		}
	}
#endif
	FUNC26(tfname);
	FUNC26(tfname2);
    
	return NULL;

error_ret:
	if (cjinf != NULL)
		FUNC1(cjinf);
	if (newcf != NULL)
		FUNC5(newcf);

	if (*errm != '\0')
		return FUNC20(errm);
	return FUNC20("ctl_renametf internal (missed) error");
}