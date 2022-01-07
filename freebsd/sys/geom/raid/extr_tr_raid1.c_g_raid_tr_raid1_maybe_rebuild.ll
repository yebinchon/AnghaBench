; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_raid1_maybe_rebuild.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_raid1_maybe_rebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32 }
%struct.g_raid_subdisk = type { i32 }
%struct.g_raid_tr_raid1_object = type { i32, %struct.g_raid_subdisk*, i64 }

@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_REBUILD = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_RESYNC = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_NEW = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_STALE = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_UNINITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.g_raid_subdisk*)* @g_raid_tr_raid1_maybe_rebuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_raid1_maybe_rebuild(%struct.g_raid_tr_object* %0, %struct.g_raid_subdisk* %1) #0 {
  %3 = alloca %struct.g_raid_tr_object*, align 8
  %4 = alloca %struct.g_raid_subdisk*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca %struct.g_raid_tr_raid1_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %3, align 8
  store %struct.g_raid_subdisk* %1, %struct.g_raid_subdisk** %4, align 8
  %9 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %10 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %9, i32 0, i32 0
  %11 = load %struct.g_raid_volume*, %struct.g_raid_volume** %10, align 8
  store %struct.g_raid_volume* %11, %struct.g_raid_volume** %5, align 8
  %12 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %13 = bitcast %struct.g_raid_tr_object* %12 to %struct.g_raid_tr_raid1_object*
  store %struct.g_raid_tr_raid1_object* %13, %struct.g_raid_tr_raid1_object** %6, align 8
  %14 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %6, align 8
  %15 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %76

19:                                               ; preds = %2
  %20 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %21 = load i32, i32* @G_RAID_SUBDISK_S_ACTIVE, align 4
  %22 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %24 = load i32, i32* @G_RAID_SUBDISK_S_REBUILD, align 4
  %25 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %23, i32 %24)
  %26 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %27 = load i32, i32* @G_RAID_SUBDISK_S_RESYNC, align 4
  %28 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %26, i32 %27)
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %6, align 8
  %31 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %76 [
    i32 130, label %33
    i32 129, label %59
    i32 128, label %75
  ]

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %76

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %42 = load i32, i32* @G_RAID_SUBDISK_S_NEW, align 4
  %43 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %41, i32 %42)
  %44 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %45 = load i32, i32* @G_RAID_SUBDISK_S_STALE, align 4
  %46 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %44, i32 %45)
  %47 = add nsw i32 %43, %46
  %48 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %49 = load i32, i32* @G_RAID_SUBDISK_S_UNINITIALIZED, align 4
  %50 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %48, i32 %49)
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %76

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %37
  %57 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %58 = call i32 @g_raid_tr_raid1_rebuild_start(%struct.g_raid_tr_object* %57)
  br label %76

59:                                               ; preds = %19
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %6, align 8
  %67 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %66, i32 0, i32 1
  %68 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %67, align 8
  %69 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %70 = icmp eq %struct.g_raid_subdisk* %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65, %62, %59
  %72 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %73 = call i32 @g_raid_tr_raid1_rebuild_abort(%struct.g_raid_tr_object* %72)
  br label %74

74:                                               ; preds = %71, %65
  br label %76

75:                                               ; preds = %19
  br label %76

76:                                               ; preds = %18, %36, %54, %19, %75, %74, %56
  ret void
}

declare dso_local i32 @g_raid_nsubdisks(%struct.g_raid_volume*, i32) #1

declare dso_local i32 @g_raid_tr_raid1_rebuild_start(%struct.g_raid_tr_object*) #1

declare dso_local i32 @g_raid_tr_raid1_rebuild_abort(%struct.g_raid_tr_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
