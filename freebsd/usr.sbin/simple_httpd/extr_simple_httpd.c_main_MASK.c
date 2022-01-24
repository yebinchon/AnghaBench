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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int con_sock ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* fetch_mode ; 
 int FUNC6 () ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (int,char**,char*) ; 
 char* homedir ; 
 int http_port ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  http_sock ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 
 char* logfile ; 
 int FUNC13 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 

int
FUNC22(int argc, char *argv[])
{
	int ch, ld;
	pid_t httpd_group = 65534;
	pid_t server_pid;

	/* Default for html directory */
	FUNC19 (homedir,FUNC7("HOME"));
	if (!FUNC8())	FUNC19 (homedir,"/httphome");
	   else		FUNC18 (homedir,"/httphome");

	/* Defaults for log file */
	if (FUNC8()) {
	    FUNC19(logfile,FUNC7("HOME"));
	    FUNC18(logfile,"/");
	    FUNC18(logfile,"jhttp.log");
	} else 
	  FUNC19(logfile,"/var/log/jhttpd.log");

	/* Parse command line arguments */
	while ((ch = FUNC9(argc, argv, "d:f:g:l:p:vDh")) != -1)
	  switch (ch) {
	  case 'd':
	    FUNC19(homedir,optarg);
	    break;	  
	  case 'f':
	    daemonize = 0;
	    verbose = 1;
	    fetch_mode = optarg;
	    break;
	  case 'g':
	    httpd_group = FUNC1(optarg);
	    break;
	  case 'l':
	    FUNC19(logfile,optarg);
	    break;
	  case 'p':
	    http_port = FUNC1(optarg);
	    break;
	  case 'v':
	    verbose = 1;
	    break;
	  case 'D':
	    daemonize = 0;
	    break;
	  case '?':
	  case 'h':
	  default:
	    FUNC15("usage: simple_httpd [[-d directory][-g grpid][-l logfile][-p port][-vD]]\n");
	    FUNC5(1);
	    /* NOTREACHED */
	  }

	/* Not running as root and no port supplied, assume 1080 */
	if ((http_port == 80) && FUNC8()) {
	  http_port = 1080;
	}

	/* Do we really have rights in the html directory? */
	if (fetch_mode == NULL) {
	  if (FUNC2(homedir)) {
	    FUNC14("chdir");
	    FUNC16(homedir);
	    FUNC5(1);
	  }
	}

	/* Create log file if it doesn't exit */
	if ((FUNC0(logfile,W_OK)) && daemonize) {
	  ld = FUNC13 (logfile,O_WRONLY);
	  FUNC3 (logfile,00600);
	  FUNC4(ld);
	}

	FUNC11();

	if (verbose) {
	  FUNC15("Server started with options \n"); 
	  FUNC15("port: %d\n",http_port);
	  if (fetch_mode == NULL) FUNC15("html home: %s\n",homedir);
	  if (daemonize) FUNC15("logfile: %s\n",logfile);
	}

	/* httpd is spawned */
	if (daemonize) {
	  if ((server_pid = FUNC6()) != 0) {
	    FUNC20(0,WNOHANG,0);
	    if (verbose) FUNC15("pid: %d\n",server_pid);
	    FUNC5(0);
	  }
	  FUNC20(0,WNOHANG,0);
	}

	if (fetch_mode == NULL)
		FUNC17((pid_t)0, httpd_group);

	/* How many connections do you want? 
	 * Keep this lower than the available number of processes
	 */
	if (FUNC12(http_sock,15) < 0) FUNC5(1);

	label:	
	FUNC21();

	if (FUNC6()) {
	  FUNC20(0,WNOHANG,0);
	  FUNC4(con_sock);
	  goto label;
	}

	FUNC10();

	FUNC20(0,WNOHANG,0);
	FUNC5(0);
}