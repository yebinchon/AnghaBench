
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* elf_file_t ;
struct TYPE_6__ {TYPE_1__* ef_efile; struct TYPE_6__* ef_name; int ef_fd; } ;
struct TYPE_5__ {int * ef_ef; int * ef_ops; } ;


 int close (int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static int
ef_close(elf_file_t ef)
{

 close(ef->ef_fd);
 if (ef->ef_name)
  free(ef->ef_name);
 ef->ef_efile->ef_ops = ((void*)0);
 ef->ef_efile->ef_ef = ((void*)0);
 free(ef);
 return (0);
}
