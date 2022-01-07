; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_g_raid_md_sii_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_g_raid_md_sii_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii_raid_conf = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, i64 }

@g_raid_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"********* ATA SiI RAID Metadata *********\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"total_sectors       %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"product_id          0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"vendor_id           0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"version_minor       0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"version_major       0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"timestamp           0x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"strip_sectors       %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"disk_number         %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"type                0x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"raid0_disks         %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"raid0_ident         %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"raid1_disks         %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"raid1_ident         %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"rebuild_lba         %llu\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"generation          %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"disk_status         %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"raid_status         %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"raid_location       %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"disk_location       %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"auto_rebuild        %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"name                <%.16s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"checksum            0x%04x\0A\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"=================================================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii_raid_conf*)* @g_raid_md_sii_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_md_sii_print(%struct.sii_raid_conf* %0) #0 {
  %2 = alloca %struct.sii_raid_conf*, align 8
  store %struct.sii_raid_conf* %0, %struct.sii_raid_conf** %2, align 8
  %3 = load i32, i32* @g_raid_debug, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %124

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %9 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %8, i32 0, i32 21
  %10 = load i64, i64* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %10)
  %12 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %13 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %17 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %21 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %25 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %26)
  %28 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %29 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %34 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %39 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %44 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %49 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %54 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %32, i32 %37, i32 %42, i32 %47, i32 %52, i32 %57)
  %59 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %60 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %64 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %65)
  %67 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %68 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %69)
  %71 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %72 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %73)
  %75 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %76 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %77)
  %79 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %80 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %81)
  %83 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %84 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %85)
  %87 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %88 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %87, i32 0, i32 20
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i64 %89)
  %91 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %92 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %93)
  %95 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %96 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %97)
  %99 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %100 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %99, i32 0, i32 14
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %101)
  %103 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %104 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %103, i32 0, i32 15
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %105)
  %107 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %108 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %107, i32 0, i32 16
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %109)
  %111 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %112 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %111, i32 0, i32 17
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %113)
  %115 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %116 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %115, i32 0, i32 18
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i8* %117)
  %119 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  %120 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %119, i32 0, i32 19
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 %121)
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i64 0, i64 0))
  br label %124

124:                                              ; preds = %6, %5
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
