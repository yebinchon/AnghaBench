
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbnambuf {size_t nb_len; int nb_last_id; char* nb_buf; } ;


 int EINVAL ;
 int ENAMETOOLONG ;
 size_t MAXNAMLEN ;
 int WIN_CHARS ;
 size_t WIN_MAXLEN ;
 int memcpy (char*,char*,size_t) ;
 int memmove (char*,char*,size_t) ;
 int printf (char*,size_t,...) ;
 size_t strlen (char*) ;

int
mbnambuf_write(struct mbnambuf *nbp, char *name, int id)
{
 char *slot;
 size_t count, newlen;

 if (nbp->nb_len != 0 && id != nbp->nb_last_id - 1) {




  return (EINVAL);
 }


 slot = &nbp->nb_buf[id * WIN_CHARS];
 count = strlen(name);
 newlen = nbp->nb_len + count;
 if (newlen > WIN_MAXLEN || newlen > MAXNAMLEN) {



  return (ENAMETOOLONG);
 }


 if (count > WIN_CHARS && nbp->nb_len != 0) {
  if ((id * WIN_CHARS + count + nbp->nb_len) >
      sizeof(nbp->nb_buf))
   return (ENAMETOOLONG);

  memmove(slot + count, slot + WIN_CHARS, nbp->nb_len);
 }


 memcpy(slot, name, count);
 nbp->nb_len = newlen;
 nbp->nb_last_id = id;

 return (0);
}
