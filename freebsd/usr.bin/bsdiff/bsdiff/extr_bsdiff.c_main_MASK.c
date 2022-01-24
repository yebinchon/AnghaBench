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
typedef  int uintmax_t ;
typedef  scalar_t__ u_char ;
typedef  scalar_t__ saidx_t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BZFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BZ_OK ; 
 int /*<<< orphan*/  EFBIG ; 
 int OFF_MAX ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SIZE_T_MAX ; 
 int SSIZE_MAX ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (scalar_t__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__*) ; 
 int FUNC17 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (int,scalar_t__*,int) ; 
 int FUNC19 (scalar_t__*,scalar_t__*,int,scalar_t__*,int,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC20 () ; 

int FUNC21(int argc,char *argv[])
{
	int fd;
	u_char *old,*new;
	off_t oldsize,newsize;
	saidx_t *I;
	off_t scan,pos,len;
	off_t lastscan,lastpos,lastoffset;
	off_t oldscore,scsc;
	off_t s,Sf,lenf,Sb,lenb;
	off_t overlap,Ss,lens;
	off_t i;
	off_t dblen,eblen;
	u_char *db,*eb;
	u_char buf[8];
	u_char header[32];
	FILE * pf;
	BZFILE * pfbz2;
	int bz2err;

	if (argc != 4)
		FUNC20();

	/* Allocate oldsize+1 bytes instead of oldsize bytes to ensure
		that we never try to malloc(0) and get a NULL pointer */
	if(((fd=FUNC17(argv[1],O_RDONLY|O_BINARY,0))<0) ||
	    ((oldsize=FUNC13(fd,0,SEEK_END))==-1))
		FUNC5(1, "%s", argv[1]);

	if (oldsize > SSIZE_MAX ||
	    (uintmax_t)oldsize >= SIZE_T_MAX / sizeof(off_t) ||
	    oldsize == OFF_MAX) {
		errno = EFBIG;
		FUNC5(1, "%s", argv[1]);
	}

	if (((old=FUNC14(oldsize+1))==NULL) ||
		(FUNC13(fd,0,SEEK_SET)!=0) ||
		(FUNC18(fd,old,oldsize)!=oldsize) ||
		(FUNC3(fd)==-1)) FUNC5(1,"%s",argv[1]);

	if(((I=FUNC14((oldsize+1)*sizeof(saidx_t)))==NULL)) FUNC5(1,NULL);

	if(FUNC4(old, I, oldsize)) FUNC5(1, "divsufsort");

	/* Allocate newsize+1 bytes instead of newsize bytes to ensure
		that we never try to malloc(0) and get a NULL pointer */
	if(((fd=FUNC17(argv[2],O_RDONLY|O_BINARY,0))<0) ||
	    ((newsize=FUNC13(fd,0,SEEK_END))==-1))
		FUNC5(1, "%s", argv[2]);

	if (newsize > SSIZE_MAX || (uintmax_t)newsize >= SIZE_T_MAX ||
	    newsize == OFF_MAX) {
		errno = EFBIG;
		FUNC5(1, "%s", argv[2]);
	}

	if (((new=FUNC14(newsize+1))==NULL) ||
		(FUNC13(fd,0,SEEK_SET)!=0) ||
		(FUNC18(fd,new,newsize)!=newsize) ||
		(FUNC3(fd)==-1)) FUNC5(1,"%s",argv[2]);

	if(((db=FUNC14(newsize+1))==NULL) ||
		((eb=FUNC14(newsize+1))==NULL)) FUNC5(1,NULL);
	dblen=0;
	eblen=0;

	/* Create the patch file */
	if ((pf = FUNC8(argv[3], "wb")) == NULL)
		FUNC5(1, "%s", argv[3]);

	/* Header is
		0	8	 "BSDIFF40"
		8	8	length of bzip2ed ctrl block
		16	8	length of bzip2ed diff block
		24	8	length of new file */
	/* File is
		0	32	Header
		32	??	Bzip2ed ctrl block
		??	??	Bzip2ed diff block
		??	??	Bzip2ed extra block */
	FUNC15(header,"BSDIFF40",8);
	FUNC16(0, header + 8);
	FUNC16(0, header + 16);
	FUNC16(newsize, header + 24);
	if (FUNC12(header, 32, 1, pf) != 1)
		FUNC5(1, "fwrite(%s)", argv[3]);

	/* Compute the differences, writing ctrl as we go */
	if ((pfbz2 = FUNC2(&bz2err, pf, 9, 0, 0)) == NULL)
		FUNC6(1, "BZ2_bzWriteOpen, bz2err = %d", bz2err);
	scan=0;len=0;pos=0;
	lastscan=0;lastpos=0;lastoffset=0;
	while(scan<newsize) {
		oldscore=0;

		for(scsc=scan+=len;scan<newsize;scan++) {
			len=FUNC19(I,old,oldsize,new+scan,newsize-scan,
					0,oldsize,&pos);

			for(;scsc<scan+len;scsc++)
			if((scsc+lastoffset<oldsize) &&
				(old[scsc+lastoffset] == new[scsc]))
				oldscore++;

			if(((len==oldscore) && (len!=0)) || 
				(len>oldscore+8)) break;

			if((scan+lastoffset<oldsize) &&
				(old[scan+lastoffset] == new[scan]))
				oldscore--;
		}

		if((len!=oldscore) || (scan==newsize)) {
			s=0;Sf=0;lenf=0;
			for(i=0;(lastscan+i<scan)&&(lastpos+i<oldsize);) {
				if(old[lastpos+i]==new[lastscan+i]) s++;
				i++;
				if(s*2-i>Sf*2-lenf) { Sf=s; lenf=i; }
			}

			lenb=0;
			if(scan<newsize) {
				s=0;Sb=0;
				for(i=1;(scan>=lastscan+i)&&(pos>=i);i++) {
					if(old[pos-i]==new[scan-i]) s++;
					if(s*2-i>Sb*2-lenb) { Sb=s; lenb=i; }
				}
			}

			if(lastscan+lenf>scan-lenb) {
				overlap=(lastscan+lenf)-(scan-lenb);
				s=0;Ss=0;lens=0;
				for(i=0;i<overlap;i++) {
					if(new[lastscan+lenf-overlap+i]==
					   old[lastpos+lenf-overlap+i]) s++;
					if(new[scan-lenb+i]==
					   old[pos-lenb+i]) s--;
					if(s>Ss) { Ss=s; lens=i+1; }
				}

				lenf+=lens-overlap;
				lenb-=lens;
			}

			for(i=0;i<lenf;i++)
				db[dblen+i]=new[lastscan+i]-old[lastpos+i];
			for(i=0;i<(scan-lenb)-(lastscan+lenf);i++)
				eb[eblen+i]=new[lastscan+lenf+i];

			dblen+=lenf;
			eblen+=(scan-lenb)-(lastscan+lenf);

			FUNC16(lenf,buf);
			FUNC0(&bz2err, pfbz2, buf, 8);
			if (bz2err != BZ_OK)
				FUNC6(1, "BZ2_bzWrite, bz2err = %d", bz2err);

			FUNC16((scan-lenb)-(lastscan+lenf),buf);
			FUNC0(&bz2err, pfbz2, buf, 8);
			if (bz2err != BZ_OK)
				FUNC6(1, "BZ2_bzWrite, bz2err = %d", bz2err);

			FUNC16((pos-lenb)-(lastpos+lenf),buf);
			FUNC0(&bz2err, pfbz2, buf, 8);
			if (bz2err != BZ_OK)
				FUNC6(1, "BZ2_bzWrite, bz2err = %d", bz2err);

			lastscan=scan-lenb;
			lastpos=pos-lenb;
			lastoffset=pos-scan;
		}
	}
	FUNC1(&bz2err, pfbz2, 0, NULL, NULL);
	if (bz2err != BZ_OK)
		FUNC6(1, "BZ2_bzWriteClose, bz2err = %d", bz2err);

	/* Compute size of compressed ctrl data */
	if ((len = FUNC11(pf)) == -1)
		FUNC5(1, "ftello");
	FUNC16(len-32, header + 8);

	/* Write compressed diff data */
	if ((pfbz2 = FUNC2(&bz2err, pf, 9, 0, 0)) == NULL)
		FUNC6(1, "BZ2_bzWriteOpen, bz2err = %d", bz2err);
	FUNC0(&bz2err, pfbz2, db, dblen);
	if (bz2err != BZ_OK)
		FUNC6(1, "BZ2_bzWrite, bz2err = %d", bz2err);
	FUNC1(&bz2err, pfbz2, 0, NULL, NULL);
	if (bz2err != BZ_OK)
		FUNC6(1, "BZ2_bzWriteClose, bz2err = %d", bz2err);

	/* Compute size of compressed diff data */
	if ((newsize = FUNC11(pf)) == -1)
		FUNC5(1, "ftello");
	FUNC16(newsize - len, header + 16);

	/* Write compressed extra data */
	if ((pfbz2 = FUNC2(&bz2err, pf, 9, 0, 0)) == NULL)
		FUNC6(1, "BZ2_bzWriteOpen, bz2err = %d", bz2err);
	FUNC0(&bz2err, pfbz2, eb, eblen);
	if (bz2err != BZ_OK)
		FUNC6(1, "BZ2_bzWrite, bz2err = %d", bz2err);
	FUNC1(&bz2err, pfbz2, 0, NULL, NULL);
	if (bz2err != BZ_OK)
		FUNC6(1, "BZ2_bzWriteClose, bz2err = %d", bz2err);

	/* Seek to the beginning, write the header, and close the file */
	if (FUNC10(pf, 0, SEEK_SET))
		FUNC5(1, "fseeko");
	if (FUNC12(header, 32, 1, pf) != 1)
		FUNC5(1, "fwrite(%s)", argv[3]);
	if (FUNC7(pf))
		FUNC5(1, "fclose");

	/* Free the memory we used */
	FUNC9(db);
	FUNC9(eb);
	FUNC9(I);
	FUNC9(old);
	FUNC9(new);

	return 0;
}