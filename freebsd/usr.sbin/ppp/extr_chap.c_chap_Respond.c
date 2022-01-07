
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_4__ {int id; int physical; } ;
struct TYPE_3__ {int local; int peer; } ;
struct chap {int NTRespSent; TYPE_2__ auth; int authresponse; TYPE_1__ challenge; } ;


 int CHAP_FAILURE ;
 int CHAP_RESPONSE ;
 int ChapOutput (int ,int ,int ,char*,int,char*) ;
 scalar_t__ MPPE_IsServer ;
 char* chap_BuildAnswer (char*,char*,int ,int ,char,int ,int ,int) ;
 int free (char*) ;
 char strlen (char*) ;

__attribute__((used)) static void
chap_Respond(struct chap *chap, char *name, char *key

             , u_char type, int lm

            )
{
  u_char *ans;

  ans = chap_BuildAnswer(name, key, chap->auth.id, chap->challenge.peer

                         , type, chap->challenge.local, chap->authresponse, lm

                        );

  if (ans) {
    ChapOutput(chap->auth.physical, CHAP_RESPONSE, chap->auth.id,
               ans, *ans + 1 + strlen(name), name);

    chap->NTRespSent = !lm;
    MPPE_IsServer = 0;

    free(ans);
  } else
    ChapOutput(chap->auth.physical, CHAP_FAILURE, chap->auth.id,
               "Out of memory!", 14, ((void*)0));
}
