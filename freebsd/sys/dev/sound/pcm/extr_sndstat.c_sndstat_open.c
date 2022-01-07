
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sndstat_file {int sbuf; } ;
struct cdev {int dummy; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int SBUF_AUTOEXTEND ;
 int SNDSTAT_LOCK () ;
 int SNDSTAT_UNLOCK () ;
 int TAILQ_INSERT_TAIL (int *,struct sndstat_file*,int ) ;
 int devfs_set_cdevpriv (struct sndstat_file*,int *) ;
 int entry ;
 int free (struct sndstat_file*,int ) ;
 struct sndstat_file* malloc (int,int ,int) ;
 int * sbuf_new (int *,int *,int,int ) ;
 int sndstat_close ;
 int sndstat_filelist ;

__attribute__((used)) static int
sndstat_open(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
 struct sndstat_file *pf;

 pf = malloc(sizeof(*pf), M_DEVBUF, M_WAITOK | M_ZERO);

 SNDSTAT_LOCK();
 if (sbuf_new(&pf->sbuf, ((void*)0), 4096, SBUF_AUTOEXTEND) == ((void*)0)) {
    SNDSTAT_UNLOCK();
  free(pf, M_DEVBUF);
  return (ENOMEM);
 }
 TAILQ_INSERT_TAIL(&sndstat_filelist, pf, entry);
 SNDSTAT_UNLOCK();

 devfs_set_cdevpriv(pf, &sndstat_close);

 return (0);
}
