
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp; scalar_t__ pipe; } ;


 int Fclose (int ) ;
 int Pclose (int ) ;
 TYPE_1__* fp_head ;

void
close_all_files(void)
{

 while (fp_head != ((void*)0))
  if (fp_head->pipe)
   (void)Pclose(fp_head->fp);
  else
   (void)Fclose(fp_head->fp);
}
