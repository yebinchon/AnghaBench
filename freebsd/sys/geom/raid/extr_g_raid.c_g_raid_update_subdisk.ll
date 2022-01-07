; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_update_subdisk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_update_subdisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_subdisk = type { i64, i32, %struct.g_raid_volume*, %struct.g_raid_softc* }
%struct.g_raid_volume = type { i64, i32 }
%struct.g_raid_softc = type { i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Event %s for subdisk %s:%d-%s.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_subdisk*, i32)* @g_raid_update_subdisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_update_subdisk(%struct.g_raid_subdisk* %0, i32 %1) #0 {
  %3 = alloca %struct.g_raid_subdisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid_softc*, align 8
  %6 = alloca %struct.g_raid_volume*, align 8
  store %struct.g_raid_subdisk* %0, %struct.g_raid_subdisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %8 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %7, i32 0, i32 3
  %9 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  store %struct.g_raid_softc* %9, %struct.g_raid_softc** %5, align 8
  %10 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %11 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %10, i32 0, i32 2
  %12 = load %struct.g_raid_volume*, %struct.g_raid_volume** %11, align 8
  store %struct.g_raid_volume* %12, %struct.g_raid_volume** %6, align 8
  %13 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %14 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %13, i32 0, i32 0
  %15 = load i32, i32* @SX_XLOCKED, align 4
  %16 = call i32 @sx_assert(i32* %14, i32 %15)
  %17 = load %struct.g_raid_softc*, %struct.g_raid_softc** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @g_raid_subdisk_event2str(i32 %18)
  %20 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %21 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %24 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %27 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %32 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @g_raid_get_diskname(i64 %33)
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi i8* [ %34, %30 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %35 ]
  %38 = call i32 @G_RAID_DEBUG1(i32 2, %struct.g_raid_softc* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i8* %37)
  %39 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %40 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %45 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @G_RAID_TR_EVENT(i64 %46, %struct.g_raid_subdisk* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %36
  ret i32 0
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @g_raid_subdisk_event2str(i32) #1

declare dso_local i8* @g_raid_get_diskname(i64) #1

declare dso_local i32 @G_RAID_TR_EVENT(i64, %struct.g_raid_subdisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
