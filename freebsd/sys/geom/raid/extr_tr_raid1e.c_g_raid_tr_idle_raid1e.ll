; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_idle_raid1e.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_idle_raid1e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32, i32 }
%struct.g_raid_tr_raid1e_object = type { i64, i32, i32 }

@g_raid1e_rebuild_fair_io = common dso_local global i32 0, align 4
@g_raid1e_rebuild_cluster_idle = common dso_local global i32 0, align 4
@N = common dso_local global i32 0, align 4
@g_raid1e_rebuild_slab = common dso_local global i32 0, align 4
@TR_RAID1E_REBUILD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_tr_object*)* @g_raid_tr_idle_raid1e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_idle_raid1e(%struct.g_raid_tr_object* %0) #0 {
  %2 = alloca %struct.g_raid_tr_object*, align 8
  %3 = alloca %struct.g_raid_tr_raid1e_object*, align 8
  %4 = alloca %struct.g_raid_volume*, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %2, align 8
  %5 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %6 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %5, i32 0, i32 0
  %7 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  store %struct.g_raid_volume* %7, %struct.g_raid_volume** %4, align 8
  %8 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %9 = bitcast %struct.g_raid_tr_object* %8 to %struct.g_raid_tr_raid1e_object*
  store %struct.g_raid_tr_raid1e_object* %9, %struct.g_raid_tr_raid1e_object** %3, align 8
  %10 = load i32, i32* @g_raid1e_rebuild_fair_io, align 4
  %11 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %12 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @g_raid1e_rebuild_cluster_idle, align 4
  %14 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %15 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %17 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @N, align 4
  %20 = srem i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %24 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @g_raid1e_rebuild_slab, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i32, i32* @g_raid1e_rebuild_slab, align 4
  %30 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %31 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %35 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %38 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %28, %22, %1
  %42 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %43 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TR_RAID1E_REBUILD, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %49 = call i32 @g_raid_tr_raid1e_rebuild_some(%struct.g_raid_tr_object* %48)
  br label %50

50:                                               ; preds = %47, %41
  ret i32 0
}

declare dso_local i32 @g_raid_tr_raid1e_rebuild_some(%struct.g_raid_tr_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
