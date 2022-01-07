
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safe_session {int ses_klen; int * ses_key; } ;
typedef int caddr_t ;


 int N (int *) ;
 int bcopy (int ,int *,int) ;
 int htole32 (int ) ;

__attribute__((used)) static void
safe_setup_enckey(struct safe_session *ses, caddr_t key)
{
 int i;

 bcopy(key, ses->ses_key, ses->ses_klen / 8);


 for (i = 0; i < N(ses->ses_key); i++)
  ses->ses_key[i] = htole32(ses->ses_key[i]);
}
