; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_concat.c_g_raid_tr_event_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_concat.c_g_raid_tr_event_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }
%struct.g_raid_subdisk = type { i32, i32 }
%struct.g_raid_tr_concat_object = type { i32, i32 }

@G_RAID_SUBDISK_S_NONE = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_FAILED = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Promote subdisk %s:%d from %s to ACTIVE.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_tr_object*, %struct.g_raid_subdisk*, i32)* @g_raid_tr_event_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_event_concat(%struct.g_raid_tr_object* %0, %struct.g_raid_subdisk* %1, i32 %2) #0 {
  %4 = alloca %struct.g_raid_tr_object*, align 8
  %5 = alloca %struct.g_raid_subdisk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_raid_tr_concat_object*, align 8
  %8 = alloca %struct.g_raid_softc*, align 8
  %9 = alloca %struct.g_raid_volume*, align 8
  %10 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %4, align 8
  store %struct.g_raid_subdisk* %1, %struct.g_raid_subdisk** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %12 = bitcast %struct.g_raid_tr_object* %11 to %struct.g_raid_tr_concat_object*
  store %struct.g_raid_tr_concat_object* %12, %struct.g_raid_tr_concat_object** %7, align 8
  %13 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %14 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %13, i32 0, i32 0
  %15 = load %struct.g_raid_volume*, %struct.g_raid_volume** %14, align 8
  store %struct.g_raid_volume* %15, %struct.g_raid_volume** %9, align 8
  %16 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %17 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %16, i32 0, i32 1
  %18 = load %struct.g_raid_softc*, %struct.g_raid_softc** %17, align 8
  store %struct.g_raid_softc* %18, %struct.g_raid_softc** %8, align 8
  %19 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %20 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @G_RAID_SUBDISK_S_NONE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @G_RAID_SUBDISK_S_FAILED, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @G_RAID_SUBDISK_S_ACTIVE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %35 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %36 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %39 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %42 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @g_raid_subdisk_state2str(i32 %43)
  %45 = call i32 @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %44)
  %46 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %47 = load i32, i32* @G_RAID_SUBDISK_S_ACTIVE, align 4
  %48 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %46, i32 %47)
  br label %49

49:                                               ; preds = %33, %29, %25, %3
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %52 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load %struct.g_raid_tr_concat_object*, %struct.g_raid_tr_concat_object** %7, align 8
  %57 = getelementptr inbounds %struct.g_raid_tr_concat_object, %struct.g_raid_tr_concat_object* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.g_raid_tr_concat_object*, %struct.g_raid_tr_concat_object** %7, align 8
  %62 = getelementptr inbounds %struct.g_raid_tr_concat_object, %struct.g_raid_tr_concat_object* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %67 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %68 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %69 = call i32 @g_raid_write_metadata(%struct.g_raid_softc* %66, %struct.g_raid_volume* %67, %struct.g_raid_subdisk* %68, i32* null)
  br label %70

70:                                               ; preds = %65, %60, %55, %49
  %71 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  %72 = call i32 @g_raid_tr_update_state_concat(%struct.g_raid_volume* %71)
  ret i32 0
}

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @g_raid_subdisk_state2str(i32) #1

declare dso_local i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk*, i32) #1

declare dso_local i32 @g_raid_write_metadata(%struct.g_raid_softc*, %struct.g_raid_volume*, %struct.g_raid_subdisk*, i32*) #1

declare dso_local i32 @g_raid_tr_update_state_concat(%struct.g_raid_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
