; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_raid1_rebuild_some.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_raid1_rebuild_some.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { i32 }
%struct.g_raid_tr_raid1_object = type { i32, i32, %struct.bio, %struct.g_raid_subdisk* }
%struct.bio = type { i32, i64, %struct.g_raid_subdisk*, i32, i32, i32 }
%struct.g_raid_subdisk = type { i32, i64, i64 }

@TR_RAID1_F_DOING_SOME = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i32 0, align 4
@g_raid1_rebuild_slab = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@G_RAID_BIO_FLAG_SYNC = common dso_local global i32 0, align 4
@TR_RAID1_F_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*)* @g_raid_tr_raid1_rebuild_some to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_raid1_rebuild_some(%struct.g_raid_tr_object* %0) #0 {
  %2 = alloca %struct.g_raid_tr_object*, align 8
  %3 = alloca %struct.g_raid_tr_raid1_object*, align 8
  %4 = alloca %struct.g_raid_subdisk*, align 8
  %5 = alloca %struct.g_raid_subdisk*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %2, align 8
  %7 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %8 = bitcast %struct.g_raid_tr_object* %7 to %struct.g_raid_tr_raid1_object*
  store %struct.g_raid_tr_raid1_object* %8, %struct.g_raid_tr_raid1_object** %3, align 8
  %9 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %10 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TR_RAID1_F_DOING_SOME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %86

16:                                               ; preds = %1
  %17 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %18 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %17, i32 0, i32 3
  %19 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %18, align 8
  store %struct.g_raid_subdisk* %19, %struct.g_raid_subdisk** %4, align 8
  %20 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %21 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @G_RAID_SUBDISK_S_ACTIVE, align 4
  %24 = call %struct.g_raid_subdisk* @g_raid_get_subdisk(i32 %22, i32 %23)
  store %struct.g_raid_subdisk* %24, %struct.g_raid_subdisk** %5, align 8
  %25 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %26 = icmp eq %struct.g_raid_subdisk* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %29 = call i32 @g_raid_tr_raid1_rebuild_abort(%struct.g_raid_tr_object* %28)
  br label %86

30:                                               ; preds = %16
  %31 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %32 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %31, i32 0, i32 2
  store %struct.bio* %32, %struct.bio** %6, align 8
  %33 = load %struct.bio*, %struct.bio** %6, align 8
  %34 = call i32 @memset(%struct.bio* %33, i32 0, i32 40)
  %35 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %36 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.bio*, %struct.bio** %6, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @g_raid1_rebuild_slab, align 4
  %41 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %42 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %45 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = call i32 @MIN(i32 %40, i64 %47)
  %49 = load %struct.bio*, %struct.bio** %6, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %52 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bio*, %struct.bio** %6, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @BIO_READ, align 4
  %57 = load %struct.bio*, %struct.bio** %6, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @G_RAID_BIO_FLAG_SYNC, align 4
  %60 = load %struct.bio*, %struct.bio** %6, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %63 = load %struct.bio*, %struct.bio** %6, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 2
  store %struct.g_raid_subdisk* %62, %struct.g_raid_subdisk** %64, align 8
  %65 = load i32, i32* @TR_RAID1_F_DOING_SOME, align 4
  %66 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %67 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @TR_RAID1_F_LOCKED, align 4
  %71 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %3, align 8
  %72 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %76 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bio*, %struct.bio** %6, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.bio*, %struct.bio** %6, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.bio*, %struct.bio** %6, align 8
  %85 = call i32 @g_raid_lock_range(i32 %77, i64 %80, i32 %83, i32* null, %struct.bio* %84)
  br label %86

86:                                               ; preds = %30, %27, %15
  ret void
}

declare dso_local %struct.g_raid_subdisk* @g_raid_get_subdisk(i32, i32) #1

declare dso_local i32 @g_raid_tr_raid1_rebuild_abort(%struct.g_raid_tr_object*) #1

declare dso_local i32 @memset(%struct.bio*, i32, i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @g_raid_lock_range(i32, i64, i32, i32*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
