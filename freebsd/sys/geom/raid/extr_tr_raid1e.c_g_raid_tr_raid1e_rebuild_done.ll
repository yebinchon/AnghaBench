; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_rebuild_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_rebuild_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_raid1e_object = type { %struct.g_raid_subdisk*, i64, i32, i32, i32*, %struct.TYPE_2__ }
%struct.g_raid_subdisk = type { i32 }
%struct.TYPE_2__ = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32 }

@M_TR_RAID1E = common dso_local global i32 0, align 4
@TR_RAID1E_F_DOING_SOME = common dso_local global i32 0, align 4
@TR_RAID1E_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_raid1e_object*)* @g_raid_tr_raid1e_rebuild_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_raid1e_rebuild_done(%struct.g_raid_tr_raid1e_object* %0) #0 {
  %2 = alloca %struct.g_raid_tr_raid1e_object*, align 8
  %3 = alloca %struct.g_raid_volume*, align 8
  %4 = alloca %struct.g_raid_subdisk*, align 8
  store %struct.g_raid_tr_raid1e_object* %0, %struct.g_raid_tr_raid1e_object** %2, align 8
  %5 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %2, align 8
  %6 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  store %struct.g_raid_volume* %8, %struct.g_raid_volume** %3, align 8
  %9 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %2, align 8
  %10 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %9, i32 0, i32 0
  %11 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %10, align 8
  store %struct.g_raid_subdisk* %11, %struct.g_raid_subdisk** %4, align 8
  %12 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %13 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %16 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %17 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %18 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @g_raid_write_metadata(i32 %14, %struct.g_raid_volume* %15, %struct.g_raid_subdisk* %16, i32 %19)
  %21 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %2, align 8
  %22 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @M_TR_RAID1E, align 4
  %25 = call i32 @free(i32* %23, i32 %24)
  %26 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %2, align 8
  %27 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %26, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* @TR_RAID1E_F_DOING_SOME, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %2, align 8
  %31 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @TR_RAID1E_NONE, align 4
  %35 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %2, align 8
  %36 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %2, align 8
  %38 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %2, align 8
  %40 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %39, i32 0, i32 0
  store %struct.g_raid_subdisk* null, %struct.g_raid_subdisk** %40, align 8
  %41 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %42 = call i32 @g_raid_tr_update_state_raid1e(%struct.g_raid_volume* %41, i32* null)
  ret void
}

declare dso_local i32 @g_raid_write_metadata(i32, %struct.g_raid_volume*, %struct.g_raid_subdisk*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @g_raid_tr_update_state_raid1e(%struct.g_raid_volume*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
