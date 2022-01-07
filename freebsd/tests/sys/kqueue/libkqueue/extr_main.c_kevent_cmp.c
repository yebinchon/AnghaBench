
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int flags; scalar_t__ ident; scalar_t__ filter; scalar_t__ fflags; scalar_t__ data; scalar_t__ udata; scalar_t__* ext; } ;


 int EV_ADD ;
 int abort () ;
 int free (char*) ;
 char* kevent_to_str (struct kevent*) ;
 int printf (char*,char*,char*) ;

void
kevent_cmp(struct kevent *k1, struct kevent *k2)
{
    char *kev1_str;
    char *kev2_str;
    if (k1->ident != k2->ident || k1->filter != k2->filter ||
      k1->flags != k2->flags || k1->fflags != k2->fflags ||
      k1->data != k2->data || k1->udata != k2->udata ||
      k1->ext[0] != k2->ext[0] || k1->ext[1] != k2->ext[1] ||
      k1->ext[0] != k2->ext[2] || k1->ext[0] != k2->ext[3]) {
        kev1_str = kevent_to_str(k1);
        kev2_str = kevent_to_str(k2);
        printf("kevent_cmp: mismatch:\n  %s !=\n  %s\n",
               kev1_str, kev2_str);
        free(kev1_str);
        free(kev2_str);
        abort();
    }
}
