
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int dummy; } ;
struct smb_cred {int dummy; } ;
struct smb_connobj {int dummy; } ;


 struct smb_vc* CPTOVC (struct smb_connobj*) ;
 int smb_vc_disconnect (struct smb_vc*) ;

__attribute__((used)) static void
smb_vc_gone(struct smb_connobj *cp, struct smb_cred *scred)
{
 struct smb_vc *vcp = CPTOVC(cp);

 smb_vc_disconnect(vcp);
}
