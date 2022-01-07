
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFSMNT_INTEGRITY ;
 int NFSMNT_KERB ;
 int NFSMNT_PRIVACY ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
nfs_sec_name(char *sec, int *flagsp)
{
 if (!strcmp(sec, "krb5"))
  *flagsp |= NFSMNT_KERB;
 else if (!strcmp(sec, "krb5i"))
  *flagsp |= (NFSMNT_KERB | NFSMNT_INTEGRITY);
 else if (!strcmp(sec, "krb5p"))
  *flagsp |= (NFSMNT_KERB | NFSMNT_PRIVACY);
}
