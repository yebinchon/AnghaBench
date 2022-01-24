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
typedef  int /*<<< orphan*/  SHA_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* SHA1_Pad1 ; 
 char* SHA1_Pad2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,long) ; 

void
FUNC4(char *StartKey, char *SessionKey, long SessionKeyLength,
                 char *InterimKey)
{
  SHA_CTX Context;
  char Digest[SHA_DIGEST_LENGTH];

  FUNC1(&Context);
  FUNC2(&Context, StartKey, SessionKeyLength);
  FUNC2(&Context, SHA1_Pad1, 40);
  FUNC2(&Context, SessionKey, SessionKeyLength);
  FUNC2(&Context, SHA1_Pad2, 40);
  FUNC0(Digest, &Context);

  FUNC3(InterimKey, Digest, SessionKeyLength);
}