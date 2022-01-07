
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int vc_srvname; } ;
struct smb_share {int ss_name; } ;
struct smb_connobj {int co_level; struct smb_connobj* co_parent; } ;


 struct smb_share* CPTOSS (struct smb_connobj*) ;
 struct smb_vc* CPTOVC (struct smb_connobj*) ;
 int EINVAL ;
 int SMBERROR (char*,int) ;



__attribute__((used)) static int
smb_rq_getenv(struct smb_connobj *layer,
 struct smb_vc **vcpp, struct smb_share **sspp)
{
 struct smb_vc *vcp = ((void*)0);
 struct smb_share *ssp = ((void*)0);
 struct smb_connobj *cp;
 int error = 0;

 switch (layer->co_level) {
     case 128:
  vcp = CPTOVC(layer);
  if (layer->co_parent == ((void*)0)) {
   SMBERROR("zombie VC %s\n", vcp->vc_srvname);
   error = EINVAL;
   break;
  }
  break;
     case 129:
  ssp = CPTOSS(layer);
  cp = layer->co_parent;
  if (cp == ((void*)0)) {
   SMBERROR("zombie share %s\n", ssp->ss_name);
   error = EINVAL;
   break;
  }
  error = smb_rq_getenv(cp, &vcp, ((void*)0));
  if (error)
   break;
  break;
     default:
  SMBERROR("invalid layer %d passed\n", layer->co_level);
  error = EINVAL;
 }
 if (vcpp)
  *vcpp = vcp;
 if (sspp)
  *sspp = ssp;
 return error;
}
