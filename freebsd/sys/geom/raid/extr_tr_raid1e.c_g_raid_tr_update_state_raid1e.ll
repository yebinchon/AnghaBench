; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_update_state_raid1e.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_update_state_raid1e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i32, i64, i64, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }
%struct.g_raid_subdisk = type { i32 }
%struct.g_raid_tr_raid1e_object = type { i32, i64, i64 }

@TR_RAID1E_F_DOING_SOME = common dso_local global i32 0, align 4
@G_RAID_VOLUME_S_STOPPED = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_STARTING = common dso_local global i64 0, align 8
@N = common dso_local global i32 0, align 4
@G_RAID_VOLUME_E_UP = common dso_local global i32 0, align 4
@G_RAID_VOLUME_E_DOWN = common dso_local global i32 0, align 4
@G_RAID_EVENT_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_volume*, %struct.g_raid_subdisk*)* @g_raid_tr_update_state_raid1e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_update_state_raid1e(%struct.g_raid_volume* %0, %struct.g_raid_subdisk* %1) #0 {
  %3 = alloca %struct.g_raid_volume*, align 8
  %4 = alloca %struct.g_raid_subdisk*, align 8
  %5 = alloca %struct.g_raid_tr_raid1e_object*, align 8
  %6 = alloca %struct.g_raid_softc*, align 8
  %7 = alloca i64, align 8
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %3, align 8
  store %struct.g_raid_subdisk* %1, %struct.g_raid_subdisk** %4, align 8
  %8 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %9 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %8, i32 0, i32 3
  %10 = load %struct.g_raid_softc*, %struct.g_raid_softc** %9, align 8
  store %struct.g_raid_softc* %10, %struct.g_raid_softc** %6, align 8
  %11 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %12 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.g_raid_tr_raid1e_object*
  store %struct.g_raid_tr_raid1e_object* %14, %struct.g_raid_tr_raid1e_object** %5, align 8
  %15 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %5, align 8
  %16 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %5, align 8
  %21 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TR_RAID1E_F_DOING_SOME, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i64, i64* @G_RAID_VOLUME_S_STOPPED, align 8
  store i64 %27, i64* %7, align 8
  br label %50

28:                                               ; preds = %19, %2
  %29 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %5, align 8
  %30 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @G_RAID_VOLUME_S_STARTING, align 8
  store i64 %34, i64* %7, align 8
  br label %49

35:                                               ; preds = %28
  %36 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %37 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @N, align 4
  %40 = srem i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %44 = call i64 @g_raid_tr_update_state_raid1e_even(%struct.g_raid_volume* %43)
  store i64 %44, i64* %7, align 8
  br label %48

45:                                               ; preds = %35
  %46 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %47 = call i64 @g_raid_tr_update_state_raid1e_odd(%struct.g_raid_volume* %46)
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %33
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %53 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %50
  %57 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @G_RAID_VOLUME_S_ALIVE(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @G_RAID_VOLUME_E_UP, align 4
  br label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @G_RAID_VOLUME_E_DOWN, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load i32, i32* @G_RAID_EVENT_VOLUME, align 4
  %68 = call i32 @g_raid_event_send(%struct.g_raid_volume* %57, i32 %66, i32 %67)
  %69 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @g_raid_change_volume_state(%struct.g_raid_volume* %69, i64 %70)
  %72 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %5, align 8
  %73 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %65
  %77 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %5, align 8
  %78 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %83 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %84 = call i32 @g_raid_write_metadata(%struct.g_raid_softc* %82, %struct.g_raid_volume* %83, i32* null, i32* null)
  br label %85

85:                                               ; preds = %81, %76, %65
  br label %86

86:                                               ; preds = %85, %50
  %87 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %5, align 8
  %88 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %86
  %92 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %5, align 8
  %93 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %98 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %101 = call i32 @g_raid_tr_raid1e_maybe_rebuild(i64 %99, %struct.g_raid_subdisk* %100)
  br label %102

102:                                              ; preds = %96, %91, %86
  ret i32 0
}

declare dso_local i64 @g_raid_tr_update_state_raid1e_even(%struct.g_raid_volume*) #1

declare dso_local i64 @g_raid_tr_update_state_raid1e_odd(%struct.g_raid_volume*) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_volume*, i32, i32) #1

declare dso_local i64 @G_RAID_VOLUME_S_ALIVE(i64) #1

declare dso_local i32 @g_raid_change_volume_state(%struct.g_raid_volume*, i64) #1

declare dso_local i32 @g_raid_write_metadata(%struct.g_raid_softc*, %struct.g_raid_volume*, i32*, i32*) #1

declare dso_local i32 @g_raid_tr_raid1e_maybe_rebuild(i64, %struct.g_raid_subdisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
