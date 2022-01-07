
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int MD4_CTX ;


 int MD4Final (int *,int *) ;
 int MD4Init (int *) ;
 int MD4Update (int *,int *,int) ;
 int M_SMBTEMP ;
 int M_WAITOK ;
 int bzero (int *,int) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;
 int smb_E (int *,int *,int *) ;
 int smb_strtouni (int *,int const*) ;
 int strlen (int const*) ;

int
smb_ntencrypt(const u_char *apwd, u_char *C8, u_char *RN)
{
 u_char S21[21];
 u_int16_t *unipwd;
 MD4_CTX *ctxp;
 u_int len;

 len = strlen(apwd);
 unipwd = malloc((len + 1) * sizeof(u_int16_t), M_SMBTEMP, M_WAITOK);



 smb_strtouni(unipwd, apwd);
 ctxp = malloc(sizeof(MD4_CTX), M_SMBTEMP, M_WAITOK);
 MD4Init(ctxp);
 MD4Update(ctxp, (u_char*)unipwd, len * sizeof(u_int16_t));
 free(unipwd, M_SMBTEMP);
 bzero(S21, 21);
 MD4Final(S21, ctxp);
 free(ctxp, M_SMBTEMP);

 smb_E(S21, C8, RN);
 smb_E(S21 + 7, C8, RN + 8);
 smb_E(S21 + 14, C8, RN + 16);
 return 0;
}
