
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct scb {int dummy; } ;
struct ahc_softc {TYPE_1__* scb_data; } ;
struct TYPE_2__ {struct scb** scbindex; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int ahc_sync_scb (struct ahc_softc*,struct scb*,int) ;

__attribute__((used)) static __inline struct scb *
ahc_lookup_scb(struct ahc_softc *ahc, u_int tag)
{
 struct scb* scb;

 scb = ahc->scb_data->scbindex[tag];
 if (scb != ((void*)0))
  ahc_sync_scb(ahc, scb,
        BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
 return (scb);
}
