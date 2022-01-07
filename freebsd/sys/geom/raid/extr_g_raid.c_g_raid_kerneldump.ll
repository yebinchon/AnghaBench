; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_kerneldump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_kerneldump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i32 }
%struct.bio = type { %struct.g_provider*, i64 }
%struct.g_provider = type { i32, %struct.g_raid_volume* }
%struct.g_raid_volume = type { i64, i32 }
%struct.g_kerneldump = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, %struct.g_raid_volume*, i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"g_raid_kerneldump(%s, %jd, %jd)\00", align 1
@g_raid_dump = common dso_local global i32 0, align 4
@DFLTPHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_softc*, %struct.bio*)* @g_raid_kerneldump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_kerneldump(%struct.g_raid_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_kerneldump*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_raid_volume*, align 8
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.g_kerneldump*
  store %struct.g_kerneldump* %11, %struct.g_kerneldump** %5, align 8
  %12 = load %struct.bio*, %struct.bio** %4, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load %struct.g_provider*, %struct.g_provider** %13, align 8
  store %struct.g_provider* %14, %struct.g_provider** %6, align 8
  %15 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %16 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %15, i32 0, i32 1
  %17 = load %struct.g_raid_volume*, %struct.g_raid_volume** %16, align 8
  store %struct.g_raid_volume* %17, %struct.g_raid_volume** %7, align 8
  %18 = load i32, i32* @G_T_TOPOLOGY, align 4
  %19 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %20 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %23 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %27 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @g_trace(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %29)
  %31 = load i32, i32* @g_raid_dump, align 4
  %32 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %33 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 8
  %35 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %36 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %37 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store %struct.g_raid_volume* %35, %struct.g_raid_volume** %38, align 8
  %39 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %40 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %43 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @DFLTPHYS, align 4
  %46 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %47 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %50 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %53 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %56 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %59 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %63 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %2
  %67 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  %68 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %71 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %75 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %66, %2
  %77 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %78 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %81 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  %83 = load %struct.bio*, %struct.bio** %4, align 8
  %84 = call i32 @g_io_deliver(%struct.bio* %83, i32 0)
  ret void
}

declare dso_local i32 @g_trace(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
