; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_iostart_raid1_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_iostart_raid1_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32 }
%struct.g_raid_subdisk = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"No active disks in volume %s.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.bio*)* @g_raid_tr_iostart_raid1_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_iostart_raid1_read(%struct.g_raid_tr_object* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_raid_tr_object*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_raid_subdisk*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %8 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = call %struct.g_raid_subdisk* @g_raid_tr_raid1_select_read_disk(%struct.TYPE_2__* %9, %struct.bio* %10, i32 0)
  store %struct.g_raid_subdisk* %11, %struct.g_raid_subdisk** %5, align 8
  %12 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %13 = icmp ne %struct.g_raid_subdisk* %12, null
  %14 = zext i1 %13 to i32
  %15 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %16 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %14, i8* %21)
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = call %struct.bio* @g_clone_bio(%struct.bio* %23)
  store %struct.bio* %24, %struct.bio** %6, align 8
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = icmp eq %struct.bio* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @g_raid_iodone(%struct.bio* %28, i32 %29)
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %33 = load %struct.bio*, %struct.bio** %6, align 8
  %34 = call i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk* %32, %struct.bio* %33)
  br label %35

35:                                               ; preds = %31, %27
  ret void
}

declare dso_local %struct.g_raid_subdisk* @g_raid_tr_raid1_select_read_disk(%struct.TYPE_2__*, %struct.bio*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_raid_iodone(%struct.bio*, i32) #1

declare dso_local i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
