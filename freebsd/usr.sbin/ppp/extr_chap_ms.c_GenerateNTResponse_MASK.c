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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 

void
FUNC3(char *AuthenticatorChallenge, char *PeerChallenge,
                   char *UserName, char *Password,
                   int PasswordLen, char *Response)
{
  char Challenge[8];
  char PasswordHash[16];

  FUNC0(PeerChallenge, AuthenticatorChallenge, UserName, Challenge);
  FUNC2(Password, PasswordLen, PasswordHash);
  FUNC1(Challenge, PasswordHash, Response);
}