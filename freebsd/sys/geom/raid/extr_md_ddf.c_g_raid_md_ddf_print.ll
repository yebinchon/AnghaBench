; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_g_raid_md_ddf_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_g_raid_md_ddf_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_29__*, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_30__*, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.ddf_meta = type { %struct.TYPE_18__*, %struct.TYPE_32__*, %struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_24__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32*, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { i32*, i32* }
%struct.TYPE_24__ = type { i32*, i32* }
%struct.ddf_vdc_record = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ddf_vuc_record = type { i32* }
%struct.ddf_sa_record = type { %struct.TYPE_17__*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32*, i32 }

@g_raid_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"********* DDF Metadata *********\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"**** Header ****\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"DDF_Header_GUID      \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"DDF_rev              %8.8s\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Sequence_Number      0x%08x\0A\00", align 1
@hdr = common dso_local global %struct.TYPE_22__* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"TimeStamp            0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Open_Flag            0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Foreign_Flag         0x%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Diskgrouping         0x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Primary_Header_LBA   %ju\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Secondary_Header_LBA %ju\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"WorkSpace_Length     %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"WorkSpace_LBA        %ju\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Max_PD_Entries       %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Max_VD_Entries       %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Max_Partitions       %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Configuration_Record_Length %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Max_Primary_Element_Entries %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Controller Data      %u:%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Physical Disk        %u:%u\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Virtual Disk         %u:%u\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Configuration Recs   %u:%u\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Physical Disk Recs   %u:%u\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"BBM Log              %u:%u\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Diagnostic Space     %u:%u\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Vendor_Specific_Logs %u:%u\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"**** Controller Data ****\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Controller_GUID      \00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"Controller_Type      0x%04x%04x 0x%04x%04x\0A\00", align 1
@cdr = common dso_local global %struct.TYPE_23__* null, align 8
@.str.30 = private unnamed_addr constant [30 x i8] c"Product_ID           '%.16s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"**** Physical Disk Records ****\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Populated_PDEs       %u\0A\00", align 1
@pdr = common dso_local global %struct.TYPE_20__* null, align 8
@.str.33 = private unnamed_addr constant [25 x i8] c"Max_PDE_Supported    %u\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"PD_GUID              \00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"PD_Reference         0x%08x\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"PD_Type              0x%04x\0A\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"PD_State             0x%04x\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Configured_Size      %ju\0A\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Block_Size           %u\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"**** Virtual Disk Records ****\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"Populated_VDEs       %u\0A\00", align 1
@vdr = common dso_local global %struct.TYPE_19__* null, align 8
@.str.42 = private unnamed_addr constant [25 x i8] c"Max_VDE_Supported    %u\0A\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"VD_GUID              \00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"VD_Number            0x%04x\0A\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"VD_Type              0x%04x\0A\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"VD_State             0x%02x\0A\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"Init_State           0x%02x\0A\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"Drive_Failures_Remaining %u\0A\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"VD_Name              '%.16s'\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"**** Configuration Records ****\0A\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"** Virtual Disk Configuration **\0A\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"Timestamp            0x%08x\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"Primary_Element_Count %u\0A\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"Stripe_Size          %u\0A\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"Primary_RAID_Level   0x%02x\0A\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"RLQ                  0x%02x\0A\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"Secondary_Element_Count %u\0A\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"Secondary_Element_Seq %u\0A\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"Secondary_RAID_Level 0x%02x\0A\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"Block_Count          %ju\0A\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"VD_Size              %ju\0A\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"Rotate_Parity_count  %u\0A\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"Associated_Spare_Disks\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c" 0x%08x\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"Cache_Flags          %016jx\0A\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"BG_Rate              %u\0A\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"MDF_Parity_Disks     %u\0A\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"MDF_Parity_Generator_Polynomial 0x%04x\0A\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"MDF_Constant_Generation_Method 0x%02x\0A\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"Physical_Disks      \00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c" 0x%08x @ %ju\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"** Vendor Unique Configuration **\0A\00", align 1
@.str.73 = private unnamed_addr constant [38 x i8] c"** Spare Assignment Configuration **\0A\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"Spare_Type           0x%02x\0A\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"Populated_SAEs       %u\0A\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"MAX_SAE_Supported    %u\0A\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"VD_GUID             \00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"Secondary_Element   %u\0A\00", align 1
@.str.80 = private unnamed_addr constant [38 x i8] c"Unknown configuration signature %08x\0A\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"**** Physical Disk Data ****\0A\00", align 1
@pdd = common dso_local global %struct.TYPE_21__* null, align 8
@.str.82 = private unnamed_addr constant [29 x i8] c"Forced_Ref_Flag      0x%02x\0A\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"Forced_PD_GUID_Flag  0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddf_meta*)* @g_raid_md_ddf_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_md_ddf_print(%struct.ddf_meta* %0) #0 {
  %2 = alloca %struct.ddf_meta*, align 8
  %3 = alloca %struct.ddf_vdc_record*, align 8
  %4 = alloca %struct.ddf_vuc_record*, align 8
  %5 = alloca %struct.ddf_sa_record*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ddf_meta* %0, %struct.ddf_meta** %2, align 8
  %13 = load i32, i32* @g_raid_debug, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %830

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %21 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %20, i32 0, i32 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @print_guid(i32* %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %28 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %27, i32 0, i32 4
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  %35 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 29
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @GET32(%struct.ddf_meta* %35, i32 %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 28
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @GET32(%struct.ddf_meta* %41, i32 %44)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 27
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @GET16(%struct.ddf_meta* %47, i32 %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %51)
  %53 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 26
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @GET16(%struct.ddf_meta* %53, i32 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i64 %57)
  %59 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 25
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @GET16(%struct.ddf_meta* %59, i32 %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 %63)
  %65 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 24
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @GET64(%struct.ddf_meta* %65, i32 %68)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %69)
  %71 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 23
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @GET64(%struct.ddf_meta* %71, i32 %74)
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %75)
  %77 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 22
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @GET32(%struct.ddf_meta* %77, i32 %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %81)
  %83 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 21
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @GET64(%struct.ddf_meta* %83, i32 %86)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %87)
  %89 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 20
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @GET16(%struct.ddf_meta* %89, i32 %92)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i64 %93)
  %95 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 19
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @GET16(%struct.ddf_meta* %95, i32 %98)
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i64 %99)
  %101 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 18
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @GET16(%struct.ddf_meta* %101, i32 %104)
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i64 %105)
  %107 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 17
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @GET16(%struct.ddf_meta* %107, i32 %110)
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i64 %111)
  %113 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @GET16(%struct.ddf_meta* %113, i32 %116)
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i64 %117)
  %119 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 16
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @GET32(%struct.ddf_meta* %119, i32 %122)
  %124 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 15
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @GET32(%struct.ddf_meta* %124, i32 %127)
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %123, i32 %128)
  %130 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 14
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @GET32(%struct.ddf_meta* %130, i32 %133)
  %135 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @GET32(%struct.ddf_meta* %135, i32 %138)
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i32 %134, i32 %139)
  %141 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 12
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @GET32(%struct.ddf_meta* %141, i32 %144)
  %146 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 11
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @GET32(%struct.ddf_meta* %146, i32 %149)
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %145, i32 %150)
  %152 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @GET32(%struct.ddf_meta* %152, i32 %155)
  %157 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 9
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @GET32(%struct.ddf_meta* %157, i32 %160)
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 %156, i32 %161)
  %163 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @GET32(%struct.ddf_meta* %163, i32 %166)
  %168 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @GET32(%struct.ddf_meta* %168, i32 %171)
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i32 %167, i32 %172)
  %174 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @GET32(%struct.ddf_meta* %174, i32 %177)
  %179 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @GET32(%struct.ddf_meta* %179, i32 %182)
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i32 %178, i32 %183)
  %185 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @GET32(%struct.ddf_meta* %185, i32 %188)
  %190 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @GET32(%struct.ddf_meta* %190, i32 %193)
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i32 %189, i32 %194)
  %196 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @GET32(%struct.ddf_meta* %196, i32 %199)
  %201 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @GET32(%struct.ddf_meta* %201, i32 %204)
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i32 %200, i32 %205)
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0))
  %209 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %210 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %209, i32 0, i32 3
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @print_guid(i32* %213)
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %216 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** @cdr, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @GET16(%struct.ddf_meta* %216, i32 %220)
  %222 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** @cdr, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i64 @GET16(%struct.ddf_meta* %222, i32 %226)
  %228 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** @cdr, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @GET16(%struct.ddf_meta* %228, i32 %232)
  %234 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** @cdr, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @GET16(%struct.ddf_meta* %234, i32 %238)
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.29, i64 0, i64 0), i64 %221, i64 %227, i64 %233, i64 %239)
  %241 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %242 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %241, i32 0, i32 3
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = bitcast i32* %246 to i8*
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), i8* %247)
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0))
  %250 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pdr, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call i64 @GET16(%struct.ddf_meta* %250, i32 %253)
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i64 %254)
  %256 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pdr, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @GET16(%struct.ddf_meta* %256, i32 %259)
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0), i64 %260)
  store i32 0, i32* %9, align 4
  br label %262

262:                                              ; preds = %367, %16
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pdr, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @GET16(%struct.ddf_meta* %265, i32 %268)
  %270 = icmp ult i64 %264, %269
  br i1 %270, label %271, label %370

271:                                              ; preds = %262
  %272 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %273 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %272, i32 0, i32 2
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %275, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = call i64 @isff(i32* %281, i32 24)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %271
  br label %367

285:                                              ; preds = %271
  %286 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pdr, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %288, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @GET32(%struct.ddf_meta* %286, i32 %294)
  %296 = icmp eq i32 %295, -1
  br i1 %296, label %297, label %298

297:                                              ; preds = %285
  br label %367

298:                                              ; preds = %285
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0))
  %300 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %301 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %300, i32 0, i32 2
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %303, align 8
  %305 = load i32, i32* %9, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = call i32 @print_guid(i32* %309)
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %312 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pdr, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_29__*, %struct.TYPE_29__** %314, align 8
  %316 = load i32, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @GET32(%struct.ddf_meta* %312, i32 %320)
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0), i32 %321)
  %323 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pdr, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = call i64 @GET16(%struct.ddf_meta* %323, i32 %331)
  %333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i64 %332)
  %334 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pdr, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_29__*, %struct.TYPE_29__** %336, align 8
  %338 = load i32, i32* %9, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = call i64 @GET16(%struct.ddf_meta* %334, i32 %342)
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i64 0, i64 0), i64 %343)
  %345 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pdr, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_29__*, %struct.TYPE_29__** %347, align 8
  %349 = load i32, i32* %9, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @GET64(%struct.ddf_meta* %345, i32 %353)
  %355 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i64 0, i64 0), i32 %354)
  %356 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** @pdr, align 8
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_29__*, %struct.TYPE_29__** %358, align 8
  %360 = load i32, i32* %9, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = call i64 @GET16(%struct.ddf_meta* %356, i32 %364)
  %366 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0), i64 %365)
  br label %367

367:                                              ; preds = %298, %297, %284
  %368 = load i32, i32* %9, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %9, align 4
  br label %262

370:                                              ; preds = %262
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0))
  %372 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vdr, align 8
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = call i64 @GET16(%struct.ddf_meta* %372, i32 %375)
  %377 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0), i64 %376)
  %378 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %379 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vdr, align 8
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = call i64 @GET16(%struct.ddf_meta* %378, i32 %381)
  %383 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i64 %382)
  store i32 0, i32* %9, align 4
  br label %384

384:                                              ; preds = %487, %370
  %385 = load i32, i32* %9, align 4
  %386 = sext i32 %385 to i64
  %387 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %388 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vdr, align 8
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = call i64 @GET16(%struct.ddf_meta* %387, i32 %390)
  %392 = icmp ult i64 %386, %391
  br i1 %392, label %393, label %490

393:                                              ; preds = %384
  %394 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %395 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %394, i32 0, i32 1
  %396 = load %struct.TYPE_32__*, %struct.TYPE_32__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %396, i32 0, i32 0
  %398 = load %struct.TYPE_31__*, %struct.TYPE_31__** %397, align 8
  %399 = load i32, i32* %9, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %401, i32 0, i32 0
  %403 = load i32*, i32** %402, align 8
  %404 = call i64 @isff(i32* %403, i32 24)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %393
  br label %487

407:                                              ; preds = %393
  %408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i64 0, i64 0))
  %409 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %410 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %409, i32 0, i32 1
  %411 = load %struct.TYPE_32__*, %struct.TYPE_32__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_31__*, %struct.TYPE_31__** %412, align 8
  %414 = load i32, i32* %9, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %416, i32 0, i32 0
  %418 = load i32*, i32** %417, align 8
  %419 = call i32 @print_guid(i32* %418)
  %420 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %421 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %422 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vdr, align 8
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %422, i32 0, i32 0
  %424 = load %struct.TYPE_30__*, %struct.TYPE_30__** %423, align 8
  %425 = load i32, i32* %9, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %427, i32 0, i32 4
  %429 = load i32, i32* %428, align 4
  %430 = call i64 @GET16(%struct.ddf_meta* %421, i32 %429)
  %431 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0), i64 %430)
  %432 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %433 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vdr, align 8
  %434 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %433, i32 0, i32 0
  %435 = load %struct.TYPE_30__*, %struct.TYPE_30__** %434, align 8
  %436 = load i32, i32* %9, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %435, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 4
  %441 = call i64 @GET16(%struct.ddf_meta* %432, i32 %440)
  %442 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i64 0, i64 0), i64 %441)
  %443 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %444 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vdr, align 8
  %445 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_30__*, %struct.TYPE_30__** %445, align 8
  %447 = load i32, i32* %9, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %446, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @GET8(%struct.ddf_meta* %443, i32 %451)
  %453 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.46, i64 0, i64 0), i32 %452)
  %454 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %455 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vdr, align 8
  %456 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %455, i32 0, i32 0
  %457 = load %struct.TYPE_30__*, %struct.TYPE_30__** %456, align 8
  %458 = load i32, i32* %9, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @GET8(%struct.ddf_meta* %454, i32 %462)
  %464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i64 0, i64 0), i32 %463)
  %465 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %466 = load %struct.TYPE_19__*, %struct.TYPE_19__** @vdr, align 8
  %467 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %466, i32 0, i32 0
  %468 = load %struct.TYPE_30__*, %struct.TYPE_30__** %467, align 8
  %469 = load i32, i32* %9, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %468, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @GET8(%struct.ddf_meta* %465, i32 %473)
  %475 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0), i32 %474)
  %476 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %477 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %476, i32 0, i32 1
  %478 = load %struct.TYPE_32__*, %struct.TYPE_32__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %478, i32 0, i32 0
  %480 = load %struct.TYPE_31__*, %struct.TYPE_31__** %479, align 8
  %481 = load i32, i32* %9, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %480, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %483, i32 0, i32 1
  %485 = bitcast i32* %484 to i8*
  %486 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i64 0, i64 0), i8* %485)
  br label %487

487:                                              ; preds = %407, %406
  %488 = load i32, i32* %9, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %9, align 4
  br label %384

490:                                              ; preds = %384
  %491 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i64 0, i64 0))
  %492 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %493 = call i32 @GETCRNUM(%struct.ddf_meta* %492)
  store i32 %493, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %494

494:                                              ; preds = %799, %490
  %495 = load i32, i32* %9, align 4
  %496 = load i32, i32* %11, align 4
  %497 = icmp slt i32 %495, %496
  br i1 %497, label %498, label %802

498:                                              ; preds = %494
  %499 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %500 = load i32, i32* %9, align 4
  %501 = call %struct.ddf_vdc_record* @GETVDCPTR(%struct.ddf_meta* %499, i32 %500)
  store %struct.ddf_vdc_record* %501, %struct.ddf_vdc_record** %3, align 8
  %502 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %503 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %504 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %503, i32 0, i32 21
  %505 = load i32, i32* %504, align 8
  %506 = call i32 @GET32D(%struct.ddf_meta* %502, i32 %505)
  store i32 %506, i32* %7, align 4
  %507 = load i32, i32* %7, align 4
  switch i32 %507, label %795 [
    i32 129, label %508
    i32 128, label %697
    i32 130, label %707
    i32 0, label %794
    i32 -1, label %794
  ]

508:                                              ; preds = %498
  %509 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.51, i64 0, i64 0))
  %510 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i64 0, i64 0))
  %511 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %512 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %511, i32 0, i32 0
  %513 = load i32*, i32** %512, align 8
  %514 = call i32 @print_guid(i32* %513)
  %515 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %516 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %517 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %518 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %517, i32 0, i32 20
  %519 = load i32, i32* %518, align 4
  %520 = call i32 @GET32D(%struct.ddf_meta* %516, i32 %519)
  %521 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i64 0, i64 0), i32 %520)
  %522 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %523 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %524 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %523, i32 0, i32 19
  %525 = load i32, i32* %524, align 8
  %526 = call i32 @GET32D(%struct.ddf_meta* %522, i32 %525)
  %527 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %526)
  %528 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %529 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %530 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %529, i32 0, i32 2
  %531 = load i32, i32* %530, align 8
  %532 = call i32 @GET16D(%struct.ddf_meta* %528, i32 %531)
  %533 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i64 0, i64 0), i32 %532)
  %534 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %535 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %536 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %535, i32 0, i32 18
  %537 = load i32, i32* %536, align 4
  %538 = call i32 @GET8D(%struct.ddf_meta* %534, i32 %537)
  %539 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0), i32 %538)
  %540 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %541 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %542 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %541, i32 0, i32 17
  %543 = load i32, i32* %542, align 8
  %544 = call i32 @GET8D(%struct.ddf_meta* %540, i32 %543)
  %545 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0), i32 %544)
  %546 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %547 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %548 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %547, i32 0, i32 16
  %549 = load i32, i32* %548, align 4
  %550 = call i32 @GET8D(%struct.ddf_meta* %546, i32 %549)
  %551 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0), i32 %550)
  %552 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %553 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %554 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %553, i32 0, i32 15
  %555 = load i32, i32* %554, align 8
  %556 = call i32 @GET8D(%struct.ddf_meta* %552, i32 %555)
  %557 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.57, i64 0, i64 0), i32 %556)
  %558 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %559 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %560 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %559, i32 0, i32 14
  %561 = load i32, i32* %560, align 4
  %562 = call i32 @GET8D(%struct.ddf_meta* %558, i32 %561)
  %563 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i64 0, i64 0), i32 %562)
  %564 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %565 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %566 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %565, i32 0, i32 13
  %567 = load i32, i32* %566, align 8
  %568 = call i32 @GET8D(%struct.ddf_meta* %564, i32 %567)
  %569 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i32 %568)
  %570 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %571 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %572 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %571, i32 0, i32 12
  %573 = load i32, i32* %572, align 4
  %574 = call i32 @GET64D(%struct.ddf_meta* %570, i32 %573)
  %575 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i64 0, i64 0), i32 %574)
  %576 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %577 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %578 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %577, i32 0, i32 11
  %579 = load i32, i32* %578, align 8
  %580 = call i32 @GET64D(%struct.ddf_meta* %576, i32 %579)
  %581 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0), i32 %580)
  %582 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %583 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %584 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %583, i32 0, i32 10
  %585 = load i32, i32* %584, align 4
  %586 = call i32 @GET16D(%struct.ddf_meta* %582, i32 %585)
  %587 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0), i32 %586)
  %588 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %589 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %590 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %589, i32 0, i32 9
  %591 = load i32, i32* %590, align 8
  %592 = call i32 @GET8D(%struct.ddf_meta* %588, i32 %591)
  %593 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.62, i64 0, i64 0), i32 %592)
  %594 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %595

595:                                              ; preds = %621, %508
  %596 = load i32, i32* %8, align 4
  %597 = icmp slt i32 %596, 8
  br i1 %597, label %598, label %624

598:                                              ; preds = %595
  %599 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %600 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %601 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %600, i32 0, i32 8
  %602 = load i32*, i32** %601, align 8
  %603 = load i32, i32* %8, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %602, i64 %604
  %606 = load i32, i32* %605, align 4
  %607 = call i32 @GET32D(%struct.ddf_meta* %599, i32 %606)
  %608 = icmp ne i32 %607, -1
  br i1 %608, label %609, label %620

609:                                              ; preds = %598
  %610 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %611 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %612 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %611, i32 0, i32 8
  %613 = load i32*, i32** %612, align 8
  %614 = load i32, i32* %8, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i32, i32* %613, i64 %615
  %617 = load i32, i32* %616, align 4
  %618 = call i32 @GET32D(%struct.ddf_meta* %610, i32 %617)
  %619 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0), i32 %618)
  br label %620

620:                                              ; preds = %609, %598
  br label %621

621:                                              ; preds = %620
  %622 = load i32, i32* %8, align 4
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %8, align 4
  br label %595

624:                                              ; preds = %595
  %625 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %626 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %627 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %628 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %627, i32 0, i32 7
  %629 = load i32, i32* %628, align 4
  %630 = call i32 @GET64D(%struct.ddf_meta* %626, i32 %629)
  %631 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i64 0, i64 0), i32 %630)
  %632 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %633 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %634 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %633, i32 0, i32 6
  %635 = load i32, i32* %634, align 8
  %636 = call i32 @GET8D(%struct.ddf_meta* %632, i32 %635)
  %637 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i32 %636)
  %638 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %639 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %640 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %639, i32 0, i32 5
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @GET8D(%struct.ddf_meta* %638, i32 %641)
  %643 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0), i32 %642)
  %644 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %645 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %646 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %645, i32 0, i32 4
  %647 = load i32, i32* %646, align 8
  %648 = call i32 @GET16D(%struct.ddf_meta* %644, i32 %647)
  %649 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.68, i64 0, i64 0), i32 %648)
  %650 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %651 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %652 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %651, i32 0, i32 3
  %653 = load i32, i32* %652, align 4
  %654 = call i32 @GET8D(%struct.ddf_meta* %650, i32 %653)
  %655 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i64 0, i64 0), i32 %654)
  %656 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i64 0, i64 0))
  %657 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %658 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %659 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %658, i32 0, i32 2
  %660 = load i32, i32* %659, align 8
  %661 = call i32 @GET16D(%struct.ddf_meta* %657, i32 %660)
  store i32 %661, i32* %12, align 4
  %662 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %663 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %662, i32 0, i32 1
  %664 = load i32*, i32** %663, align 8
  %665 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %666 = load %struct.TYPE_22__*, %struct.TYPE_22__** @hdr, align 8
  %667 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 4
  %669 = call i64 @GET16(%struct.ddf_meta* %665, i32 %668)
  %670 = getelementptr inbounds i32, i32* %664, i64 %669
  store i32* %670, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %671

671:                                              ; preds = %692, %624
  %672 = load i32, i32* %8, align 4
  %673 = load i32, i32* %12, align 4
  %674 = icmp slt i32 %672, %673
  br i1 %674, label %675, label %695

675:                                              ; preds = %671
  %676 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %677 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %678 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %677, i32 0, i32 1
  %679 = load i32*, i32** %678, align 8
  %680 = load i32, i32* %8, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i32, i32* %679, i64 %681
  %683 = load i32, i32* %682, align 4
  %684 = call i32 @GET32D(%struct.ddf_meta* %676, i32 %683)
  %685 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %686 = load i32*, i32** %6, align 8
  %687 = load i32, i32* %8, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds i32, i32* %686, i64 %688
  %690 = call i32 @GET64P(%struct.ddf_meta* %685, i32* %689)
  %691 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i64 0, i64 0), i32 %684, i32 %690)
  br label %692

692:                                              ; preds = %675
  %693 = load i32, i32* %8, align 4
  %694 = add nsw i32 %693, 1
  store i32 %694, i32* %8, align 4
  br label %671

695:                                              ; preds = %671
  %696 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %798

697:                                              ; preds = %498
  %698 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.72, i64 0, i64 0))
  %699 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %700 = bitcast %struct.ddf_vdc_record* %699 to %struct.ddf_vuc_record*
  store %struct.ddf_vuc_record* %700, %struct.ddf_vuc_record** %4, align 8
  %701 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i64 0, i64 0))
  %702 = load %struct.ddf_vuc_record*, %struct.ddf_vuc_record** %4, align 8
  %703 = getelementptr inbounds %struct.ddf_vuc_record, %struct.ddf_vuc_record* %702, i32 0, i32 0
  %704 = load i32*, i32** %703, align 8
  %705 = call i32 @print_guid(i32* %704)
  %706 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %798

707:                                              ; preds = %498
  %708 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.73, i64 0, i64 0))
  %709 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  %710 = bitcast %struct.ddf_vdc_record* %709 to %struct.ddf_sa_record*
  store %struct.ddf_sa_record* %710, %struct.ddf_sa_record** %5, align 8
  %711 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %712 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %5, align 8
  %713 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %712, i32 0, i32 4
  %714 = load i32, i32* %713, align 4
  %715 = call i32 @GET32D(%struct.ddf_meta* %711, i32 %714)
  %716 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i64 0, i64 0), i32 %715)
  %717 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %718 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %5, align 8
  %719 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %718, i32 0, i32 3
  %720 = load i32, i32* %719, align 8
  %721 = call i32 @GET8D(%struct.ddf_meta* %717, i32 %720)
  %722 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i64 0, i64 0), i32 %721)
  %723 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %724 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %5, align 8
  %725 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %724, i32 0, i32 1
  %726 = load i32, i32* %725, align 8
  %727 = call i32 @GET16D(%struct.ddf_meta* %723, i32 %726)
  %728 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.75, i64 0, i64 0), i32 %727)
  %729 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %730 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %5, align 8
  %731 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %730, i32 0, i32 2
  %732 = load i32, i32* %731, align 4
  %733 = call i32 @GET16D(%struct.ddf_meta* %729, i32 %732)
  %734 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i64 0, i64 0), i32 %733)
  store i32 0, i32* %8, align 4
  br label %735

735:                                              ; preds = %790, %707
  %736 = load i32, i32* %8, align 4
  %737 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %738 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %5, align 8
  %739 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %738, i32 0, i32 1
  %740 = load i32, i32* %739, align 8
  %741 = call i32 @GET16D(%struct.ddf_meta* %737, i32 %740)
  %742 = icmp slt i32 %736, %741
  br i1 %742, label %743, label %793

743:                                              ; preds = %735
  %744 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %5, align 8
  %745 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %744, i32 0, i32 0
  %746 = load %struct.TYPE_17__*, %struct.TYPE_17__** %745, align 8
  %747 = load i32, i32* %8, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %746, i64 %748
  %750 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %749, i32 0, i32 0
  %751 = load i32*, i32** %750, align 8
  %752 = call i64 @isff(i32* %751, i32 24)
  %753 = icmp ne i64 %752, 0
  br i1 %753, label %754, label %755

754:                                              ; preds = %743
  br label %790

755:                                              ; preds = %743
  %756 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %757

757:                                              ; preds = %774, %755
  %758 = load i32, i32* %10, align 4
  %759 = icmp slt i32 %758, 24
  br i1 %759, label %760, label %777

760:                                              ; preds = %757
  %761 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %5, align 8
  %762 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %761, i32 0, i32 0
  %763 = load %struct.TYPE_17__*, %struct.TYPE_17__** %762, align 8
  %764 = load i32, i32* %8, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %763, i64 %765
  %767 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %766, i32 0, i32 0
  %768 = load i32*, i32** %767, align 8
  %769 = load i32, i32* %10, align 4
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds i32, i32* %768, i64 %770
  %772 = load i32, i32* %771, align 4
  %773 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i32 %772)
  br label %774

774:                                              ; preds = %760
  %775 = load i32, i32* %10, align 4
  %776 = add nsw i32 %775, 1
  store i32 %776, i32* %10, align 4
  br label %757

777:                                              ; preds = %757
  %778 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %779 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %780 = load %struct.ddf_sa_record*, %struct.ddf_sa_record** %5, align 8
  %781 = getelementptr inbounds %struct.ddf_sa_record, %struct.ddf_sa_record* %780, i32 0, i32 0
  %782 = load %struct.TYPE_17__*, %struct.TYPE_17__** %781, align 8
  %783 = load i32, i32* %8, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %782, i64 %784
  %786 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %785, i32 0, i32 1
  %787 = load i32, i32* %786, align 8
  %788 = call i32 @GET16D(%struct.ddf_meta* %779, i32 %787)
  %789 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.79, i64 0, i64 0), i32 %788)
  br label %790

790:                                              ; preds = %777, %754
  %791 = load i32, i32* %8, align 4
  %792 = add nsw i32 %791, 1
  store i32 %792, i32* %8, align 4
  br label %735

793:                                              ; preds = %735
  br label %798

794:                                              ; preds = %498, %498
  br label %798

795:                                              ; preds = %498
  %796 = load i32, i32* %7, align 4
  %797 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.80, i64 0, i64 0), i32 %796)
  br label %798

798:                                              ; preds = %795, %794, %793, %697, %695
  br label %799

799:                                              ; preds = %798
  %800 = load i32, i32* %9, align 4
  %801 = add nsw i32 %800, 1
  store i32 %801, i32* %9, align 4
  br label %494

802:                                              ; preds = %494
  %803 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i64 0, i64 0))
  %804 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0))
  %805 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %806 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %805, i32 0, i32 0
  %807 = load %struct.TYPE_18__*, %struct.TYPE_18__** %806, align 8
  %808 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %807, i32 0, i32 0
  %809 = load i32*, i32** %808, align 8
  %810 = call i32 @print_guid(i32* %809)
  %811 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %812 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %813 = load %struct.TYPE_21__*, %struct.TYPE_21__** @pdd, align 8
  %814 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %813, i32 0, i32 2
  %815 = load i32, i32* %814, align 4
  %816 = call i32 @GET32(%struct.ddf_meta* %812, i32 %815)
  %817 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0), i32 %816)
  %818 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %819 = load %struct.TYPE_21__*, %struct.TYPE_21__** @pdd, align 8
  %820 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %819, i32 0, i32 1
  %821 = load i32, i32* %820, align 4
  %822 = call i32 @GET8(%struct.ddf_meta* %818, i32 %821)
  %823 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.82, i64 0, i64 0), i32 %822)
  %824 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %825 = load %struct.TYPE_21__*, %struct.TYPE_21__** @pdd, align 8
  %826 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %825, i32 0, i32 0
  %827 = load i32, i32* %826, align 4
  %828 = call i32 @GET8(%struct.ddf_meta* %824, i32 %827)
  %829 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i64 0, i64 0), i32 %828)
  br label %830

830:                                              ; preds = %802, %15
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_guid(i32*) #1

declare dso_local i32 @GET32(%struct.ddf_meta*, i32) #1

declare dso_local i64 @GET16(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GET64(%struct.ddf_meta*, i32) #1

declare dso_local i64 @isff(i32*, i32) #1

declare dso_local i32 @GET8(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GETCRNUM(%struct.ddf_meta*) #1

declare dso_local %struct.ddf_vdc_record* @GETVDCPTR(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GET32D(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GET16D(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GET8D(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GET64D(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GET64P(%struct.ddf_meta*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
