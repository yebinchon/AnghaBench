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
struct nfsmount {int nm_flag; scalar_t__ nm_minorvers; scalar_t__ nm_sotype; scalar_t__ nm_acdirmin; scalar_t__ nm_acdirmax; scalar_t__ nm_acregmin; scalar_t__ nm_acregmax; scalar_t__ nm_nametimeo; scalar_t__ nm_negnametimeo; scalar_t__ nm_rsize; scalar_t__ nm_wsize; scalar_t__ nm_readdirsize; scalar_t__ nm_readahead; scalar_t__ nm_wcommitsize; scalar_t__ nm_timeo; scalar_t__ nm_retry; } ;

/* Variables and functions */
 int NFSMNT_INT ; 
 int NFSMNT_INTEGRITY ; 
 int NFSMNT_KERB ; 
 int NFSMNT_NFSV3 ; 
 int NFSMNT_NFSV4 ; 
 int NFSMNT_NOCONN ; 
 int NFSMNT_NOCTO ; 
 int NFSMNT_NOLOCKD ; 
 int NFSMNT_NONCONTIGWR ; 
 int NFSMNT_ONEOPENOWN ; 
 int NFSMNT_PNFS ; 
 int NFSMNT_PRIVACY ; 
 int NFSMNT_RDIRPLUS ; 
 int NFSMNT_RESVPORT ; 
 int NFSMNT_SOFT ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct nfsmount*,int,char*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsmount*,scalar_t__,char*,char**,size_t*) ; 

void FUNC2(struct nfsmount *nmp, char *buffer, size_t buflen)
{
	char *buf;
	size_t blen;

	buf = buffer;
	blen = buflen;
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_NFSV4) != 0, "nfsv4", &buf,
	    &blen);
	if ((nmp->nm_flag & NFSMNT_NFSV4) != 0) {
		FUNC1(nmp, nmp->nm_minorvers, ",minorversion", &buf,
		    &blen);
		FUNC0(nmp, (nmp->nm_flag & NFSMNT_PNFS) != 0, ",pnfs",
		    &buf, &blen);
		FUNC0(nmp, (nmp->nm_flag & NFSMNT_ONEOPENOWN) != 0 &&
		    nmp->nm_minorvers > 0, ",oneopenown", &buf, &blen);
	}
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_NFSV3) != 0, "nfsv3", &buf,
	    &blen);
	FUNC0(nmp, (nmp->nm_flag & (NFSMNT_NFSV3 | NFSMNT_NFSV4)) == 0,
	    "nfsv2", &buf, &blen);
	FUNC0(nmp, nmp->nm_sotype == SOCK_STREAM, ",tcp", &buf, &blen);
	FUNC0(nmp, nmp->nm_sotype != SOCK_STREAM, ",udp", &buf, &blen);
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_RESVPORT) != 0, ",resvport",
	    &buf, &blen);
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_NOCONN) != 0, ",noconn",
	    &buf, &blen);
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_SOFT) == 0, ",hard", &buf,
	    &blen);
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_SOFT) != 0, ",soft", &buf,
	    &blen);
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_INT) != 0, ",intr", &buf,
	    &blen);
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_NOCTO) == 0, ",cto", &buf,
	    &blen);
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_NOCTO) != 0, ",nocto", &buf,
	    &blen);
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_NONCONTIGWR) != 0,
	    ",noncontigwr", &buf, &blen);
	FUNC0(nmp, (nmp->nm_flag & (NFSMNT_NOLOCKD | NFSMNT_NFSV4)) ==
	    0, ",lockd", &buf, &blen);
	FUNC0(nmp, (nmp->nm_flag & (NFSMNT_NOLOCKD | NFSMNT_NFSV4)) ==
	    NFSMNT_NOLOCKD, ",nolockd", &buf, &blen);
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_RDIRPLUS) != 0, ",rdirplus",
	    &buf, &blen);
	FUNC0(nmp, (nmp->nm_flag & NFSMNT_KERB) == 0, ",sec=sys",
	    &buf, &blen);
	FUNC0(nmp, (nmp->nm_flag & (NFSMNT_KERB | NFSMNT_INTEGRITY |
	    NFSMNT_PRIVACY)) == NFSMNT_KERB, ",sec=krb5", &buf, &blen);
	FUNC0(nmp, (nmp->nm_flag & (NFSMNT_KERB | NFSMNT_INTEGRITY |
	    NFSMNT_PRIVACY)) == (NFSMNT_KERB | NFSMNT_INTEGRITY), ",sec=krb5i",
	    &buf, &blen);
	FUNC0(nmp, (nmp->nm_flag & (NFSMNT_KERB | NFSMNT_INTEGRITY |
	    NFSMNT_PRIVACY)) == (NFSMNT_KERB | NFSMNT_PRIVACY), ",sec=krb5p",
	    &buf, &blen);
	FUNC1(nmp, nmp->nm_acdirmin, ",acdirmin", &buf, &blen);
	FUNC1(nmp, nmp->nm_acdirmax, ",acdirmax", &buf, &blen);
	FUNC1(nmp, nmp->nm_acregmin, ",acregmin", &buf, &blen);
	FUNC1(nmp, nmp->nm_acregmax, ",acregmax", &buf, &blen);
	FUNC1(nmp, nmp->nm_nametimeo, ",nametimeo", &buf, &blen);
	FUNC1(nmp, nmp->nm_negnametimeo, ",negnametimeo", &buf,
	    &blen);
	FUNC1(nmp, nmp->nm_rsize, ",rsize", &buf, &blen);
	FUNC1(nmp, nmp->nm_wsize, ",wsize", &buf, &blen);
	FUNC1(nmp, nmp->nm_readdirsize, ",readdirsize", &buf,
	    &blen);
	FUNC1(nmp, nmp->nm_readahead, ",readahead", &buf, &blen);
	FUNC1(nmp, nmp->nm_wcommitsize, ",wcommitsize", &buf,
	    &blen);
	FUNC1(nmp, nmp->nm_timeo, ",timeout", &buf, &blen);
	FUNC1(nmp, nmp->nm_retry, ",retrans", &buf, &blen);
}