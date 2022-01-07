; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i64, i32, i32, i64, %struct.TYPE_2__*, %struct.g_raid_softc* }
%struct.TYPE_2__ = type { i64 }
%struct.g_raid_softc = type { i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@g_raid_clean_time = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@g_raid_shutdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Volume %s marked as clean.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_volume*, i32)* @g_raid_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_clean(%struct.g_raid_volume* %0, i32 %1) #0 {
  %3 = alloca %struct.g_raid_volume*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %8 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %7, i32 0, i32 5
  %9 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  store %struct.g_raid_softc* %9, %struct.g_raid_softc** %5, align 8
  %10 = call i32 (...) @g_topology_assert_not()
  %11 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %12 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %11, i32 0, i32 0
  %13 = load i32, i32* @SX_XLOCKED, align 4
  %14 = call i32 @sx_assert(i32* %12, i32 %13)
  %15 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %16 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %22 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %70

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %34 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %39 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %37, %26
  %45 = load i32, i32* @g_raid_clean_time, align 4
  %46 = load i32, i32* @time_uptime, align 4
  %47 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %48 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  %51 = sub nsw i32 %45, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @g_raid_shutdown, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %70

58:                                               ; preds = %54, %44
  br label %59

59:                                               ; preds = %58, %37, %32, %29
  %60 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %61 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %63 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %64 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %68 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %69 = call i32 @g_raid_write_metadata(%struct.g_raid_softc* %67, %struct.g_raid_volume* %68, i32* null, i32* null)
  br label %70

70:                                               ; preds = %59, %57, %25, %19
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32) #1

declare dso_local i32 @g_raid_write_metadata(%struct.g_raid_softc*, %struct.g_raid_volume*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
