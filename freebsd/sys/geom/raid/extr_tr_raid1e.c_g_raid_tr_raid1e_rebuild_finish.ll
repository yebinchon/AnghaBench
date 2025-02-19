; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_rebuild_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_rebuild_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.g_raid_tr_raid1e_object = type { %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Subdisk %s:%d-%s rebuild completed.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1
@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*)* @g_raid_tr_raid1e_rebuild_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_raid1e_rebuild_finish(%struct.g_raid_tr_object* %0) #0 {
  %2 = alloca %struct.g_raid_tr_object*, align 8
  %3 = alloca %struct.g_raid_tr_raid1e_object*, align 8
  %4 = alloca %struct.g_raid_subdisk*, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %2, align 8
  %5 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %6 = bitcast %struct.g_raid_tr_object* %5 to %struct.g_raid_tr_raid1e_object*
  store %struct.g_raid_tr_raid1e_object* %6, %struct.g_raid_tr_raid1e_object** %3, align 8
  %7 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %8 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %7, i32 0, i32 0
  %9 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  store %struct.g_raid_subdisk* %9, %struct.g_raid_subdisk** %4, align 8
  %10 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %11 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %16 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %21 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %24 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %29 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @g_raid_get_diskname(i64 %30)
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi i8* [ %31, %27 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %32 ]
  %35 = call i32 @G_RAID_DEBUG1(i32 0, i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i8* %34)
  %36 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %37 = load i32, i32* @G_RAID_SUBDISK_S_ACTIVE, align 4
  %38 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %36, i32 %37)
  %39 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %40 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %42 = call i32 @g_raid_tr_raid1e_rebuild_done(%struct.g_raid_tr_raid1e_object* %41)
  ret void
}

declare dso_local i32 @G_RAID_DEBUG1(i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i8* @g_raid_get_diskname(i64) #1

declare dso_local i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk*, i32) #1

declare dso_local i32 @g_raid_tr_raid1e_rebuild_done(%struct.g_raid_tr_raid1e_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
