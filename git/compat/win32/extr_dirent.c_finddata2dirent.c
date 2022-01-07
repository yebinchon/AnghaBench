
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {int d_type; int d_name; } ;
struct TYPE_3__ {int dwFileAttributes; int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;


 int DT_DIR ;
 int DT_REG ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int xwcstoutf (int ,int ,int) ;

__attribute__((used)) static inline void finddata2dirent(struct dirent *ent, WIN32_FIND_DATAW *fdata)
{

 xwcstoutf(ent->d_name, fdata->cFileName, sizeof(ent->d_name));


 if (fdata->dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
  ent->d_type = DT_DIR;
 else
  ent->d_type = DT_REG;
}
