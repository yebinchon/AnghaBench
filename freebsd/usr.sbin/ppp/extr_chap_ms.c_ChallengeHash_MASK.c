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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static void
FUNC6(char *PeerChallenge, char *AuthenticatorChallenge,
              char *UserName, char *Challenge)
{
  SHA_CTX Context;
  char Digest[SHA_DIGEST_LENGTH];
  char *Name;

  Name = FUNC5(UserName, '\\');
  if(NULL == Name)
    Name = UserName;
  else
    Name++;

  FUNC1(&Context);

  FUNC2(&Context, PeerChallenge, 16);
  FUNC2(&Context, AuthenticatorChallenge, 16);
  FUNC2(&Context, Name, FUNC4(Name));

  FUNC0(Digest, &Context);
  FUNC3(Challenge, Digest, 8);
}