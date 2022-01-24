#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_16__ ;
typedef  struct TYPE_22__   TYPE_15__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct ddf_vuc_record {int* VD_GUID; } ;
struct ddf_vdc_record {int* VD_GUID; int /*<<< orphan*/ * Physical_Disk_Sequence; int /*<<< orphan*/  Primary_Element_Count; int /*<<< orphan*/  MDF_Constant_Generation_Method; int /*<<< orphan*/  MDF_Parity_Generator_Polynomial; int /*<<< orphan*/  MDF_Parity_Disks; int /*<<< orphan*/  BG_Rate; int /*<<< orphan*/  Cache_Flags; int /*<<< orphan*/ * Associated_Spares; int /*<<< orphan*/  Rotate_Parity_count; int /*<<< orphan*/  Block_Size; int /*<<< orphan*/  VD_Size; int /*<<< orphan*/  Block_Count; int /*<<< orphan*/  Secondary_RAID_Level; int /*<<< orphan*/  Secondary_Element_Seq; int /*<<< orphan*/  Secondary_Element_Count; int /*<<< orphan*/  RLQ; int /*<<< orphan*/  Primary_RAID_Level; int /*<<< orphan*/  Stripe_Size; int /*<<< orphan*/  Sequence_Number; int /*<<< orphan*/  Timestamp; int /*<<< orphan*/  Signature; } ;
struct ddf_sa_record {TYPE_10__* entry; int /*<<< orphan*/  Populated_SAEs; int /*<<< orphan*/  MAX_SAE_Supported; int /*<<< orphan*/  Spare_Type; int /*<<< orphan*/  Timestamp; } ;
struct ddf_meta {TYPE_11__* pdd; TYPE_9__* vdr; TYPE_5__* pdr; TYPE_3__* cdr; TYPE_1__* hdr; } ;
struct TYPE_32__ {TYPE_8__* entry; } ;
struct TYPE_31__ {int* VD_GUID; int /*<<< orphan*/  VD_Name; } ;
struct TYPE_30__ {int /*<<< orphan*/  Drive_Failures_Remaining; int /*<<< orphan*/  Init_State; int /*<<< orphan*/  VD_State; int /*<<< orphan*/  VD_Type; int /*<<< orphan*/  VD_Number; } ;
struct TYPE_29__ {int /*<<< orphan*/  Block_Size; int /*<<< orphan*/  Configured_Size; int /*<<< orphan*/  PD_State; int /*<<< orphan*/  PD_Type; int /*<<< orphan*/  PD_Reference; } ;
struct TYPE_28__ {TYPE_4__* entry; } ;
struct TYPE_27__ {int* PD_GUID; } ;
struct TYPE_26__ {int* Controller_GUID; int /*<<< orphan*/ * Product_ID; } ;
struct TYPE_25__ {int /*<<< orphan*/  Device_ID; int /*<<< orphan*/  Vendor_ID; int /*<<< orphan*/  SubDevice_ID; int /*<<< orphan*/  SubVendor_ID; } ;
struct TYPE_24__ {int* DDF_Header_GUID; int /*<<< orphan*/ * DDF_rev; } ;
struct TYPE_23__ {TYPE_2__ Controller_Type; } ;
struct TYPE_22__ {int /*<<< orphan*/  Max_Primary_Element_Entries; int /*<<< orphan*/  Vendor_Specific_Logs_Length; int /*<<< orphan*/  Vendor_Specific_Logs; int /*<<< orphan*/  Diagnostic_Space_Length; int /*<<< orphan*/  Diagnostic_Space; int /*<<< orphan*/  bbmlog_length; int /*<<< orphan*/  bbmlog_section; int /*<<< orphan*/  pdd_length; int /*<<< orphan*/  pdd_section; int /*<<< orphan*/  cr_length; int /*<<< orphan*/  cr_section; int /*<<< orphan*/  vdr_length; int /*<<< orphan*/  vdr_section; int /*<<< orphan*/  pdr_length; int /*<<< orphan*/  pdr_section; int /*<<< orphan*/  cd_length; int /*<<< orphan*/  cd_section; int /*<<< orphan*/  Configuration_Record_Length; int /*<<< orphan*/  Max_Partitions; int /*<<< orphan*/  Max_VD_Entries; int /*<<< orphan*/  Max_PD_Entries; int /*<<< orphan*/  WorkSpace_LBA; int /*<<< orphan*/  WorkSpace_Length; int /*<<< orphan*/  Secondary_Header_LBA; int /*<<< orphan*/  Primary_Header_LBA; int /*<<< orphan*/  Diskgrouping; int /*<<< orphan*/  Foreign_Flag; int /*<<< orphan*/  Open_Flag; int /*<<< orphan*/  TimeStamp; int /*<<< orphan*/  Sequence_Number; } ;
struct TYPE_21__ {int /*<<< orphan*/  Forced_PD_GUID_Flag; int /*<<< orphan*/  Forced_Ref_Flag; int /*<<< orphan*/  PD_Reference; } ;
struct TYPE_20__ {TYPE_6__* entry; int /*<<< orphan*/  Populated_PDEs; int /*<<< orphan*/  Max_PDE_Supported; } ;
struct TYPE_19__ {TYPE_7__* entry; int /*<<< orphan*/  Populated_VDEs; int /*<<< orphan*/  Max_VDE_Supported; } ;
struct TYPE_18__ {int* PD_GUID; } ;
struct TYPE_17__ {int* VD_GUID; int /*<<< orphan*/  Secondary_Element; } ;

/* Variables and functions */
#define  DDF_SA_SIGNATURE 130 
#define  DDF_VDCR_SIGNATURE 129 
#define  DDF_VUCR_SIGNATURE 128 
 size_t FUNC0 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ddf_meta*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ddf_meta*) ; 
 struct ddf_vdc_record* FUNC10 (struct ddf_meta*,int) ; 
 TYPE_16__* cdr ; 
 int g_raid_debug ; 
 TYPE_15__* hdr ; 
 scalar_t__ FUNC11 (int*,int) ; 
 TYPE_14__* pdd ; 
 TYPE_13__* pdr ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 TYPE_12__* vdr ; 

__attribute__((used)) static void
FUNC14(struct ddf_meta *meta)
{
	struct ddf_vdc_record *vdc;
	struct ddf_vuc_record *vuc;
	struct ddf_sa_record *sa;
	uint64_t *val2;
	uint32_t val;
	int i, j, k, num, num2;

	if (g_raid_debug < 1)
		return;

	FUNC13("********* DDF Metadata *********\n");
	FUNC13("**** Header ****\n");
	FUNC13("DDF_Header_GUID      ");
	FUNC12(meta->hdr->DDF_Header_GUID);
	FUNC13("\n");
	FUNC13("DDF_rev              %8.8s\n", (char *)&meta->hdr->DDF_rev[0]);
	FUNC13("Sequence_Number      0x%08x\n", FUNC2(meta, hdr->Sequence_Number));
	FUNC13("TimeStamp            0x%08x\n", FUNC2(meta, hdr->TimeStamp));
	FUNC13("Open_Flag            0x%02x\n", FUNC0(meta, hdr->Open_Flag));
	FUNC13("Foreign_Flag         0x%02x\n", FUNC0(meta, hdr->Foreign_Flag));
	FUNC13("Diskgrouping         0x%02x\n", FUNC0(meta, hdr->Diskgrouping));
	FUNC13("Primary_Header_LBA   %ju\n", FUNC4(meta, hdr->Primary_Header_LBA));
	FUNC13("Secondary_Header_LBA %ju\n", FUNC4(meta, hdr->Secondary_Header_LBA));
	FUNC13("WorkSpace_Length     %u\n", FUNC2(meta, hdr->WorkSpace_Length));
	FUNC13("WorkSpace_LBA        %ju\n", FUNC4(meta, hdr->WorkSpace_LBA));
	FUNC13("Max_PD_Entries       %u\n", FUNC0(meta, hdr->Max_PD_Entries));
	FUNC13("Max_VD_Entries       %u\n", FUNC0(meta, hdr->Max_VD_Entries));
	FUNC13("Max_Partitions       %u\n", FUNC0(meta, hdr->Max_Partitions));
	FUNC13("Configuration_Record_Length %u\n", FUNC0(meta, hdr->Configuration_Record_Length));
	FUNC13("Max_Primary_Element_Entries %u\n", FUNC0(meta, hdr->Max_Primary_Element_Entries));
	FUNC13("Controller Data      %u:%u\n", FUNC2(meta, hdr->cd_section), FUNC2(meta, hdr->cd_length));
	FUNC13("Physical Disk        %u:%u\n", FUNC2(meta, hdr->pdr_section), FUNC2(meta, hdr->pdr_length));
	FUNC13("Virtual Disk         %u:%u\n", FUNC2(meta, hdr->vdr_section), FUNC2(meta, hdr->vdr_length));
	FUNC13("Configuration Recs   %u:%u\n", FUNC2(meta, hdr->cr_section), FUNC2(meta, hdr->cr_length));
	FUNC13("Physical Disk Recs   %u:%u\n", FUNC2(meta, hdr->pdd_section), FUNC2(meta, hdr->pdd_length));
	FUNC13("BBM Log              %u:%u\n", FUNC2(meta, hdr->bbmlog_section), FUNC2(meta, hdr->bbmlog_length));
	FUNC13("Diagnostic Space     %u:%u\n", FUNC2(meta, hdr->Diagnostic_Space), FUNC2(meta, hdr->Diagnostic_Space_Length));
	FUNC13("Vendor_Specific_Logs %u:%u\n", FUNC2(meta, hdr->Vendor_Specific_Logs), FUNC2(meta, hdr->Vendor_Specific_Logs_Length));
	FUNC13("**** Controller Data ****\n");
	FUNC13("Controller_GUID      ");
	FUNC12(meta->cdr->Controller_GUID);
	FUNC13("\n");
	FUNC13("Controller_Type      0x%04x%04x 0x%04x%04x\n",
	    FUNC0(meta, cdr->Controller_Type.Vendor_ID),
	    FUNC0(meta, cdr->Controller_Type.Device_ID),
	    FUNC0(meta, cdr->Controller_Type.SubVendor_ID),
	    FUNC0(meta, cdr->Controller_Type.SubDevice_ID));
	FUNC13("Product_ID           '%.16s'\n", (char *)&meta->cdr->Product_ID[0]);
	FUNC13("**** Physical Disk Records ****\n");
	FUNC13("Populated_PDEs       %u\n", FUNC0(meta, pdr->Populated_PDEs));
	FUNC13("Max_PDE_Supported    %u\n", FUNC0(meta, pdr->Max_PDE_Supported));
	for (j = 0; j < FUNC0(meta, pdr->Populated_PDEs); j++) {
		if (FUNC11(meta->pdr->entry[j].PD_GUID, 24))
			continue;
		if (FUNC2(meta, pdr->entry[j].PD_Reference) == 0xffffffff)
			continue;
		FUNC13("PD_GUID              ");
		FUNC12(meta->pdr->entry[j].PD_GUID);
		FUNC13("\n");
		FUNC13("PD_Reference         0x%08x\n",
		    FUNC2(meta, pdr->entry[j].PD_Reference));
		FUNC13("PD_Type              0x%04x\n",
		    FUNC0(meta, pdr->entry[j].PD_Type));
		FUNC13("PD_State             0x%04x\n",
		    FUNC0(meta, pdr->entry[j].PD_State));
		FUNC13("Configured_Size      %ju\n",
		    FUNC4(meta, pdr->entry[j].Configured_Size));
		FUNC13("Block_Size           %u\n",
		    FUNC0(meta, pdr->entry[j].Block_Size));
	}
	FUNC13("**** Virtual Disk Records ****\n");
	FUNC13("Populated_VDEs       %u\n", FUNC0(meta, vdr->Populated_VDEs));
	FUNC13("Max_VDE_Supported    %u\n", FUNC0(meta, vdr->Max_VDE_Supported));
	for (j = 0; j < FUNC0(meta, vdr->Populated_VDEs); j++) {
		if (FUNC11(meta->vdr->entry[j].VD_GUID, 24))
			continue;
		FUNC13("VD_GUID              ");
		FUNC12(meta->vdr->entry[j].VD_GUID);
		FUNC13("\n");
		FUNC13("VD_Number            0x%04x\n",
		    FUNC0(meta, vdr->entry[j].VD_Number));
		FUNC13("VD_Type              0x%04x\n",
		    FUNC0(meta, vdr->entry[j].VD_Type));
		FUNC13("VD_State             0x%02x\n",
		    FUNC7(meta, vdr->entry[j].VD_State));
		FUNC13("Init_State           0x%02x\n",
		    FUNC7(meta, vdr->entry[j].Init_State));
		FUNC13("Drive_Failures_Remaining %u\n",
		    FUNC7(meta, vdr->entry[j].Drive_Failures_Remaining));
		FUNC13("VD_Name              '%.16s'\n",
		    (char *)&meta->vdr->entry[j].VD_Name);
	}
	FUNC13("**** Configuration Records ****\n");
	num = FUNC9(meta);
	for (j = 0; j < num; j++) {
		vdc = FUNC10(meta, j);
		val = FUNC3(meta, vdc->Signature);
		switch (val) {
		case DDF_VDCR_SIGNATURE:
			FUNC13("** Virtual Disk Configuration **\n");
			FUNC13("VD_GUID              ");
			FUNC12(vdc->VD_GUID);
			FUNC13("\n");
			FUNC13("Timestamp            0x%08x\n",
			    FUNC3(meta, vdc->Timestamp));
			FUNC13("Sequence_Number      0x%08x\n",
			    FUNC3(meta, vdc->Sequence_Number));
			FUNC13("Primary_Element_Count %u\n",
			    FUNC1(meta, vdc->Primary_Element_Count));
			FUNC13("Stripe_Size          %u\n",
			    FUNC8(meta, vdc->Stripe_Size));
			FUNC13("Primary_RAID_Level   0x%02x\n",
			    FUNC8(meta, vdc->Primary_RAID_Level));
			FUNC13("RLQ                  0x%02x\n",
			    FUNC8(meta, vdc->RLQ));
			FUNC13("Secondary_Element_Count %u\n",
			    FUNC8(meta, vdc->Secondary_Element_Count));
			FUNC13("Secondary_Element_Seq %u\n",
			    FUNC8(meta, vdc->Secondary_Element_Seq));
			FUNC13("Secondary_RAID_Level 0x%02x\n",
			    FUNC8(meta, vdc->Secondary_RAID_Level));
			FUNC13("Block_Count          %ju\n",
			    FUNC5(meta, vdc->Block_Count));
			FUNC13("VD_Size              %ju\n",
			    FUNC5(meta, vdc->VD_Size));
			FUNC13("Block_Size           %u\n",
			    FUNC1(meta, vdc->Block_Size));
			FUNC13("Rotate_Parity_count  %u\n",
			    FUNC8(meta, vdc->Rotate_Parity_count));
			FUNC13("Associated_Spare_Disks");
			for (i = 0; i < 8; i++) {
				if (FUNC3(meta, vdc->Associated_Spares[i]) != 0xffffffff)
					FUNC13(" 0x%08x", FUNC3(meta, vdc->Associated_Spares[i]));
			}
			FUNC13("\n");
			FUNC13("Cache_Flags          %016jx\n",
			    FUNC5(meta, vdc->Cache_Flags));
			FUNC13("BG_Rate              %u\n",
			    FUNC8(meta, vdc->BG_Rate));
			FUNC13("MDF_Parity_Disks     %u\n",
			    FUNC8(meta, vdc->MDF_Parity_Disks));
			FUNC13("MDF_Parity_Generator_Polynomial 0x%04x\n",
			    FUNC1(meta, vdc->MDF_Parity_Generator_Polynomial));
			FUNC13("MDF_Constant_Generation_Method 0x%02x\n",
			    FUNC8(meta, vdc->MDF_Constant_Generation_Method));
			FUNC13("Physical_Disks      ");
			num2 = FUNC1(meta, vdc->Primary_Element_Count);
			val2 = (uint64_t *)&(vdc->Physical_Disk_Sequence[FUNC0(meta, hdr->Max_Primary_Element_Entries)]);
			for (i = 0; i < num2; i++)
				FUNC13(" 0x%08x @ %ju",
				    FUNC3(meta, vdc->Physical_Disk_Sequence[i]),
				    FUNC6(meta, val2 + i));
			FUNC13("\n");
			break;
		case DDF_VUCR_SIGNATURE:
			FUNC13("** Vendor Unique Configuration **\n");
			vuc = (struct ddf_vuc_record *)vdc;
			FUNC13("VD_GUID              ");
			FUNC12(vuc->VD_GUID);
			FUNC13("\n");
			break;
		case DDF_SA_SIGNATURE:
			FUNC13("** Spare Assignment Configuration **\n");
			sa = (struct ddf_sa_record *)vdc;
			FUNC13("Timestamp            0x%08x\n",
			    FUNC3(meta, sa->Timestamp));
			FUNC13("Spare_Type           0x%02x\n",
			    FUNC8(meta, sa->Spare_Type));
			FUNC13("Populated_SAEs       %u\n",
			    FUNC1(meta, sa->Populated_SAEs));
			FUNC13("MAX_SAE_Supported    %u\n",
			    FUNC1(meta, sa->MAX_SAE_Supported));
			for (i = 0; i < FUNC1(meta, sa->Populated_SAEs); i++) {
				if (FUNC11(sa->entry[i].VD_GUID, 24))
					continue;
				FUNC13("VD_GUID             ");
				for (k = 0; k < 24; k++)
					FUNC13("%02x", sa->entry[i].VD_GUID[k]);
				FUNC13("\n");
				FUNC13("Secondary_Element   %u\n",
				    FUNC1(meta, sa->entry[i].Secondary_Element));
			}
			break;
		case 0x00000000:
		case 0xFFFFFFFF:
			break;
		default:
			FUNC13("Unknown configuration signature %08x\n", val);
			break;
		}
	}
	FUNC13("**** Physical Disk Data ****\n");
	FUNC13("PD_GUID              ");
	FUNC12(meta->pdd->PD_GUID);
	FUNC13("\n");
	FUNC13("PD_Reference         0x%08x\n",
	    FUNC2(meta, pdd->PD_Reference));
	FUNC13("Forced_Ref_Flag      0x%02x\n",
	    FUNC7(meta, pdd->Forced_Ref_Flag));
	FUNC13("Forced_PD_GUID_Flag  0x%02x\n",
	    FUNC7(meta, pdd->Forced_PD_GUID_Flag));
}