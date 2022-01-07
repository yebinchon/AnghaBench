
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedesc0 {int dummy; } ;
struct file {int dummy; } ;


 int MTX_DEF ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NOFREE ;
 void* file_zone ;
 void* filedesc0_zone ;
 int mtx_init (int *,char*,int *,int ) ;
 int sigio_lock ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void
filelistinit(void *dummy)
{

 file_zone = uma_zcreate("Files", sizeof(struct file), ((void*)0), ((void*)0),
     ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
 filedesc0_zone = uma_zcreate("filedesc0", sizeof(struct filedesc0),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 mtx_init(&sigio_lock, "sigio lock", ((void*)0), MTX_DEF);
}
