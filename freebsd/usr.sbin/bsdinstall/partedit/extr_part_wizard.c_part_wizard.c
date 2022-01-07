
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmesh {int dummy; } ;


 char* boot_disk (struct gmesh*) ;
 int dlg_clear () ;
 int dlg_put_backtitle () ;
 int free (char*) ;
 int geom_deletetree (struct gmesh*) ;
 int geom_gettree (struct gmesh*) ;
 int wizard_makeparts (struct gmesh*,char*,char const*,int) ;
 char* wizard_partition (struct gmesh*,char*) ;

int
part_wizard(const char *fsreq)
{
 char *disk, *schemeroot;
 const char *fstype;
 struct gmesh mesh;
 int error;

 if (fsreq != ((void*)0))
  fstype = fsreq;
 else
  fstype = "ufs";

startwizard:
 error = geom_gettree(&mesh);

 dlg_put_backtitle();
 error = geom_gettree(&mesh);
 disk = boot_disk(&mesh);
 if (disk == ((void*)0))
  return (1);

 dlg_clear();
 dlg_put_backtitle();
 schemeroot = wizard_partition(&mesh, disk);
 free(disk);
 if (schemeroot == ((void*)0))
  return (1);

 geom_deletetree(&mesh);
 dlg_clear();
 dlg_put_backtitle();
 error = geom_gettree(&mesh);

 error = wizard_makeparts(&mesh, schemeroot, fstype, 1);
 if (error)
  goto startwizard;
 free(schemeroot);

 geom_deletetree(&mesh);

 return (0);
}
