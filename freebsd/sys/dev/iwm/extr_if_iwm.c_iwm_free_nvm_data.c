
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_nvm_data {int dummy; } ;


 int M_DEVBUF ;
 int free (struct iwm_nvm_data*,int ) ;

__attribute__((used)) static void
iwm_free_nvm_data(struct iwm_nvm_data *data)
{
 if (data != ((void*)0))
  free(data, M_DEVBUF);
}
