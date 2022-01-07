
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbnambuf {int nb_len; int * nb_buf; } ;
struct dirent {char* d_name; size_t d_namlen; } ;


 int mbnambuf_init (struct mbnambuf*) ;
 int memcpy (char*,int *,int) ;

char *
mbnambuf_flush(struct mbnambuf *nbp, struct dirent *dp)
{

 if (nbp->nb_len > sizeof(dp->d_name) - 1) {
  mbnambuf_init(nbp);
  return (((void*)0));
 }
 memcpy(dp->d_name, &nbp->nb_buf[0], nbp->nb_len);
 dp->d_name[nbp->nb_len] = '\0';
 dp->d_namlen = nbp->nb_len;

 mbnambuf_init(nbp);
 return (dp->d_name);
}
