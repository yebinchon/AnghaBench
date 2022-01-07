; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_get_subdisk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_get_subdisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_subdisk = type { i32 }
%struct.g_raid_volume = type { i64, %struct.g_raid_subdisk*, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_raid_subdisk* @g_raid_get_subdisk(%struct.g_raid_volume* %0, i32 %1) #0 {
  %3 = alloca %struct.g_raid_subdisk*, align 8
  %4 = alloca %struct.g_raid_volume*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_raid_subdisk*, align 8
  %7 = alloca %struct.g_raid_softc*, align 8
  %8 = alloca i64, align 8
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %10 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %9, i32 0, i32 2
  %11 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  store %struct.g_raid_softc* %11, %struct.g_raid_softc** %7, align 8
  %12 = load %struct.g_raid_softc*, %struct.g_raid_softc** %7, align 8
  %13 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %12, i32 0, i32 0
  %14 = load i32, i32* @SX_LOCKED, align 4
  %15 = call i32 @sx_assert(i32* %13, i32 %14)
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %45, %2
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %19 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %24 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %23, i32 0, i32 1
  %25 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %25, i64 %26
  store %struct.g_raid_subdisk* %27, %struct.g_raid_subdisk** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %32 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @G_RAID_SUBDISK_S_NONE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30, %22
  %37 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %38 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %30
  %43 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  store %struct.g_raid_subdisk* %43, %struct.g_raid_subdisk** %3, align 8
  br label %49

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %16

48:                                               ; preds = %16
  store %struct.g_raid_subdisk* null, %struct.g_raid_subdisk** %3, align 8
  br label %49

49:                                               ; preds = %48, %42
  %50 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  ret %struct.g_raid_subdisk* %50
}

declare dso_local i32 @sx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
