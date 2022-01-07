
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exfat_vbr {int ev_fsname; } ;
typedef int FILE ;


 int free (struct exfat_vbr*) ;
 scalar_t__ read_buf (int *,int ,int) ;
 scalar_t__ strncmp (int ,char*,int) ;

int
fstyp_exfat(FILE *fp, char *label, size_t size)
{
 struct exfat_vbr *ev;

 ev = (struct exfat_vbr *)read_buf(fp, 0, 512);
 if (ev == ((void*)0) || strncmp(ev->ev_fsname, "EXFAT   ", 8) != 0)
  goto fail;





 free(ev);
 return (0);

fail:
 free(ev);
 return (1);
}
