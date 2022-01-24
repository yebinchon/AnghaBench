#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  scalar_t__ time_t ;
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_5__ {scalar_t__ endtime; } ;
struct TYPE_6__ {TYPE_1__ times; int /*<<< orphan*/  client; int /*<<< orphan*/  server; } ;
typedef  TYPE_2__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  krb5_cc_cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct passwd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 char* pref_realm ; 
 char* FUNC11 (char*,char) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(const char *filepath, uid_t uid, int *retrating,
    time_t *retexptime)
{
#ifndef WITHOUT_KERBEROS
	krb5_context context;
	krb5_principal princ;
	krb5_ccache ccache;
	krb5_error_code retval;
	krb5_cc_cursor curse;
	krb5_creds krbcred;
	int gotone, orating, rating, ret;
	struct passwd *pw;
	char *cp, *cp2, *pname;
	time_t exptime;

	/* Find a likely name for the uid principal. */
	pw = FUNC1(uid);

	/*
	 * Do a bunch of krb5 library stuff to try and determine if
	 * this file is a credentials cache with an appropriate TGT
	 * in it.
	 */
	retval = FUNC9(&context);
	if (retval != 0)
		return (0);
	retval = FUNC5(context, filepath, &ccache);
	if (retval != 0) {
		FUNC7(context);
		return (0);
	}
	ret = 0;
	orating = 0;
	exptime = 0;
	retval = FUNC6(context, ccache, &curse);
	if (retval == 0) {
		while ((retval = FUNC4(context, ccache, &curse,
		    &krbcred)) == 0) {
			gotone = 0;
			rating = 0;
			retval = FUNC10(context, krbcred.server,
			    &pname);
			if (retval == 0) {
				cp = FUNC11(pname, '/');
				if (cp != NULL) {
					*cp++ = '\0';
					if (FUNC12(pname, "krbtgt") == 0 &&
					    krbcred.times.endtime > FUNC13(NULL)
					    ) {
						gotone = 1;
						/*
						 * Test to see if this is a
						 * tgt for cross-realm auth.
						 * Rate it higher, if it is not.
						 */
						cp2 = FUNC11(cp, '@');
						if (cp2 != NULL) {
							*cp2++ = '\0';
							if (FUNC12(cp, cp2) ==
							    0)
								rating++;
						}
					}
				}
				FUNC0(pname);
			}
			if (gotone != 0) {
				retval = FUNC10(context,
				    krbcred.client, &pname);
				if (retval == 0) {
					cp = FUNC11(pname, '@');
					if (cp != NULL) {
						*cp++ = '\0';
						if (pw != NULL && FUNC12(pname,
						    pw->pw_name) == 0)
							rating++;
						if (FUNC11(pname, '/') == NULL)
							rating++;
						if (pref_realm[0] != '\0' &&
						    FUNC12(cp, pref_realm) == 0)
							rating++;
					}
				}
				FUNC0(pname);
				if (rating > orating) {
					orating = rating;
					exptime = krbcred.times.endtime;
				} else if (rating == orating &&
				    krbcred.times.endtime > exptime)
					exptime = krbcred.times.endtime;
				ret = 1;
			}
			FUNC8(context, &krbcred);
		}
		FUNC3(context, ccache, &curse);
	}
	FUNC2(context, ccache);
	FUNC7(context);
	if (ret != 0) {
		*retrating = orating;
		*retexptime = exptime;
	}
	return (ret);
#else /* WITHOUT_KERBEROS */
	return (0);
#endif /* !WITHOUT_KERBEROS */
}