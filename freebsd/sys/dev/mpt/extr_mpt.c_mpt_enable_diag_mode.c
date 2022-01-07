
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;


 int DELAY (int) ;
 int EIO ;
 int MPI_DIAG_DRWE ;
 int MPI_WRSEQ_1ST_KEY_VALUE ;
 int MPI_WRSEQ_2ND_KEY_VALUE ;
 int MPI_WRSEQ_3RD_KEY_VALUE ;
 int MPI_WRSEQ_4TH_KEY_VALUE ;
 int MPI_WRSEQ_5TH_KEY_VALUE ;
 int MPT_OFFSET_DIAGNOSTIC ;
 int MPT_OFFSET_SEQUENCE ;
 int mpt_read (struct mpt_softc*,int ) ;
 int mpt_write (struct mpt_softc*,int ,int) ;

__attribute__((used)) static int
mpt_enable_diag_mode(struct mpt_softc *mpt)
{
 int try;

 try = 20;
 while (--try) {

  if ((mpt_read(mpt, MPT_OFFSET_DIAGNOSTIC) & MPI_DIAG_DRWE) != 0)
   break;


  mpt_write(mpt, MPT_OFFSET_SEQUENCE, 0xFF);
  mpt_write(mpt, MPT_OFFSET_SEQUENCE, MPI_WRSEQ_1ST_KEY_VALUE);
  mpt_write(mpt, MPT_OFFSET_SEQUENCE, MPI_WRSEQ_2ND_KEY_VALUE);
  mpt_write(mpt, MPT_OFFSET_SEQUENCE, MPI_WRSEQ_3RD_KEY_VALUE);
  mpt_write(mpt, MPT_OFFSET_SEQUENCE, MPI_WRSEQ_4TH_KEY_VALUE);
  mpt_write(mpt, MPT_OFFSET_SEQUENCE, MPI_WRSEQ_5TH_KEY_VALUE);

  DELAY(100000);
 }
 if (try == 0)
  return (EIO);
 return (0);
}
