; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_nvidia_meta_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_nvidia_meta_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i64 }
%struct.nvidia_raid_conf = type { i32, i64 }

@M_MD_NVIDIA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot write metadata to %s (error=%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, %struct.nvidia_raid_conf*)* @nvidia_meta_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_meta_write(%struct.g_consumer* %0, %struct.nvidia_raid_conf* %1) #0 {
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca %struct.nvidia_raid_conf*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %3, align 8
  store %struct.nvidia_raid_conf* %1, %struct.nvidia_raid_conf** %4, align 8
  %11 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 0
  %13 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  store %struct.g_provider* %13, %struct.g_provider** %5, align 8
  %14 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %4, align 8
  %15 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %4, align 8
  %17 = bitcast %struct.nvidia_raid_conf* %16 to i64*
  store i64* %17, i64** %10, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %30, %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %4, align 8
  %21 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i64*, i64** %10, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %10, align 8
  %27 = load i64, i64* %25, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %4, align 8
  %36 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %40 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @M_MD_NVIDIA, align 4
  %43 = load i32, i32* @M_WAITOK, align 4
  %44 = load i32, i32* @M_ZERO, align 4
  %45 = or i32 %43, %44
  %46 = call i8* @malloc(i32 %41, i32 %42, i32 %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %4, align 8
  %49 = call i32 @memcpy(i8* %47, %struct.nvidia_raid_conf* %48, i32 16)
  %50 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %51 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %52 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %55 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 2, %56
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %53, %58
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %62 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @g_write_data(%struct.g_consumer* %50, i64 %59, i8* %60, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %33
  %68 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %69 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %33
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* @M_MD_NVIDIA, align 4
  %76 = call i32 @free(i8* %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.nvidia_raid_conf*, i32) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, i8*, i32) #1

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
