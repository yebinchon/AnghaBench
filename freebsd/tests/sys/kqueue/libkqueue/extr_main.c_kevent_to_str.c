
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct kevent {scalar_t__* ext; int udata; scalar_t__ data; int filter; scalar_t__ ident; } ;
typedef int buf ;


 int free (char*) ;
 char* kevent_fflags_dump (struct kevent*) ;
 char* kevent_flags_dump (struct kevent*) ;
 int snprintf (char*,int,char*,int ,int ,char*,char*,int ,int ,int ,int ,int ,int ) ;
 char* strdup (char*) ;

char *
kevent_to_str(struct kevent *kev)
{
    char buf[512];
    char *flags_str = kevent_flags_dump(kev);
    char *fflags_str = kevent_fflags_dump(kev);

    snprintf(&buf[0], sizeof(buf),
            "[ident=%ju, filter=%d, %s, %s, data=%jd, udata=%p, "
            "ext=[%jx %jx %jx %jx]",
            (uintmax_t) kev->ident,
            kev->filter,
            flags_str,
            fflags_str,
            (uintmax_t)kev->data,
            kev->udata,
            (uintmax_t)kev->ext[0],
            (uintmax_t)kev->ext[1],
            (uintmax_t)kev->ext[2],
            (uintmax_t)kev->ext[3]);

    free(flags_str);
    free(fflags_str);

    return (strdup(buf));
}
