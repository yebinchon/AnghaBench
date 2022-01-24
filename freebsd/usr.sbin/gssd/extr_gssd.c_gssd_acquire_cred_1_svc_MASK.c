#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct svc_req {int dummy; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
struct TYPE_9__ {int length; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  ccname ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_10__ {int /*<<< orphan*/  output_cred; void* major_status; scalar_t__ minor_status; int /*<<< orphan*/  time_rec; int /*<<< orphan*/  actual_mechs; } ;
typedef  TYPE_2__ acquire_cred_res ;
struct TYPE_11__ {scalar_t__ desired_name; scalar_t__ uid; int /*<<< orphan*/  cred_usage; int /*<<< orphan*/  desired_mechs; int /*<<< orphan*/  time_req; } ;
typedef  TYPE_3__ acquire_cred_args ;

/* Variables and functions */
 char* GSSD_CREDENTIAL_CACHE_FILE ; 
 int /*<<< orphan*/  GSS_C_INITIATE ; 
 int /*<<< orphan*/  GSS_C_NO_NAME ; 
 void* GSS_S_BAD_NAME ; 
 void* GSS_S_COMPLETE ; 
 void* GSS_S_CREDENTIALS_EXPIRED ; 
 void* GSS_S_FAILURE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  TRUE ; 
 char* ccfile_dirlist ; 
 scalar_t__ debug_level ; 
 int FUNC0 (char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (scalar_t__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ hostbased_initiator_cred ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC13 (char*,char) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

bool_t
FUNC15(acquire_cred_args *argp, acquire_cred_res *result, struct svc_req *rqstp)
{
	gss_name_t desired_name = GSS_C_NO_NAME;
	gss_cred_id_t cred;
	char ccname[PATH_MAX + 5 + 1], *cp, *cp2;
	int gotone;
#ifndef WITHOUT_KERBEROS
	gss_buffer_desc namebuf;
	uint32_t minstat;
	krb5_error_code kret;
#endif

	FUNC10(result, 0, sizeof(*result));
	if (argp->desired_name) {
		desired_name = FUNC5(argp->desired_name);
		if (!desired_name) {
			result->major_status = GSS_S_BAD_NAME;
			FUNC8("gssd_acquire_cred: no desired name"
			    " found\n");
			return (TRUE);
		}
	}

#ifndef WITHOUT_KERBEROS
	if (hostbased_initiator_cred != 0 && argp->desired_name != 0 &&
	    argp->uid == 0 && argp->cred_usage == GSS_C_INITIATE) {
		/* This is a host based initiator name in the keytab file. */
		FUNC12(ccname, sizeof(ccname), "FILE:%s",
		    GSSD_CREDENTIAL_CACHE_FILE);
		FUNC11("KRB5CCNAME", ccname, TRUE);
		result->major_status = FUNC3(&result->minor_status,
		    desired_name, &namebuf, NULL);
		FUNC8("gssd_acquire_cred: desired name for host "
		    "based initiator cred major=0x%x minor=%d\n",
		    (unsigned int)result->major_status,
		    (int)result->minor_status);
		if (result->major_status != GSS_S_COMPLETE)
			return (TRUE);
		if (namebuf.length > PATH_MAX + 5) {
			result->minor_status = 0;
			result->major_status = GSS_S_FAILURE;
			return (TRUE);
		}
		FUNC9(ccname, namebuf.value, namebuf.length);
		ccname[namebuf.length] = '\0';
		if ((cp = FUNC13(ccname, '@')) != NULL)
			*cp = '/';
		kret = FUNC6(ccname);
		FUNC8("gssd_acquire_cred: using keytab entry for "
		    "%s, kerberos ret=%d\n", ccname, (int)kret);
		FUNC4(&minstat, &namebuf);
		if (kret != 0) {
			result->minor_status = kret;
			result->major_status = GSS_S_FAILURE;
			return (TRUE);
		}
	} else
#endif /* !WITHOUT_KERBEROS */
	if (ccfile_dirlist[0] != '\0' && argp->desired_name == 0) {
		/*
		 * For the "-s" case and no name provided as an
		 * argument, search the directory list for an appropriate
		 * credential cache file. If the search fails, return failure.
		 */
		gotone = 0;
		cp = ccfile_dirlist;
		do {
			cp2 = FUNC13(cp, ':');
			if (cp2 != NULL)
				*cp2 = '\0';
			gotone = FUNC0(cp, argp->uid, ccname);
			if (gotone != 0)
				break;
			if (cp2 != NULL)
				*cp2++ = ':';
			cp = cp2;
		} while (cp != NULL && *cp != '\0');
		if (gotone == 0) {
			result->major_status = GSS_S_CREDENTIALS_EXPIRED;
			FUNC8("gssd_acquire_cred: no cred cache"
			    " file found\n");
			return (TRUE);
		}
		FUNC11("KRB5CCNAME", ccname, TRUE);
	} else {
		/*
		 * If there wasn't a "-s" option or the name has
		 * been provided as an argument, do it the old way.
		 * When a name is provided, it will normally exist in the
		 * default keytab file and the uid will be root.
		 */
		if (argp->desired_name != 0 && argp->uid != 0) {
			if (debug_level == 0)
				FUNC14(LOG_ERR, "gss_acquire_cred:"
				    " principal_name for non-root");
			else
				FUNC1(stderr, "gss_acquire_cred:"
				    " principal_name for non-root\n");
		}
		FUNC12(ccname, sizeof(ccname), "FILE:/tmp/krb5cc_%d",
		    (int) argp->uid);
		FUNC11("KRB5CCNAME", ccname, TRUE);
	}

	result->major_status = FUNC2(&result->minor_status,
	    desired_name, argp->time_req, argp->desired_mechs,
	    argp->cred_usage, &cred, &result->actual_mechs, &result->time_rec);
	FUNC8("gssd_acquire_cred: done major=0x%x minor=%d\n",
	    (unsigned int)result->major_status, (int)result->minor_status);

	if (result->major_status == GSS_S_COMPLETE)
		result->output_cred = FUNC7(cred);
	else
		result->output_cred = 0;

	return (TRUE);
}