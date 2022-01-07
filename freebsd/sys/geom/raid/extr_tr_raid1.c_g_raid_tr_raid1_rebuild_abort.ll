; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_raid1_rebuild_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_raid1_rebuild_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32 }
%struct.g_raid_tr_raid1_object = type { i32, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TR_RAID1_F_DOING_SOME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Subdisk %s:%d-%s rebuild is aborting.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1
@TR_RAID1_F_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Subdisk %s:%d-%s rebuild aborted.\00", align 1
@TR_RAID1_F_LOCKED = common dso_local global i32 0, align 4
@g_raid1_rebuild_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*)* @g_raid_tr_raid1_rebuild_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_raid1_rebuild_abort(%struct.g_raid_tr_object* %0) #0 {
  %2 = alloca %struct.g_raid_tr_object*, align 8
  %3 = alloca %struct.g_raid_tr_raid1_object*, align 8
  %4 = alloca %struct.g_raid_subdisk*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %2, align 8
  %7 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %8 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %7, i32 0, i32 0
  %9 = load %struct.g_raid_volume*, %struct.g_raid_volume** %8, align 8
  store %struct.g_raid_volume* %9, %struct.g_raid_volume** %5, align 8
  %10 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %11 = bitcast %struct.g_raid_tr_object* %10 to %struct.g_raid_tr_raid1_object*
  store %struct.g_raid_tr_raid1_object* %11, %struct.g_raid_tr_raid1_object** %3, align 8
  %12 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %13 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %12, i32 0, i32 1
  %14 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %13, align 8
  store %struct.g_raid_subdisk* %14, %struct.g_raid_subdisk** %4, align 8
  %15 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %16 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TR_RAID1_F_DOING_SOME, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %1
  %22 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %23 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %26 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %31 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %34 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %21
  %38 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %39 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @g_raid_get_diskname(i64 %40)
  br label %43

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %37
  %44 = phi i8* [ %41, %37 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %42 ]
  %45 = call i32 @G_RAID_DEBUG1(i32 1, i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i8* %44)
  %46 = load i32, i32* @TR_RAID1_F_ABORT, align 4
  %47 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %48 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %115

51:                                               ; preds = %1
  %52 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %53 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %56 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %61 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %64 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %51
  %68 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %69 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @g_raid_get_diskname(i64 %70)
  br label %73

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72, %67
  %74 = phi i8* [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %72 ]
  %75 = call i32 @G_RAID_DEBUG1(i32 0, i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62, i8* %74)
  %76 = load i32, i32* @TR_RAID1_F_ABORT, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %79 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %83 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TR_RAID1_F_LOCKED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %73
  %89 = load i32, i32* @TR_RAID1_F_LOCKED, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %92 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* @g_raid1_rebuild_slab, align 4
  %96 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %97 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %100 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  %103 = call i32 @MIN(i32 %95, i64 %102)
  store i32 %103, i32* %6, align 4
  %104 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %105 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %104, i32 0, i32 0
  %106 = load %struct.g_raid_volume*, %struct.g_raid_volume** %105, align 8
  %107 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %108 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @g_raid_unlock_range(%struct.g_raid_volume* %106, i64 %109, i32 %110)
  br label %112

112:                                              ; preds = %88, %73
  %113 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %114 = call i32 @g_raid_tr_raid1_rebuild_done(%struct.g_raid_tr_raid1_object* %113)
  br label %115

115:                                              ; preds = %112, %43
  ret void
}

declare dso_local i32 @G_RAID_DEBUG1(i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i8* @g_raid_get_diskname(i64) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @g_raid_unlock_range(%struct.g_raid_volume*, i64, i32) #1

declare dso_local i32 @g_raid_tr_raid1_rebuild_done(%struct.g_raid_tr_raid1_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
