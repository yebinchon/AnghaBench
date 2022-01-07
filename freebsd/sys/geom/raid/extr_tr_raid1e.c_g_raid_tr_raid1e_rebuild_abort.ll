; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_rebuild_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_rebuild_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32 }
%struct.g_raid_tr_raid1e_object = type { i32, i32, i32, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TR_RAID1E_F_DOING_SOME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Subdisk %s:%d-%s rebuild is aborting.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1
@TR_RAID1E_F_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Subdisk %s:%d-%s rebuild aborted.\00", align 1
@TR_RAID1E_F_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*)* @g_raid_tr_raid1e_rebuild_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_raid1e_rebuild_abort(%struct.g_raid_tr_object* %0) #0 {
  %2 = alloca %struct.g_raid_tr_object*, align 8
  %3 = alloca %struct.g_raid_tr_raid1e_object*, align 8
  %4 = alloca %struct.g_raid_subdisk*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %2, align 8
  %6 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %7 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %6, i32 0, i32 0
  %8 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  store %struct.g_raid_volume* %8, %struct.g_raid_volume** %5, align 8
  %9 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %10 = bitcast %struct.g_raid_tr_object* %9 to %struct.g_raid_tr_raid1e_object*
  store %struct.g_raid_tr_raid1e_object* %10, %struct.g_raid_tr_raid1e_object** %3, align 8
  %11 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %12 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %11, i32 0, i32 3
  %13 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %12, align 8
  store %struct.g_raid_subdisk* %13, %struct.g_raid_subdisk** %4, align 8
  %14 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %15 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TR_RAID1E_F_DOING_SOME, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %1
  %21 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %22 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %25 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %30 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %33 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %38 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @g_raid_get_diskname(i64 %39)
  br label %42

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i8* [ %40, %36 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %41 ]
  %44 = call i32 @G_RAID_DEBUG1(i32 1, i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i8* %43)
  %45 = load i32, i32* @TR_RAID1E_F_ABORT, align 4
  %46 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %47 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %107

50:                                               ; preds = %1
  %51 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %52 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %55 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %60 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %63 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %50
  %67 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %68 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @g_raid_get_diskname(i64 %69)
  br label %72

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi i8* [ %70, %66 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %71 ]
  %74 = call i32 @G_RAID_DEBUG1(i32 0, i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61, i8* %73)
  %75 = load i32, i32* @TR_RAID1E_F_ABORT, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %78 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %82 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TR_RAID1E_F_LOCKED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %72
  %88 = load i32, i32* @TR_RAID1E_F_LOCKED, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %91 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %95 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %94, i32 0, i32 0
  %96 = load %struct.g_raid_volume*, %struct.g_raid_volume** %95, align 8
  %97 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %98 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %101 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @g_raid_unlock_range(%struct.g_raid_volume* %96, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %87, %72
  %105 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %106 = call i32 @g_raid_tr_raid1e_rebuild_done(%struct.g_raid_tr_raid1e_object* %105)
  br label %107

107:                                              ; preds = %104, %42
  ret void
}

declare dso_local i32 @G_RAID_DEBUG1(i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i8* @g_raid_get_diskname(i64) #1

declare dso_local i32 @g_raid_unlock_range(%struct.g_raid_volume*, i32, i32) #1

declare dso_local i32 @g_raid_tr_raid1e_rebuild_done(%struct.g_raid_tr_raid1e_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
