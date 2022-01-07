
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {struct ustorage_fs_lun* currlun; } ;
struct ustorage_fs_softc {TYPE_1__ sc_transfer; } ;
struct ustorage_fs_lun {int sense_data; } ;


 int SS_WRITE_ERROR ;

__attribute__((used)) static uint8_t
ustorage_fs_synchronize_cache(struct ustorage_fs_softc *sc)
{
 return (0);
}
