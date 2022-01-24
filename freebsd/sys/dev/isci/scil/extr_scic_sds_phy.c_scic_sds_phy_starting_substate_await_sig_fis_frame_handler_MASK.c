#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_15__ {int /*<<< orphan*/  uf_control; } ;
struct TYPE_14__ {scalar_t__ fis_type; int status; } ;
struct TYPE_11__ {int /*<<< orphan*/  signature_fis_buffer; } ;
struct TYPE_12__ {TYPE_1__ sata; } ;
struct TYPE_13__ {TYPE_2__ phy_type; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_3__ SCIC_SDS_PHY_T ;
typedef  TYPE_4__ SATA_FIS_HEADER_T ;

/* Variables and functions */
 int ATA_STATUS_REG_BSY_BIT ; 
 scalar_t__ SATA_FIS_TYPE_REGD2H ; 
 int SCIC_LOG_OBJECT_PHY ; 
 int SCIC_LOG_OBJECT_UNSOLICITED_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static
SCI_STATUS FUNC9(
   SCIC_SDS_PHY_T *this_phy,
   U32            frame_index
)
{
   SCI_STATUS          result;
   U32               * frame_words;
   SATA_FIS_HEADER_T * fis_frame_header;
   U32               * fis_frame_data;

   result = FUNC8(
               &(FUNC5(this_phy)->uf_control),
               frame_index,
               (void **)&frame_words);

   if (result != SCI_SUCCESS)
   {
      return result;
   }

   fis_frame_header = (SATA_FIS_HEADER_T *)frame_words;

   if (
         (fis_frame_header->fis_type == SATA_FIS_TYPE_REGD2H)
      && !(fis_frame_header->status & ATA_STATUS_REG_BSY_BIT)
      )
   {
      FUNC7(
         &(FUNC5(this_phy)->uf_control),
         frame_index,
         (void **)&fis_frame_data
      );

      FUNC3(
         &this_phy->phy_type.sata.signature_fis_buffer,
         frame_words,
         fis_frame_data
      );

      // We got the IAF we can now go to the await spinup semaphore state
      FUNC2(
         FUNC6(this_phy),
         SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL
         );

      result = SCI_SUCCESS;
   }
   else
   {
      FUNC0((
         FUNC1(this_phy),
         SCIC_LOG_OBJECT_PHY | SCIC_LOG_OBJECT_UNSOLICITED_FRAMES,
         "PHY starting substate machine received unexpected frame id %x\n",
         frame_index
      ));
   }

   // Regardless of the result release this frame since we are done with it
   FUNC4(
      FUNC5(this_phy), frame_index
      );

   return result;
}