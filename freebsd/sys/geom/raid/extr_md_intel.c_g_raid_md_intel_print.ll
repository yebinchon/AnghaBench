; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_g_raid_md_intel_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_g_raid_md_intel_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_raid_conf = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32 }
%struct.intel_raid_vol = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_raid_map = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@g_raid_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"********* ATA Intel MatrixRAID Metadata *********\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"intel_id            <%.24s>\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"version             <%.6s>\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"checksum            0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"config_size         0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"config_id           0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"generation          0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"error_log_size      %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"attributes          0x%b\0A\00", align 1
@.str.9 = private unnamed_addr constant [102 x i8] c"\10\01RAID0\02RAID1\03RAID10\04RAID1E\05RAID15\06RAIDCNG\07EXT_STRIP\1ANVM_CACHE\1B2TB_DISK\1CBBM\1DNVM_CACHE\1E2TB\1FPM CHECKSUM\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"total_disks         %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"total_volumes       %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"error_log_pos       %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"cache_size          %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"orig_config_id      0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"pwr_cycle_count     %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"bbm_log_size        %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [70 x i8] c"Flags: S - Spare, A - Assigned, F - Failed, O - Online, D - Disabled\0A\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"DISK#   serial disk_sectors disk_sectors_hi disk_id flags owner\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"    %d   <%.16s> %u %u 0x%08x 0x%b %08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"\10\01S\02A\03F\04O\05D\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c" ****** Volume %d ******\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c" name               %.16s\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c" total_sectors      %ju\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c" state              0x%b\0A\00", align 1
@.str.25 = private unnamed_addr constant [203 x i8] c"\10\01BOOTABLE\02BOOT_DEVICE\03READ_COALESCING\04WRITE_COALESCING\05LAST_SHUTDOWN_DIRTY\06HIDDEN_AT_BOOT\07CURRENTLY_HIDDEN\08VERIFY_AND_FIX\09MAP_STATE_UNINIT\0ANO_AUTO_RECOVERY\0BCLONE_N_GO\0CCLONE_MAN_SYNC\0DCNG_MASTER_DISK_NUM\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c" reserved           %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c" migr_priority      %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c" num_sub_vols       %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c" tid                %u\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c" cng_master_disk    %u\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c" cache_policy       %u\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c" cng_state          %u (%s)\0A\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c" cng_sub_state      %u\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c" curr_migr_unit     %u\0A\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c" curr_migr_unit_hi  %u\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c" checkpoint_id      %u\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c" migr_state         %u\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c" migr_type          %u (%s)\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c" dirty              %u\0A\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c" fs_state           %u\0A\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c" verify_errors      %u\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c" bad_blocks         %u\0A\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"  *** Map %d ***\0A\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"  offset            %u\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"  offset_hi         %u\0A\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"  disk_sectors      %u\0A\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"  disk_sectors_hi   %u\0A\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"  stripe_count      %u\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"  stripe_count_hi   %u\0A\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"  strip_sectors     %u\0A\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"  status            %u (%s)\0A\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"  type              %u (%s)\0A\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"  total_disks       %u\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"  total_domains     %u\0A\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"  failed_disk_num   %u\0A\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"  ddf               %u\0A\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"  disk_idx         \00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c" 0x%08x\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"=================================================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_raid_conf*)* @g_raid_md_intel_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_md_intel_print(%struct.intel_raid_conf* %0) #0 {
  %2 = alloca %struct.intel_raid_conf*, align 8
  %3 = alloca %struct.intel_raid_vol*, align 8
  %4 = alloca %struct.intel_raid_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_raid_conf* %0, %struct.intel_raid_conf** %2, align 8
  %8 = load i32, i32* @g_raid_debug, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %341

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %14 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %18 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %22 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %26 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  %29 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %30 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %34 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  %37 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %38 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %39)
  %41 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %42 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %41, i32 0, i32 15
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %43, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.9, i64 0, i64 0))
  %45 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %46 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %47)
  %49 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %50 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %51)
  %53 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %54 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %55)
  %57 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %58 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %59)
  %61 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %62 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %63)
  %65 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %66 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %67)
  %69 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %70 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.17, i64 0, i64 0))
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %132, %11
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %78 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %135

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %84 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %83, i32 0, i32 14
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %92 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %91, i32 0, i32 14
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %100 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %99, i32 0, i32 14
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %108 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %107, i32 0, i32 14
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %116 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %115, i32 0, i32 14
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %124 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %123, i32 0, i32 14
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %82, i8* %90, i32 %98, i32 %106, i32 %114, i32 %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %81
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %75

135:                                              ; preds = %75
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %336, %135
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %139 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %339

142:                                              ; preds = %136
  %143 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call %struct.intel_raid_vol* @intel_get_volume(%struct.intel_raid_conf* %143, i32 %144)
  store %struct.intel_raid_vol* %145, %struct.intel_raid_vol** %3, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 %146)
  %148 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %149 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* %150)
  %152 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %153 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %152, i32 0, i32 19
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %154)
  %156 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %157 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %156, i32 0, i32 18
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 %158, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.25, i64 0, i64 0))
  %160 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %161 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 %162)
  %164 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %165 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i32 %166)
  %168 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %169 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32 %170)
  %172 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %173 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i32 %174)
  %176 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %177 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 %178)
  %180 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %181 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i32 %182)
  %184 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %185 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %188 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 8
  %190 = call i8* @intel_cngst2str(i32 %189)
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 %186, i8* %190)
  %192 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %193 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i32 %194)
  %196 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %197 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0), i32 %198)
  %200 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %201 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %200, i32 0, i32 10
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i32 %202)
  %204 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %205 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0), i32 %206)
  %208 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %209 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %208, i32 0, i32 12
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i32 %210)
  %212 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %213 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %212, i32 0, i32 13
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %216 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %215, i32 0, i32 13
  %217 = load i32, i32* %216, align 8
  %218 = call i8* @intel_mt2str(i32 %217)
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i32 %214, i8* %218)
  %220 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %221 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %220, i32 0, i32 14
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i32 %222)
  %224 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %225 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %224, i32 0, i32 15
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0), i32 %226)
  %228 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %229 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %228, i32 0, i32 16
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0), i32 %230)
  %232 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %233 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %232, i32 0, i32 17
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0), i32 %234)
  store i32 0, i32* %6, align 4
  br label %236

236:                                              ; preds = %332, %142
  %237 = load i32, i32* %6, align 4
  %238 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %239 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %238, i32 0, i32 12
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i32 2, i32 1
  %244 = icmp slt i32 %237, %243
  br i1 %244, label %245, label %335

245:                                              ; preds = %236
  %246 = load i32, i32* %6, align 4
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i32 %246)
  %248 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  %249 = load i32, i32* %6, align 4
  %250 = call %struct.intel_raid_map* @intel_get_map(%struct.intel_raid_vol* %248, i32 %249)
  store %struct.intel_raid_map* %250, %struct.intel_raid_map** %4, align 8
  %251 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %252 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i32 %253)
  %255 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %256 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i64 0, i64 0), i32 %257)
  %259 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %260 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0), i32 %261)
  %263 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %264 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0), i32 %265)
  %267 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %268 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i64 0, i64 0), i32 %269)
  %271 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %272 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0), i32 %273)
  %275 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %276 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0), i32 %277)
  %279 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %280 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %283 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 4
  %285 = call i8* @intel_status2str(i32 %284)
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0), i32 %281, i8* %285)
  %287 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %288 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %287, i32 0, i32 8
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %291 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 8
  %293 = call i8* @intel_type2str(i32 %292)
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i64 0, i64 0), i32 %289, i8* %293)
  %295 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %296 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %295, i32 0, i32 9
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0), i32 %297)
  %299 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %300 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %299, i32 0, i32 10
  %301 = load i32, i32* %300, align 8
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i64 0, i64 0), i32 %301)
  %303 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %304 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %303, i32 0, i32 11
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), i32 %305)
  %307 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %308 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %307, i32 0, i32 12
  %309 = load i32, i32* %308, align 8
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i64 0, i64 0), i32 %309)
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %312

312:                                              ; preds = %327, %245
  %313 = load i32, i32* %7, align 4
  %314 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %315 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %314, i32 0, i32 9
  %316 = load i32, i32* %315, align 4
  %317 = icmp slt i32 %313, %316
  br i1 %317, label %318, label %330

318:                                              ; preds = %312
  %319 = load %struct.intel_raid_map*, %struct.intel_raid_map** %4, align 8
  %320 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %319, i32 0, i32 13
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i32 %325)
  br label %327

327:                                              ; preds = %318
  %328 = load i32, i32* %7, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %7, align 4
  br label %312

330:                                              ; preds = %312
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0))
  br label %332

332:                                              ; preds = %330
  %333 = load i32, i32* %6, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %6, align 4
  br label %236

335:                                              ; preds = %236
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %5, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %5, align 4
  br label %136

339:                                              ; preds = %136
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.60, i64 0, i64 0))
  br label %341

341:                                              ; preds = %339, %10
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.intel_raid_vol* @intel_get_volume(%struct.intel_raid_conf*, i32) #1

declare dso_local i8* @intel_cngst2str(i32) #1

declare dso_local i8* @intel_mt2str(i32) #1

declare dso_local %struct.intel_raid_map* @intel_get_map(%struct.intel_raid_vol*, i32) #1

declare dso_local i8* @intel_status2str(i32) #1

declare dso_local i8* @intel_type2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
