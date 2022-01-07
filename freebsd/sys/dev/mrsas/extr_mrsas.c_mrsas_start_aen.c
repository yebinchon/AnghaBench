
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class; int locale; scalar_t__ reserved; } ;
union mrsas_evt_class_locale {int word; TYPE_1__ members; } ;
struct mrsas_softc {int dummy; } ;
struct mrsas_evt_log_info {scalar_t__ newest_seq_num; } ;
typedef int eli ;


 int MR_EVT_CLASS_DEBUG ;
 int MR_EVT_LOCALE_ALL ;
 int memset (struct mrsas_evt_log_info*,int ,int) ;
 scalar_t__ mrsas_get_seq_num (struct mrsas_softc*,struct mrsas_evt_log_info*) ;
 int mrsas_register_aen (struct mrsas_softc*,scalar_t__,int ) ;

__attribute__((used)) static int
mrsas_start_aen(struct mrsas_softc *sc)
{
 struct mrsas_evt_log_info eli;
 union mrsas_evt_class_locale class_locale;




 memset(&eli, 0, sizeof(eli));

 if (mrsas_get_seq_num(sc, &eli))
  return -1;


 class_locale.members.reserved = 0;
 class_locale.members.locale = MR_EVT_LOCALE_ALL;
 class_locale.members.class = MR_EVT_CLASS_DEBUG;

 return mrsas_register_aen(sc, eli.newest_seq_num + 1,
     class_locale.word);

}
