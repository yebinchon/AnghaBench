
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mppe_state {int sesskey; int keylen; int mastkey; } ;
typedef int RC4_KEY ;


 int GetNewKeyFromSHA (int ,int ,int ,char*) ;
 int MPPEReduceSessionKey (struct mppe_state*) ;
 int MPPE_KEY_LEN ;
 int RC4 (int *,int ,char*,int ) ;
 int RC4_set_key (int *,int ,char*) ;

__attribute__((used)) static void
MPPEKeyChange(struct mppe_state *mp)
{
  char InterimKey[MPPE_KEY_LEN];
  RC4_KEY RC4Key;

  GetNewKeyFromSHA(mp->mastkey, mp->sesskey, mp->keylen, InterimKey);
  RC4_set_key(&RC4Key, mp->keylen, InterimKey);
  RC4(&RC4Key, mp->keylen, InterimKey, mp->sesskey);

  MPPEReduceSessionKey(mp);
}
