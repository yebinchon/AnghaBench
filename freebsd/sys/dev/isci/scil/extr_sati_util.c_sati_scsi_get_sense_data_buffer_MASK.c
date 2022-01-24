#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
typedef  int U32 ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef  TYPE_1__ SCI_SSP_RESPONSE_IU_T ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_RESPONSE_DATA_PRES_SENSE_DATA ; 
 int SSP_RESPONSE_IU_MAX_DATA ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static
void FUNC6(
    SATI_TRANSLATOR_SEQUENCE_T      * sequence,
    void                            * scsi_io,
    U8                                scsi_status,
    U8                             ** sense_data,
    U32                             * sense_len)
{
#ifdef SATI_TRANSPORT_SUPPORTS_SAS
   SCI_SSP_RESPONSE_IU_T * rsp_iu = (SCI_SSP_RESPONSE_IU_T*)
                                    sati_cb_get_response_iu_address(scsi_io);

   sati_scsi_common_response_iu_construct(
      rsp_iu,
      scsi_status,
      sati_scsi_get_sense_data_length(sequence, scsi_io),
      SCSI_RESPONSE_DATA_PRES_SENSE_DATA
   );

   *sense_data                   = (U8*) rsp_iu->data;
   *sense_len                    = SSP_RESPONSE_IU_MAX_DATA * 4;  // dwords to bytes
#else
   *sense_data = FUNC1(scsi_io);
   *sense_len  = FUNC2(scsi_io);
   FUNC3(scsi_io, scsi_status);
#endif // SATI_TRANSPORT_SUPPORTS_SAS
}