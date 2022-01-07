
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ofwd_softc {int ofwd_instance; } ;
struct bio {int bio_cmd; scalar_t__ bio_length; scalar_t__ bio_resid; scalar_t__ bio_data; int bio_offset; } ;




 scalar_t__ OF_read (int ,void*,scalar_t__) ;
 scalar_t__ OF_seek (int ,int ) ;
 scalar_t__ OF_write (int ,void*,scalar_t__) ;
 int panic (char*) ;

__attribute__((used)) static int
ofwd_startio(struct ofwd_softc *sc, struct bio *bp)
{
 u_int r;

 r = OF_seek(sc->ofwd_instance, bp->bio_offset);

 switch (bp->bio_cmd) {
 case 129:
  r = OF_read(sc->ofwd_instance, (void *)bp->bio_data,
     bp->bio_length);
  break;
 case 128:
  r = OF_write(sc->ofwd_instance, (void *)bp->bio_data,
     bp->bio_length);
  break;
 }
 if (r != bp->bio_length)
  panic("ofwd: incorrect i/o count");

 bp->bio_resid = 0;
 return (0);
}
