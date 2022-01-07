; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_nvidia_meta_erase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_nvidia_meta_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i64 }

@M_MD_NVIDIA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot erase metadata on %s (error=%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*)* @nvidia_meta_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_meta_erase(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_provider*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %6 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %7 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %6, i32 0, i32 0
  %8 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  store %struct.g_provider* %8, %struct.g_provider** %3, align 8
  %9 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %10 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @M_MD_NVIDIA, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @malloc(i32 %11, i32 %12, i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %18 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %22 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 2, %23
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %20, %25
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @g_write_data(%struct.g_consumer* %17, i64 %26, i8* %27, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %36 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %1
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* @M_MD_NVIDIA, align 4
  %43 = call i32 @free(i8* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, i8*, i32) #1

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
