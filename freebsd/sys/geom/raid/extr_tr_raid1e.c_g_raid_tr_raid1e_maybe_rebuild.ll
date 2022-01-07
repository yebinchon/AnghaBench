; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_maybe_rebuild.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_maybe_rebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32 }
%struct.g_raid_subdisk = type { i32 }
%struct.g_raid_tr_raid1e_object = type { i32, %struct.g_raid_subdisk*, i64 }

@G_RAID_SUBDISK_S_REBUILD = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_RESYNC = common dso_local global i32 0, align 4
@G_RAID_VOLUME_S_DEGRADED = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_NEW = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_STALE = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_UNINITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.g_raid_subdisk*)* @g_raid_tr_raid1e_maybe_rebuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_raid1e_maybe_rebuild(%struct.g_raid_tr_object* %0, %struct.g_raid_subdisk* %1) #0 {
  %3 = alloca %struct.g_raid_tr_object*, align 8
  %4 = alloca %struct.g_raid_subdisk*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca %struct.g_raid_tr_raid1e_object*, align 8
  %7 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %3, align 8
  store %struct.g_raid_subdisk* %1, %struct.g_raid_subdisk** %4, align 8
  %8 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %9 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %8, i32 0, i32 0
  %10 = load %struct.g_raid_volume*, %struct.g_raid_volume** %9, align 8
  store %struct.g_raid_volume* %10, %struct.g_raid_volume** %5, align 8
  %11 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %12 = bitcast %struct.g_raid_tr_object* %11 to %struct.g_raid_tr_raid1e_object*
  store %struct.g_raid_tr_raid1e_object* %12, %struct.g_raid_tr_raid1e_object** %6, align 8
  %13 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %6, align 8
  %14 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %78

18:                                               ; preds = %2
  %19 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %20 = load i32, i32* @G_RAID_SUBDISK_S_REBUILD, align 4
  %21 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %19, i32 %20)
  %22 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %23 = load i32, i32* @G_RAID_SUBDISK_S_RESYNC, align 4
  %24 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %22, i32 %23)
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %6, align 8
  %27 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %78 [
    i32 130, label %29
    i32 129, label %58
    i32 128, label %77
  ]

29:                                               ; preds = %18
  %30 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %31 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @G_RAID_VOLUME_S_DEGRADED, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %78

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %41 = load i32, i32* @G_RAID_SUBDISK_S_NEW, align 4
  %42 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %40, i32 %41)
  %43 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %44 = load i32, i32* @G_RAID_SUBDISK_S_STALE, align 4
  %45 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %43, i32 %44)
  %46 = add nsw i32 %42, %45
  %47 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %48 = load i32, i32* @G_RAID_SUBDISK_S_UNINITIALIZED, align 4
  %49 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %47, i32 %48)
  %50 = add nsw i32 %46, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %78

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %57 = call i32 @g_raid_tr_raid1e_rebuild_start(%struct.g_raid_tr_object* %56)
  br label %78

58:                                               ; preds = %18
  %59 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %60 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @G_RAID_VOLUME_S_DEGRADED, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %73, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %6, align 8
  %69 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %68, i32 0, i32 1
  %70 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %69, align 8
  %71 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %72 = icmp eq %struct.g_raid_subdisk* %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %64, %58
  %74 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %75 = call i32 @g_raid_tr_raid1e_rebuild_abort(%struct.g_raid_tr_object* %74)
  br label %76

76:                                               ; preds = %73, %67
  br label %78

77:                                               ; preds = %18
  br label %78

78:                                               ; preds = %17, %35, %53, %18, %77, %76, %55
  ret void
}

declare dso_local i32 @g_raid_nsubdisks(%struct.g_raid_volume*, i32) #1

declare dso_local i32 @g_raid_tr_raid1e_rebuild_start(%struct.g_raid_tr_object*) #1

declare dso_local i32 @g_raid_tr_raid1e_rebuild_abort(%struct.g_raid_tr_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
