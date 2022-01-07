; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_promise_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_promise_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promise_raid_conf = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@g_raid_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"********* ATA Promise Metadata *********\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"promise_id          <%.24s>\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"disk                %02x %02x %02x %02x %016jx\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"disk_offset         %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"disk_sectors        %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"disk_rebuild        %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"generation          %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"status              0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"type                %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"total_disks         %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"stripe_shift        %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"array_width         %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"array_number        %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"total_sectors       %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"cylinders           %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"heads               %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"sectors             %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"volume_id           0x%016jx\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"disks:\0A\00", align 1
@PROMISE_MAX_DISKS = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [48 x i8] c"                    %02x %02x %02x %02x %016jx\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"name                <%.32s>\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"magic_3             0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"rebuild_lba64       %ju\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"magic_4             0x%08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"magic_5             0x%08x\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"total_sectors_high  0x%08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"sector_size         %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"backup_time         %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"disk_offset_high    0x%08x\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"disk_sectors_high   0x%08x\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"disk_rebuild_high   0x%08x\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"=================================================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.promise_raid_conf*)* @g_raid_md_promise_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_md_promise_print(%struct.promise_raid_conf* %0) #0 {
  %2 = alloca %struct.promise_raid_conf*, align 8
  %3 = alloca i32, align 4
  store %struct.promise_raid_conf* %0, %struct.promise_raid_conf** %2, align 8
  %4 = load i32, i32* @g_raid_debug, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %190

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %10 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %13 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %14 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %13, i32 0, i32 28
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %18 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %17, i32 0, i32 28
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %22 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %21, i32 0, i32 28
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %26 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %25, i32 0, i32 28
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %30 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %29, i32 0, i32 28
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32 %20, i32 %24, i32 %28, i32 %32)
  %34 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %35 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %39 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %43 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %47 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %51 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %55 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %56)
  %58 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %59 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  %62 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %63 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %64)
  %66 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %67 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %68)
  %70 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %71 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %72)
  %74 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %75 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %76)
  %78 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %79 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %80)
  %82 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %83 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %84)
  %86 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %87 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %86, i32 0, i32 14
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %88)
  %90 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %91 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %90, i32 0, i32 27
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %92)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %141, %7
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @PROMISE_MAX_DISKS, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %144

99:                                               ; preds = %95
  %100 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %101 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %100, i32 0, i32 26
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %109 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %108, i32 0, i32 26
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %117 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %116, i32 0, i32 26
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %125 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %124, i32 0, i32 26
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %133 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %132, i32 0, i32 26
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i32 %107, i32 %115, i32 %123, i32 %131, i32 %139)
  br label %141

141:                                              ; preds = %99
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %95

144:                                              ; preds = %95
  %145 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %146 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %145, i32 0, i32 15
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8* %147)
  %149 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %150 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %149, i32 0, i32 16
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %151)
  %153 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %154 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %153, i32 0, i32 25
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 %155)
  %157 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %158 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %157, i32 0, i32 17
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i32 %159)
  %161 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %162 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %161, i32 0, i32 18
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i32 %163)
  %165 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %166 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %165, i32 0, i32 19
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i32 %167)
  %169 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %170 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %169, i32 0, i32 20
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 %171)
  %173 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %174 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %173, i32 0, i32 21
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i32 %175)
  %177 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %178 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %177, i32 0, i32 22
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i32 %179)
  %181 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %182 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %181, i32 0, i32 23
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 %183)
  %185 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %2, align 8
  %186 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %185, i32 0, i32 24
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i32 %187)
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0))
  br label %190

190:                                              ; preds = %144, %6
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
