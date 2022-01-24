#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* h_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin_addr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_2__* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* hst ; 
 long FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  logfile ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_1__ source ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(char *req)
{
	char	log_buff[256];
	char	msg[1024];
	char	env_host[80], env_addr[80];
	long	addr;
	FILE	*log;

	FUNC11(log_buff,FUNC6(source.sin_addr));
	FUNC9(env_addr, "REMOTE_ADDR=%s",log_buff);

	addr=FUNC5(log_buff);

	FUNC11(msg,FUNC0());
	FUNC10(msg,"    ");
	hst=FUNC4((char*) &addr, 4, AF_INET);

	/* If DNS hostname exists */
	if (hst) {
	  FUNC10(msg,hst->h_name);
	  FUNC9(env_host, "REMOTE_HOST=%s",hst->h_name);
	}
	FUNC10(msg," (");
	FUNC10(msg,log_buff);
	FUNC10(msg,")   ");
	FUNC10(msg,req);

	if (daemonize) {
	  log=FUNC2(logfile,"a");
	  FUNC3(log,"%s\n",msg);
	  FUNC1(log);
	} else
	  FUNC7("%s\n",msg);

	/* This is for CGI scripts */
	FUNC8(env_addr);
	FUNC8(env_host);
}