
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* node; } ;
typedef TYPE_2__ cd9660node ;
struct TYPE_4__ {char* root; char* path; char* name; } ;


 int CD9660MAXPATH ;
 int EXIT_FAILURE ;
 int errx (int ,char*) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;

void
cd9660_compute_full_filename(cd9660node *node, char *buf)
{
 int len;

 len = CD9660MAXPATH + 1;
 len = snprintf(buf, len, "%s/%s/%s", node->node->root,
     node->node->path, node->node->name);
 if (len > CD9660MAXPATH)
  errx(EXIT_FAILURE, "Pathname too long.");
}
