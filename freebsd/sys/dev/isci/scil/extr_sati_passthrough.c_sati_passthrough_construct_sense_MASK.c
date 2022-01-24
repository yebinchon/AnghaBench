#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int U8 ;
typedef  int U32 ;
struct TYPE_7__ {int /*<<< orphan*/  is_sense_response_set; } ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef  TYPE_1__ SCI_SSP_RESPONSE_IU_T ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  SCSI_FIXED_SENSE_DATA_BASE_LENGTH ; 
 int /*<<< orphan*/  SCSI_RESPONSE_DATA_PRES_SENSE_DATA ; 
 int SSP_RESPONSE_IU_MAX_DATA ; 
 int /*<<< orphan*/  TRUE ; 
 int* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 int* FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (int*) ; 
 scalar_t__ FUNC6 (int*) ; 
 int FUNC7 (int*) ; 
 scalar_t__ FUNC8 (int*) ; 
 int FUNC9 (int*) ; 
 scalar_t__ FUNC10 (int*) ; 
 int FUNC11 (int*) ; 
 scalar_t__ FUNC12 (int*) ; 
 int FUNC13 (int*) ; 
 scalar_t__ FUNC14 (int*) ; 
 scalar_t__ FUNC15 (int*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int*,int,int,int) ; 

__attribute__((used)) static
void FUNC19(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   U8                         * register_fis,
   void                       * scsi_io,
   U8                           scsi_status,
   U8                           sense_key,
   U8                           additional_sense_code,
   U8                           additional_sense_code_qualifier
)
{
   U8                    * sense_data;
   U32                     sense_len;
   U8                    * cdb;
   unsigned char           sector_count_upper;
   unsigned char           lba_upper;

#ifdef SATI_TRANSPORT_SUPPORTS_SAS
   SCI_SSP_RESPONSE_IU_T * rsp_iu = (SCI_SSP_RESPONSE_IU_T*)
                                    sati_cb_get_response_iu_address(scsi_io);

   sati_scsi_common_response_iu_construct(
      rsp_iu,
      scsi_status,
      SCSI_FIXED_SENSE_DATA_BASE_LENGTH,
      SCSI_RESPONSE_DATA_PRES_SENSE_DATA
   );

   sense_data                   = (U8*) rsp_iu->data;
   sense_len                    = SSP_RESPONSE_IU_MAX_DATA * 4;  // dwords to bytes
#else
   sense_data = FUNC3(scsi_io);
   sense_len  = FUNC4(scsi_io);
#endif // SATI_TRANSPORT_SUPPORTS_SAS

   FUNC17(
      sequence,
      scsi_io,
      scsi_status,
      sense_key,
      additional_sense_code,
      additional_sense_code_qualifier
   );

   cdb = FUNC1(scsi_io);

   if (FUNC14(register_fis) != 0) {
      sector_count_upper = 1;
   } else {
       sector_count_upper = 0;
   }

   if (FUNC8(register_fis) != 0 ||
       FUNC12(register_fis) != 0 ||
       FUNC10(register_fis) != 0) {
      lba_upper = 1;
   } else {
       lba_upper = 0;
   }

   // Information section
   FUNC18(sense_data, sense_len, 3,  (U8)FUNC6(register_fis));
   FUNC18(sense_data, sense_len, 4,  (U8)FUNC15(register_fis));
   FUNC18(sense_data, sense_len, 5,  FUNC5(register_fis));
   FUNC18(sense_data, sense_len, 6,  FUNC13(register_fis));

   // Command specific section
   FUNC18(sense_data, sense_len, 8,  (FUNC0(cdb) << 7) | (sector_count_upper << 6) | (lba_upper << 5));
   FUNC18(sense_data, sense_len, 9,  FUNC9(register_fis));
   FUNC18(sense_data, sense_len, 10, FUNC11(register_fis));
   FUNC18(sense_data, sense_len, 11, FUNC7(register_fis));

   sequence->is_sense_response_set = TRUE;
}