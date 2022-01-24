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
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  int /*<<< orphan*/  krb5_get_init_creds_opt ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_deltat ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC16(const char *name)
{
	krb5_error_code ret, opt_ret, princ_ret, cc_ret, kt_ret, cred_ret;
	krb5_context context;
	krb5_principal principal;
	krb5_keytab kt;
	krb5_creds cred;
	krb5_get_init_creds_opt *opt;
	krb5_deltat start_time = 0;
	krb5_ccache ccache;

	ret = FUNC11(&context);
	if (ret != 0)
		return (ret);
	opt_ret = cc_ret = kt_ret = cred_ret = 1;	/* anything non-zero */
	princ_ret = ret = FUNC14(context, name, &principal);
	if (ret == 0)
		opt_ret = ret = FUNC8(context, &opt);
	if (ret == 0)
		cc_ret = ret = FUNC1(context, &ccache);
	if (ret == 0)
		ret = FUNC2(context, ccache, principal);
	if (ret == 0) {
		FUNC10(context, "gssd",
		    FUNC15(context, principal), opt);
		kt_ret = ret = FUNC13(context, &kt);
	}
	if (ret == 0)
		cred_ret = ret = FUNC7(context, &cred,
		    principal, kt, start_time, NULL, opt);
	if (ret == 0)
		ret = FUNC3(context, ccache, &cred);
	if (kt_ret == 0)
		FUNC12(context, kt);
	if (cc_ret == 0)
		FUNC0(context, ccache);
	if (opt_ret == 0)
		FUNC9(context, opt);
	if (princ_ret == 0)
		FUNC6(context, principal);
	if (cred_ret == 0)
		FUNC5(context, &cred);
	FUNC4(context);
	return (ret);
}