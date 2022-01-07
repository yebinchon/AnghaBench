
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CUSE_VERSION ;
 int GID_OPERATOR ;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int cuse_dev ;
 int cuse_mtx ;
 int cuse_server_devsw ;
 int cuse_server_head ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static void
cuse_kern_init(void *arg)
{
 TAILQ_INIT(&cuse_server_head);

 mtx_init(&cuse_mtx, "cuse-mtx", ((void*)0), MTX_DEF);

 cuse_dev = make_dev(&cuse_server_devsw, 0,
     UID_ROOT, GID_OPERATOR, 0600, "cuse");

 printf("Cuse v%d.%d.%d @ /dev/cuse\n",
     (CUSE_VERSION >> 16) & 0xFF, (CUSE_VERSION >> 8) & 0xFF,
     (CUSE_VERSION >> 0) & 0xFF);
}
