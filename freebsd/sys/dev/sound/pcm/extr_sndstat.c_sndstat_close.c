
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sndstat_file {int sbuf; } ;


 int M_DEVBUF ;
 int SNDSTAT_LOCK () ;
 int SNDSTAT_UNLOCK () ;
 int TAILQ_REMOVE (int *,struct sndstat_file*,int ) ;
 int entry ;
 int free (struct sndstat_file*,int ) ;
 int sbuf_delete (int *) ;
 int sndstat_filelist ;

__attribute__((used)) static void
sndstat_close(void *sndstat_file)
{
 struct sndstat_file *pf = (struct sndstat_file *)sndstat_file;

 SNDSTAT_LOCK();
 sbuf_delete(&pf->sbuf);
 TAILQ_REMOVE(&sndstat_filelist, pf, entry);
 SNDSTAT_UNLOCK();

 free(pf, M_DEVBUF);
}
