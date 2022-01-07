
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct snp_softc {int snp_outwait; } ;
struct cdev {int dummy; } ;


 int M_SNP ;
 int M_WAITOK ;
 int M_ZERO ;
 int cv_init (int *,char*) ;
 int devfs_set_cdevpriv (struct snp_softc*,int ) ;
 struct snp_softc* malloc (int,int ,int) ;
 int snp_dtor ;

__attribute__((used)) static int
snp_open(struct cdev *dev, int flag, int mode, struct thread *td)
{
 struct snp_softc *ss;


 ss = malloc(sizeof(struct snp_softc), M_SNP, M_WAITOK|M_ZERO);
 cv_init(&ss->snp_outwait, "snp out");

 devfs_set_cdevpriv(ss, snp_dtor);

 return (0);
}
