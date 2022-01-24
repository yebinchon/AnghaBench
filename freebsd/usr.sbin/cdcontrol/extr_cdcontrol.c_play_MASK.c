#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ioc_toc_header {int ending_track; int starting_track; } ;
struct cd_toc_entry {int dummy; } ;
struct TYPE_4__ {unsigned char minute; unsigned char second; unsigned char frame; } ;
struct TYPE_5__ {int /*<<< orphan*/  lba; TYPE_1__ msf; } ;
struct TYPE_6__ {TYPE_2__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDIOREADTOCHEADER ; 
 int /*<<< orphan*/  fd ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ioc_toc_header*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ msf ; 
 int FUNC2 (unsigned char,unsigned char,unsigned char) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int FUNC6 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (char*,char*,...) ; 
 scalar_t__ FUNC10 (char*,char) ; 
 TYPE_3__* toc_buffer ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12(char *arg)
{
	struct ioc_toc_header h;
	unsigned int n;
	int rc, start, end = 0, istart = 1, iend = 1;

	rc = FUNC0 (fd, CDIOREADTOCHEADER, &h);

	if (rc < 0)
		return (rc);

	n = h.ending_track - h.starting_track + 1;
	rc = FUNC8 ((n + 1) * sizeof (struct cd_toc_entry));

	if (rc < 0)
		return (rc);

	if (! arg || ! *arg) {
		/* Play the whole disc */
		if (msf)
			return FUNC4 (0, FUNC2 (toc_buffer[n].addr.msf.minute,
							toc_buffer[n].addr.msf.second,
							toc_buffer[n].addr.msf.frame));
		else
			return FUNC4 (0, FUNC3(toc_buffer[n].addr.lba));
	}

	if (FUNC10 (arg, '#')) {
		/* Play block #blk [ len ] */
		int blk, len = 0;

		if (2 != FUNC9 (arg, "#%d%d", &blk, &len) &&
		    1 != FUNC9 (arg, "#%d", &blk))
			goto Clean_up;

		if (len == 0) {
			if (msf)
				len = FUNC2 (toc_buffer[n].addr.msf.minute,
					       toc_buffer[n].addr.msf.second,
					       toc_buffer[n].addr.msf.frame) - blk;
			else
				len = FUNC3(toc_buffer[n].addr.lba) - blk;
		}
		return FUNC4 (blk, len);
	}

	if (FUNC10 (arg, ':')) {
		/*
		 * Play MSF m1:s1 [ .f1 ] [ m2:s2 [ .f2 ] ]
		 *
		 * Will now also undestand timed addresses relative
		 * to the beginning of a track in the form...
		 *
		 *      tr1 m1:s1[.f1] [[tr2] [m2:s2[.f2]]]
		 */
		unsigned tr1, tr2;
		unsigned m1, m2, s1, s2, f1, f2;
		unsigned char tm, ts, tf;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (8 == FUNC9 (arg, "%d %d:%d.%d %d %d:%d.%d",
		    &tr1, &m1, &s1, &f1, &tr2, &m2, &s2, &f2))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (7 == FUNC9 (arg, "%d %d:%d %d %d:%d.%d",
		    &tr1, &m1, &s1, &tr2, &m2, &s2, &f2))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (7 == FUNC9 (arg, "%d %d:%d.%d %d %d:%d",
		    &tr1, &m1, &s1, &f1, &tr2, &m2, &s2))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (7 == FUNC9 (arg, "%d %d:%d.%d %d:%d.%d",
		    &tr1, &m1, &s1, &f1, &m2, &s2, &f2))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (6 == FUNC9 (arg, "%d %d:%d.%d %d:%d",
		    &tr1, &m1, &s1, &f1, &m2, &s2))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (6 == FUNC9 (arg, "%d %d:%d %d:%d.%d",
		    &tr1, &m1, &s1, &m2, &s2, &f2))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (6 == FUNC9 (arg, "%d %d:%d.%d %d %d",
		    &tr1, &m1, &s1, &f1, &tr2, &m2))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (5 == FUNC9 (arg, "%d %d:%d %d:%d", &tr1, &m1, &s1, &m2, &s2))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (5 == FUNC9 (arg, "%d %d:%d %d %d",
		    &tr1, &m1, &s1, &tr2, &m2))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (5 == FUNC9 (arg, "%d %d:%d.%d %d",
		    &tr1, &m1, &s1, &f1, &tr2))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (4 == FUNC9 (arg, "%d %d:%d %d", &tr1, &m1, &s1, &tr2))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (4 == FUNC9 (arg, "%d %d:%d.%d", &tr1, &m1, &s1, &f1))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		if (3 == FUNC9 (arg, "%d %d:%d", &tr1, &m1, &s1))
			goto Play_Relative_Addresses;

		tr2 = m2 = s2 = f2 = f1 = 0;
		goto Try_Absolute_Timed_Addresses;

Play_Relative_Addresses:
		if (! tr1)
			tr1 = 1;
		else if (tr1 > n)
			tr1 = n;

		tr1--;

		if (msf) {
			tm = toc_buffer[tr1].addr.msf.minute;
			ts = toc_buffer[tr1].addr.msf.second;
			tf = toc_buffer[tr1].addr.msf.frame;
		} else
			FUNC1(FUNC3(toc_buffer[tr1].addr.lba),
				&tm, &ts, &tf);
		if ((m1 > tm)
		    || ((m1 == tm)
		    && ((s1 > ts)
		    || ((s1 == ts)
		    && (f1 > tf))))) {
			FUNC7 ("Track %d is not that long.\n", tr1);
			return (0);
		}

		f1 += tf;
		if (f1 >= 75) {
			s1 += f1 / 75;
			f1 %= 75;
		}

		s1 += ts;
		if (s1 >= 60) {
			m1 += s1 / 60;
			s1 %= 60;
		}

		m1 += tm;

		if (! tr2) {
			if (m2 || s2 || f2) {
				tr2 = tr1;
				f2 += f1;
				if (f2 >= 75) {
					s2 += f2 / 75;
					f2 %= 75;
				}

				s2 += s1;
				if (s2 > 60) {
					m2 += s2 / 60;
					s2 %= 60;
				}

				m2 += m1;
			} else {
				tr2 = n;
				if (msf) {
					m2 = toc_buffer[n].addr.msf.minute;
					s2 = toc_buffer[n].addr.msf.second;
					f2 = toc_buffer[n].addr.msf.frame;
				} else {
					FUNC1(FUNC3(toc_buffer[n].addr.lba),
						&tm, &ts, &tf);
					m2 = tm;
					s2 = ts;
					f2 = tf;
				}
			}
		} else if (tr2 > n) {
			tr2 = n;
			m2 = s2 = f2 = 0;
		} else {
			if (m2 || s2 || f2)
				tr2--;
			if (msf) {
				tm = toc_buffer[tr2].addr.msf.minute;
				ts = toc_buffer[tr2].addr.msf.second;
				tf = toc_buffer[tr2].addr.msf.frame;
			} else
				FUNC1(FUNC3(toc_buffer[tr2].addr.lba),
					&tm, &ts, &tf);
			f2 += tf;
			if (f2 >= 75) {
				s2 += f2 / 75;
				f2 %= 75;
			}

			s2 += ts;
			if (s2 > 60) {
				m2 += s2 / 60;
				s2 %= 60;
			}

			m2 += tm;
		}

		if (msf) {
			tm = toc_buffer[n].addr.msf.minute;
			ts = toc_buffer[n].addr.msf.second;
			tf = toc_buffer[n].addr.msf.frame;
		} else
			FUNC1(FUNC3(toc_buffer[n].addr.lba),
				&tm, &ts, &tf);
		if ((tr2 < n)
		    && ((m2 > tm)
		    || ((m2 == tm)
		    && ((s2 > ts)
		    || ((s2 == ts)
		    && (f2 > tf)))))) {
			FUNC7 ("The playing time of the disc is not that long.\n");
			return (0);
		}
		return (FUNC5 (m1, s1, f1, m2, s2, f2));

Try_Absolute_Timed_Addresses:
		if (6 != FUNC9 (arg, "%d:%d.%d%d:%d.%d",
			&m1, &s1, &f1, &m2, &s2, &f2) &&
		    5 != FUNC9 (arg, "%d:%d.%d%d:%d", &m1, &s1, &f1, &m2, &s2) &&
		    5 != FUNC9 (arg, "%d:%d%d:%d.%d", &m1, &s1, &m2, &s2, &f2) &&
		    3 != FUNC9 (arg, "%d:%d.%d", &m1, &s1, &f1) &&
		    4 != FUNC9 (arg, "%d:%d%d:%d", &m1, &s1, &m2, &s2) &&
		    2 != FUNC9 (arg, "%d:%d", &m1, &s1))
			goto Clean_up;

		if (m2 == 0) {
			if (msf) {
				m2 = toc_buffer[n].addr.msf.minute;
				s2 = toc_buffer[n].addr.msf.second;
				f2 = toc_buffer[n].addr.msf.frame;
			} else {
				FUNC1(FUNC3(toc_buffer[n].addr.lba),
					&tm, &ts, &tf);
				m2 = tm;
				s2 = ts;
				f2 = tf;
			}
		}
		return FUNC5 (m1, s1, f1, m2, s2, f2);
	}

	/*
	 * Play track trk1 [ .idx1 ] [ trk2 [ .idx2 ] ]
	 */
	if (4 != FUNC9 (arg, "%d.%d%d.%d", &start, &istart, &end, &iend) &&
	    3 != FUNC9 (arg, "%d.%d%d", &start, &istart, &end) &&
	    3 != FUNC9 (arg, "%d%d.%d", &start, &end, &iend) &&
	    2 != FUNC9 (arg, "%d.%d", &start, &istart) &&
	    2 != FUNC9 (arg, "%d%d", &start, &end) &&
	    1 != FUNC9 (arg, "%d", &start))
		goto Clean_up;

	if (end == 0)
		end = n;
	return (FUNC6 (start, istart, end, iend));

Clean_up:
	FUNC11("invalid command arguments");
	return (0);
}