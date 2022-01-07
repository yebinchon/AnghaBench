; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_candelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_candelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i32 }
%struct.bio = type { %struct.g_provider* }
%struct.g_provider = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@G_RAID_SUBDISK_S_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GEOM::candelete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_softc*, %struct.bio*)* @g_raid_candelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_candelete(%struct.g_raid_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca %struct.g_raid_volume*, align 8
  %7 = alloca %struct.g_raid_subdisk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  store %struct.g_provider* %12, %struct.g_provider** %5, align 8
  %13 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %14 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %13, i32 0, i32 0
  %15 = load %struct.g_raid_volume*, %struct.g_raid_volume** %14, align 8
  store %struct.g_raid_volume* %15, %struct.g_raid_volume** %6, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %44, %2
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %19 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %24 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %23, i32 0, i32 1
  %25 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %25, i64 %27
  store %struct.g_raid_subdisk* %28, %struct.g_raid_subdisk** %7, align 8
  %29 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %30 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @G_RAID_SUBDISK_S_NONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %44

35:                                               ; preds = %22
  %36 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %37 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %47

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %16

47:                                               ; preds = %42, %16
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %50 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = call i32 @g_handleattr(%struct.bio* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %9, i32 4)
  ret void
}

declare dso_local i32 @g_handleattr(%struct.bio*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
