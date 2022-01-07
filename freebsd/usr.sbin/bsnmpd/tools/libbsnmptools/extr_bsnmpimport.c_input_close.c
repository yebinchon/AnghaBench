
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* path; struct TYPE_5__* fname; int fp; } ;


 TYPE_1__* LIST_FIRST (int *) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int fclose (int ) ;
 int free (TYPE_1__*) ;
 TYPE_1__* input ;
 int inputs ;
 int link ;

__attribute__((used)) static void
input_close(void)
{
 if (input == ((void*)0))
  return;

 fclose(input->fp);
 free(input->fname);
 free(input->path);
 LIST_REMOVE(input, link);
 free(input);

 input = LIST_FIRST(&inputs);
}
