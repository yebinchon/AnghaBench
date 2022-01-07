; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid0.c_g_raid_tr_update_state_raid0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid0.c_g_raid_tr_update_state_raid0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i32, i64, i64, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }
%struct.g_raid_tr_raid0_object = type { i64, i64 }

@G_RAID_VOLUME_S_STOPPED = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_STARTING = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_FAILED = common dso_local global i32 0, align 4
@G_RAID_VOLUME_S_OPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_SUBOPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_BROKEN = common dso_local global i64 0, align 8
@G_RAID_VOLUME_E_UP = common dso_local global i32 0, align 4
@G_RAID_VOLUME_E_DOWN = common dso_local global i32 0, align 4
@G_RAID_EVENT_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_volume*)* @g_raid_tr_update_state_raid0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_update_state_raid0(%struct.g_raid_volume* %0) #0 {
  %2 = alloca %struct.g_raid_volume*, align 8
  %3 = alloca %struct.g_raid_tr_raid0_object*, align 8
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %2, align 8
  %8 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %9 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %8, i32 0, i32 3
  %10 = load %struct.g_raid_softc*, %struct.g_raid_softc** %9, align 8
  store %struct.g_raid_softc* %10, %struct.g_raid_softc** %4, align 8
  %11 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %12 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.g_raid_tr_raid0_object*
  store %struct.g_raid_tr_raid0_object* %14, %struct.g_raid_tr_raid0_object** %3, align 8
  %15 = load %struct.g_raid_tr_raid0_object*, %struct.g_raid_tr_raid0_object** %3, align 8
  %16 = getelementptr inbounds %struct.g_raid_tr_raid0_object, %struct.g_raid_tr_raid0_object* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* @G_RAID_VOLUME_S_STOPPED, align 8
  store i64 %20, i64* %5, align 8
  br label %54

21:                                               ; preds = %1
  %22 = load %struct.g_raid_tr_raid0_object*, %struct.g_raid_tr_raid0_object** %3, align 8
  %23 = getelementptr inbounds %struct.g_raid_tr_raid0_object, %struct.g_raid_tr_raid0_object* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @G_RAID_VOLUME_S_STARTING, align 8
  store i64 %27, i64* %5, align 8
  br label %53

28:                                               ; preds = %21
  %29 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %30 = load i32, i32* @G_RAID_SUBDISK_S_ACTIVE, align 4
  %31 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %33 = load i32, i32* @G_RAID_SUBDISK_S_FAILED, align 4
  %34 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %39 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %28
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i64, i64* @G_RAID_VOLUME_S_OPTIMAL, align 8
  store i64 %46, i64* %5, align 8
  br label %49

47:                                               ; preds = %42
  %48 = load i64, i64* @G_RAID_VOLUME_S_SUBOPTIMAL, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %47, %45
  br label %52

50:                                               ; preds = %28
  %51 = load i64, i64* @G_RAID_VOLUME_S_BROKEN, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53, %19
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %57 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %54
  %61 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @G_RAID_VOLUME_S_ALIVE(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @G_RAID_VOLUME_E_UP, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @G_RAID_VOLUME_E_DOWN, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load i32, i32* @G_RAID_EVENT_VOLUME, align 4
  %72 = call i32 @g_raid_event_send(%struct.g_raid_volume* %61, i32 %70, i32 %71)
  %73 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @g_raid_change_volume_state(%struct.g_raid_volume* %73, i64 %74)
  %76 = load %struct.g_raid_tr_raid0_object*, %struct.g_raid_tr_raid0_object** %3, align 8
  %77 = getelementptr inbounds %struct.g_raid_tr_raid0_object, %struct.g_raid_tr_raid0_object* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %69
  %81 = load %struct.g_raid_tr_raid0_object*, %struct.g_raid_tr_raid0_object** %3, align 8
  %82 = getelementptr inbounds %struct.g_raid_tr_raid0_object, %struct.g_raid_tr_raid0_object* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %87 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %88 = call i32 @g_raid_write_metadata(%struct.g_raid_softc* %86, %struct.g_raid_volume* %87, i32* null, i32* null)
  br label %89

89:                                               ; preds = %85, %80, %69
  br label %90

90:                                               ; preds = %89, %54
  ret i32 0
}

declare dso_local i32 @g_raid_nsubdisks(%struct.g_raid_volume*, i32) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_volume*, i32, i32) #1

declare dso_local i64 @G_RAID_VOLUME_S_ALIVE(i64) #1

declare dso_local i32 @g_raid_change_volume_state(%struct.g_raid_volume*, i64) #1

declare dso_local i32 @g_raid_write_metadata(%struct.g_raid_softc*, %struct.g_raid_volume*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
