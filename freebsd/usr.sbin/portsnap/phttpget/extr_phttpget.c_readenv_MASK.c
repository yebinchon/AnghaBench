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
struct TYPE_2__ {long tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,...) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/ * env_HTTP_PROXY ; 
 char* env_HTTP_PROXY_AUTH ; 
 char* env_HTTP_TIMEOUT ; 
 char* env_HTTP_USER_AGENT ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/ * proxyauth ; 
 char* proxyport ; 
 char* FUNC5 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC8 (char**,char*) ; 
 long FUNC9 (char*,char**,int) ; 
 TYPE_1__ timo ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static void
FUNC11(void)
{
	char *proxy_auth_userpass, *proxy_auth_userpass64, *p;
	char *proxy_auth_user = NULL;
	char *proxy_auth_pass = NULL;
	long http_timeout;

	env_HTTP_PROXY = FUNC4("HTTP_PROXY");
	if (env_HTTP_PROXY == NULL)
		env_HTTP_PROXY = FUNC4("http_proxy");
	if (env_HTTP_PROXY != NULL) {
		if (FUNC7(env_HTTP_PROXY, "http://", 7) == 0)
			env_HTTP_PROXY += 7;
		p = FUNC5(env_HTTP_PROXY, '/');
		if (p != NULL)
			*p = 0;
		p = FUNC5(env_HTTP_PROXY, ':');
		if (p != NULL) {
			*p = 0;
			proxyport = p + 1;
		} else
			proxyport = "3128";
	}

	env_HTTP_PROXY_AUTH = FUNC4("HTTP_PROXY_AUTH");
	if ((env_HTTP_PROXY != NULL) &&
	    (env_HTTP_PROXY_AUTH != NULL) &&
	    (FUNC6(env_HTTP_PROXY_AUTH, "basic:" , 6) == 0)) {
		/* Ignore authentication scheme */
		(void) FUNC8(&env_HTTP_PROXY_AUTH, ":");

		/* Ignore realm */
		(void) FUNC8(&env_HTTP_PROXY_AUTH, ":");

		/* Obtain username and password */
		proxy_auth_user = FUNC8(&env_HTTP_PROXY_AUTH, ":");
		proxy_auth_pass = env_HTTP_PROXY_AUTH;
	}

	if ((proxy_auth_user != NULL) && (proxy_auth_pass != NULL)) {
		FUNC0(&proxy_auth_userpass, "%s:%s",
		    proxy_auth_user, proxy_auth_pass);
		if (proxy_auth_userpass == NULL)
			FUNC2(1, "asprintf");

		proxy_auth_userpass64 = FUNC1(proxy_auth_userpass);
		if (proxy_auth_userpass64 == NULL)
			FUNC2(1, "malloc");

		FUNC0(&proxyauth, "Proxy-Authorization: Basic %s\r\n",
		    proxy_auth_userpass64);
		if (proxyauth == NULL)
			FUNC2(1, "asprintf");

		FUNC3(proxy_auth_userpass);
		FUNC3(proxy_auth_userpass64);
	} else
		proxyauth = NULL;

	env_HTTP_USER_AGENT = FUNC4("HTTP_USER_AGENT");
	if (env_HTTP_USER_AGENT == NULL)
		env_HTTP_USER_AGENT = "phttpget/0.1";

	env_HTTP_TIMEOUT = FUNC4("HTTP_TIMEOUT");
	if (env_HTTP_TIMEOUT != NULL) {
		http_timeout = FUNC9(env_HTTP_TIMEOUT, &p, 10);
		if ((*env_HTTP_TIMEOUT == '\0') || (*p != '\0') ||
		    (http_timeout < 0))
			FUNC10("HTTP_TIMEOUT (%s) is not a positive integer",
			    env_HTTP_TIMEOUT);
		else
			timo.tv_sec = http_timeout;
	}
}