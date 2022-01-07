
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;
struct b2055_inittab_entry {int flags; int ghz2; int ghz5; } ;


 int B2055_INITTAB_ENTRY_OK ;
 int B2055_INITTAB_UPLOAD ;
 int BWN_MACCTL ;
 int BWN_READ_4 (struct bwn_mac*,int ) ;
 int BWN_RF_WRITE (struct bwn_mac*,unsigned int,int ) ;
 struct b2055_inittab_entry* b2055_inittab ;
 unsigned int nitems (struct b2055_inittab_entry*) ;

void b2055_upload_inittab(struct bwn_mac *mac,
     bool ghz5, bool ignore_uploadflag)
{
 const struct b2055_inittab_entry *e;
 unsigned int i, writes = 0;
 uint16_t value;

 for (i = 0; i < nitems(b2055_inittab); i++) {
  e = &(b2055_inittab[i]);
  if (!(e->flags & B2055_INITTAB_ENTRY_OK))
   continue;
  if ((e->flags & B2055_INITTAB_UPLOAD) || ignore_uploadflag) {
   if (ghz5)
    value = e->ghz5;
   else
    value = e->ghz2;
   BWN_RF_WRITE(mac, i, value);
   if (++writes % 4 == 0)
    BWN_READ_4(mac, BWN_MACCTL);
  }
 }

 BWN_READ_4(mac, BWN_MACCTL);
}
