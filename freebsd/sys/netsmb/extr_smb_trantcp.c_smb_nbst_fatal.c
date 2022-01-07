
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int dummy; } ;






__attribute__((used)) static int
smb_nbst_fatal(struct smb_vc *vcp, int error)
{
 switch (error) {
     case 128:
     case 129:
     case 130:
  return 1;
 }
 return 0;
}
