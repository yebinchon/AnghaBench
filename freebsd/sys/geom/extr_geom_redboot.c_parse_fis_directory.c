
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct fis_image_desc {int* name; scalar_t__ offset; scalar_t__ size; struct fis_image_desc* next; } ;
typedef int off_t ;


 int FISDIR_NAME ;
 int REDBCFG_NAME ;
 scalar_t__ bootverbose ;
 int g_redboot_print (int,struct fis_image_desc*) ;
 scalar_t__ match (int*,int ) ;
 scalar_t__ nameok (int*) ;
 int printf (char*,int) ;

__attribute__((used)) static struct fis_image_desc *
parse_fis_directory(u_char *buf, size_t bufsize, off_t offset, uint32_t offmask)
{

 struct fis_image_desc *fd, *efd;
 struct fis_image_desc *fisdir, *redbcfg;
 struct fis_image_desc *head, **tail;
 int i;

 fd = (struct fis_image_desc *)buf;
 efd = fd + (bufsize / sizeof(struct fis_image_desc));
 fisdir = redbcfg = ((void*)0);
 *(tail = &head) = ((void*)0);
 for (i = 0; fd < efd; i++, fd++) {
  if (fd->name[0] == 0xff)
   continue;
  if ((bcmp(fd->name, FISDIR_NAME, sizeof(FISDIR_NAME)-1) == 0))
   fisdir = fd;
  else if ((bcmp(fd->name, REDBCFG_NAME, sizeof(REDBCFG_NAME)-1) == 0))
   redbcfg = fd;
  if (nameok(fd->name)) {




   fd->offset &= offmask;
   if (bootverbose)
    g_redboot_print(i, fd);
   *tail = fd;
   *(tail = &fd->next) = ((void*)0);
  }
 }
 if (fisdir == ((void*)0)) {
  if (bootverbose)
   printf("No RedBoot FIS table located at %lu\n",
       (long) offset);
  return (((void*)0));
 }
 if (redbcfg != ((void*)0) &&
     fisdir->offset + fisdir->size == redbcfg->offset) {



  if (bootverbose)
   printf("FIS/RedBoot merged at 0x%jx (not yet)\n",
       offset + fisdir->offset);

 }
 return head;

}
