
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct file_lock* n_bytes; } ;
struct TYPE_4__ {struct file_lock* n_bytes; } ;
struct TYPE_5__ {TYPE_1__ oh; } ;
struct file_lock {TYPE_3__ client_cookie; TYPE_2__ client; struct file_lock* addr; } ;


 int free (struct file_lock*) ;

void
deallocate_file_lock(struct file_lock *fl)
{
 free(fl->addr);
 free(fl->client.oh.n_bytes);
 free(fl->client_cookie.n_bytes);
 free(fl);
}
