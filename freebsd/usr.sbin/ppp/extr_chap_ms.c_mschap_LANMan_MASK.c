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
typedef  char u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 char FUNC3 (char) ; 

void
FUNC4(char *digest, char *challenge, char *secret)
{
  static u_char salt[] = "KGS!@#$%";	/* RASAPI32.dll */
  char SECRET[14], *ptr, *end;
  u_char hash[16];

  end = SECRET + sizeof SECRET;
  for (ptr = SECRET; *secret && ptr < end; ptr++, secret++)
    *ptr = FUNC3(*secret);
  if (ptr < end)
    FUNC2(ptr, '\0', end - ptr);

  FUNC1(salt, SECRET, hash);
  FUNC1(salt, SECRET + 7, hash + 8);

  FUNC0(challenge, hash, digest);
}