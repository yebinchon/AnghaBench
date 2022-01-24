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
typedef  char u_short ;
typedef  char u_char ;
struct udphdr {char uh_ulen; } ;
struct dns_header {scalar_t__ opcode; scalar_t__ qr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogDNS ; 
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 scalar_t__ OPCODE_QUERY ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 

__attribute__((used)) static void
FUNC6(const struct udphdr *uh, const char *direction)
{
  struct dns_header header;
  const u_short *pktptr;
  const u_char *ptr;
  u_short *hptr, tmp;
  unsigned len;

  ptr = (const char *)uh + sizeof *uh;
  len = FUNC5(uh->uh_ulen) - sizeof *uh;
  if (len < sizeof header + 5)		/* rfc1024 */
    return;

  pktptr = (const u_short *)ptr;
  hptr = (u_short *)&header;
  ptr += sizeof header;
  len -= sizeof header;

  while (pktptr < (const u_short *)ptr) {
    *hptr++ = FUNC5(*pktptr);		/* Careful of macro side-effects ! */
    pktptr++;
  }

  if (header.opcode == OPCODE_QUERY && header.qr == 0) {
    /* rfc1035 */
    char namewithdot[MAXHOSTNAMELEN + 1], *n;
    const char *qtype, *qclass;
    const u_char *end;

    n = namewithdot;
    end = ptr + len - 4;
    if (end - ptr >= (int)sizeof namewithdot)
      end = ptr + sizeof namewithdot - 1;
    while (ptr < end) {
      len = *ptr++;
      if ((int)len > end - ptr)
        len = end - ptr;
      if (n != namewithdot)
        *n++ = '.';
      FUNC4(n, ptr, len);
      ptr += len;
      n += len;
    }
    *n = '\0';

    if (FUNC2(LogDNS)) {
      FUNC4(&tmp, end, sizeof tmp);
      qtype = FUNC1(FUNC5(tmp));
      FUNC4(&tmp, end + 2, sizeof tmp);
      qclass = FUNC0(FUNC5(tmp));

      FUNC3(LogDNS, "%sbound query %s %s %s\n",
                 direction, qclass, qtype, namewithdot);
    }
  }
}