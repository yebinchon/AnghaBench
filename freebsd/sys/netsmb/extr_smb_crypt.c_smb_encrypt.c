
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int M_SMBTEMP ;
 int M_WAITOK ;
 int * N8 ;
 int bcopy (int const*,int *,int ) ;
 int bzero (int *,int) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;
 int min (int,int ) ;
 int smb_E (int *,int *,int *) ;
 int strlen (int const*) ;

int
smb_encrypt(const u_char *apwd, u_char *C8, u_char *RN)
{
 u_char *p, *P14, *S21;

 p = malloc(14 + 21, M_SMBTEMP, M_WAITOK);
 bzero(p, 14 + 21);
 P14 = p;
 S21 = p + 14;
 bcopy(apwd, P14, min(14, strlen(apwd)));



 smb_E(P14, N8, S21);
 smb_E(P14 + 7, N8, S21 + 8);

 smb_E(S21, C8, RN);
 smb_E(S21 + 7, C8, RN + 8);
 smb_E(S21 + 14, C8, RN + 16);
 free(p, M_SMBTEMP);
 return 0;
}
