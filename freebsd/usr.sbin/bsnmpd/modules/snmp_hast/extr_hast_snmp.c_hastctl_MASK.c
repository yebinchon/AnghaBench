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
struct proto_conn {int dummy; } ;
struct nv {int dummy; } ;
struct hastd_config {int hc_controladdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HAST_TIMEOUT ; 
 int /*<<< orphan*/  cfgpath ; 
 int FUNC0 (struct proto_conn*,struct nv**) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct proto_conn*,struct nv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nv*) ; 
 int FUNC3 (struct nv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,struct proto_conn**) ; 
 int /*<<< orphan*/  FUNC7 (struct proto_conn*) ; 
 int FUNC8 (struct proto_conn*,int /*<<< orphan*/ ) ; 
 struct hastd_config* FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(struct nv *nvin, struct nv **nvout)
{
	struct hastd_config *cfg;
	struct proto_conn *conn;
	struct nv *nv;
	int error;

	cfg = FUNC9(cfgpath, true);
	if (cfg == NULL)
		return (-1);

	/* Setup control connection... */
	if (FUNC6(NULL, cfg->hc_controladdr, &conn) == -1) {
		FUNC5("Unable to setup control connection to %s",
		    cfg->hc_controladdr);
		return (-1);
	}
	/* ...and connect to hastd. */
	if (FUNC8(conn, HAST_TIMEOUT) == -1) {
		FUNC5("Unable to connect to hastd via %s",
		    cfg->hc_controladdr);
		FUNC7(conn);
		return (-1);
	}
	/* Send the command to the server... */
	if (FUNC1(NULL, conn, nvin, NULL, 0) == -1) {
		FUNC5("Unable to send command to hastd via %s",
		    cfg->hc_controladdr);
		FUNC7(conn);
		return (-1);
	}
	/* ...and receive reply. */
	if (FUNC0(conn, &nv) == -1) {
		FUNC5("cannot receive reply from hastd via %s",
		    cfg->hc_controladdr);
		FUNC7(conn);
		return (-1);
	}
	FUNC7(conn);
	error = FUNC3(nv, "error");
	if (error != 0) {
		FUNC5("Error %d received from hastd.", error);
		FUNC2(nv);
		return (-1);
	}
	FUNC4(nv, 0);
	*nvout = nv;
	return (0);
}