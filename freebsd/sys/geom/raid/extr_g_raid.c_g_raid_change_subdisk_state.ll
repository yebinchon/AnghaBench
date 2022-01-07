; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_change_subdisk_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_change_subdisk_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_subdisk = type { i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Subdisk %s:%d-%s state changed from %s to %s.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %0, i32 %1) #0 {
  %3 = alloca %struct.g_raid_subdisk*, align 8
  %4 = alloca i32, align 4
  store %struct.g_raid_subdisk* %0, %struct.g_raid_subdisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %6 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %9 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %14 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %17 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %22 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i8* @g_raid_get_diskname(i64 %23)
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i8* [ %24, %20 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %25 ]
  %28 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %29 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @g_raid_subdisk_state2str(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @g_raid_subdisk_state2str(i32 %32)
  %34 = call i32 @G_RAID_DEBUG1(i32 0, i32 %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i8* %27, i32 %31, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %37 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %39 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %3, align 8
  %44 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @g_raid_report_disk_state(i64 %45)
  br label %47

47:                                               ; preds = %42, %26
  ret void
}

declare dso_local i32 @G_RAID_DEBUG1(i32, i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i8* @g_raid_get_diskname(i64) #1

declare dso_local i32 @g_raid_subdisk_state2str(i32) #1

declare dso_local i32 @g_raid_report_disk_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
