
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbnambuf {int nb_last_id; char* nb_buf; scalar_t__ nb_len; } ;



void
mbnambuf_init(struct mbnambuf *nbp)
{

 nbp->nb_len = 0;
 nbp->nb_last_id = -1;
 nbp->nb_buf[sizeof(nbp->nb_buf) - 1] = '\0';
}
