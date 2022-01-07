; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_idle_raid1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_idle_raid1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { i32 }
%struct.g_raid_tr_raid1_object = type { i64, i32, i32 }

@g_raid1_rebuild_fair_io = common dso_local global i32 0, align 4
@g_raid1_rebuild_cluster_idle = common dso_local global i32 0, align 4
@TR_RAID1_REBUILD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_tr_object*)* @g_raid_tr_idle_raid1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_idle_raid1(%struct.g_raid_tr_object* %0) #0 {
  %2 = alloca %struct.g_raid_tr_object*, align 8
  %3 = alloca %struct.g_raid_tr_raid1_object*, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %2, align 8
  %4 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %5 = bitcast %struct.g_raid_tr_object* %4 to %struct.g_raid_tr_raid1_object*
  store %struct.g_raid_tr_raid1_object* %5, %struct.g_raid_tr_raid1_object** %3, align 8
  %6 = load i32, i32* @g_raid1_rebuild_fair_io, align 4
  %7 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %8 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @g_raid1_rebuild_cluster_idle, align 4
  %10 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %11 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %13 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TR_RAID1_REBUILD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %19 = call i32 @g_raid_tr_raid1_rebuild_some(%struct.g_raid_tr_object* %18)
  br label %20

20:                                               ; preds = %17, %1
  ret i32 0
}

declare dso_local i32 @g_raid_tr_raid1_rebuild_some(%struct.g_raid_tr_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
