
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_int ;
typedef int u_char ;
struct smb_vc {int vc_hflags2; int vc_mackeylen; int * vc_mackey; int vc_ch; scalar_t__ vc_seqno; } ;
typedef int MD4_CTX ;


 int KASSERT (int,char*) ;
 int MD4Final (int *,int *) ;
 int MD4Init (int *) ;
 int MD4Update (int *,int *,int) ;
 int M_SMBTEMP ;
 int M_WAITOK ;
 int SMB_FLAGS2_SECURITY_SIGNATURE ;
 int bcopy (int *,int *,int) ;
 int bzero (int *,int) ;
 int free (int *,int ) ;
 void* malloc (int,int ,int ) ;
 int smb_E (int *,int ,int *) ;
 int smb_strtouni (int *,char const*) ;
 char* smb_vc_getpass (struct smb_vc*) ;
 int strlen (char const*) ;

int
smb_calcmackey(struct smb_vc *vcp)
{
 const char *pwd;
 u_int16_t *unipwd;
 u_int len;
 MD4_CTX md4;
 u_char S16[16], S21[21];

 KASSERT(vcp->vc_hflags2 & SMB_FLAGS2_SECURITY_SIGNATURE,
     ("signatures not enabled"));

 if (vcp->vc_mackey != ((void*)0)) {
  free(vcp->vc_mackey, M_SMBTEMP);
  vcp->vc_mackey = ((void*)0);
  vcp->vc_mackeylen = 0;
  vcp->vc_seqno = 0;
 }





 vcp->vc_mackeylen = 16 + 24;
 vcp->vc_mackey = malloc(vcp->vc_mackeylen, M_SMBTEMP, M_WAITOK);





 pwd = smb_vc_getpass(vcp);
 len = strlen(pwd);
 unipwd = malloc((len + 1) * sizeof(u_int16_t), M_SMBTEMP, M_WAITOK);
 smb_strtouni(unipwd, pwd);
 MD4Init(&md4);
 MD4Update(&md4, (u_char *)unipwd, len * sizeof(u_int16_t));
 MD4Final(S16, &md4);
 MD4Init(&md4);
 MD4Update(&md4, S16, 16);
 MD4Final(vcp->vc_mackey, &md4);
 free(unipwd, M_SMBTEMP);





 bzero(S21, 21);
 bcopy(S16, S21, 16);
 smb_E(S21, vcp->vc_ch, vcp->vc_mackey + 16);
 smb_E(S21 + 7, vcp->vc_ch, vcp->vc_mackey + 24);
 smb_E(S21 + 14, vcp->vc_ch, vcp->vc_mackey + 32);

 return (0);
}
