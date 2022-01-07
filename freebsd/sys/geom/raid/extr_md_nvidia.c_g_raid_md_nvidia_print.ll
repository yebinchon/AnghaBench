; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_g_raid_md_nvidia_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_g_raid_md_nvidia_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_raid_conf = type { i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@g_raid_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"********* ATA NVIDIA RAID Metadata *********\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"nvidia_id           <%.8s>\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"config_size         %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"checksum            0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"version             0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"disk_number         %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"dummy_0             0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"total_sectors       %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"sector_size         %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"name                <%.16s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"revision            0x%02x%02x%02x%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"disk_status         0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"magic_0             0x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"volume_id           0x%016jx%016jx\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"state               0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"array_width         %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"total_disks         %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"orig_array_width    %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"type                0x%04x\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"dummy_3             0x%04x\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"strip_sectors       %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"strip_bytes         %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"strip_shift         %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"strip_mask          0x%08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"stripe_sectors      %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"stripe_bytes        %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"rebuild_lba         %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"orig_type           0x%04x\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"orig_total_sectors  %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"status              0x%08x\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"=================================================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvidia_raid_conf*)* @g_raid_md_nvidia_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_md_nvidia_print(%struct.nvidia_raid_conf* %0) #0 {
  %2 = alloca %struct.nvidia_raid_conf*, align 8
  store %struct.nvidia_raid_conf* %0, %struct.nvidia_raid_conf** %2, align 8
  %3 = load i32, i32* @g_raid_debug, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %149

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %9 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %13 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %17 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %21 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %25 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %26)
  %28 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %29 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %30)
  %32 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %33 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %34)
  %36 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %37 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %38)
  %40 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %41 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %40, i32 0, i32 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %42)
  %44 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %45 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %44, i32 0, i32 9
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %50 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %49, i32 0, i32 9
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %55 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %54, i32 0, i32 9
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %60 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %59, i32 0, i32 9
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %48, i32 %53, i32 %58, i32 %63)
  %65 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %66 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %67)
  %69 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %70 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %71)
  %73 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %74 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %73, i32 0, i32 28
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %79 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %78, i32 0, i32 28
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %77, i32 %82)
  %84 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %85 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %86)
  %88 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %89 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %90)
  %92 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %93 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %92, i32 0, i32 14
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %94)
  %96 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %97 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %96, i32 0, i32 15
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %98)
  %100 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %101 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %100, i32 0, i32 16
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %102)
  %104 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %105 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %104, i32 0, i32 17
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %106)
  %108 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %109 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %108, i32 0, i32 18
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %110)
  %112 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %113 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %112, i32 0, i32 19
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %114)
  %116 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %117 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %116, i32 0, i32 20
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 %118)
  %120 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %121 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %120, i32 0, i32 21
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i32 %122)
  %124 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %125 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %124, i32 0, i32 22
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i32 %126)
  %128 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %129 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %128, i32 0, i32 23
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 %130)
  %132 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %133 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %132, i32 0, i32 24
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 %134)
  %136 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %137 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %136, i32 0, i32 25
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i32 %138)
  %140 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %141 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %140, i32 0, i32 26
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32 %142)
  %144 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %145 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %144, i32 0, i32 27
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 %146)
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0))
  br label %149

149:                                              ; preds = %6, %5
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
