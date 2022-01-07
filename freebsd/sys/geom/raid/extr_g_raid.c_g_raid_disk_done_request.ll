; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_disk_done_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_disk_done_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_2__*, %struct.g_raid_subdisk*, i32 }
%struct.TYPE_2__ = type { %struct.g_raid_disk*, i32 }
%struct.g_raid_disk = type { i32 }
%struct.g_raid_subdisk = type { i64, %struct.g_raid_volume*, %struct.g_raid_softc* }
%struct.g_raid_volume = type { i32 }
%struct.g_raid_softc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Disk request done: %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_raid_disk_done_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_disk_done_request(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.g_raid_disk*, align 8
  %5 = alloca %struct.g_raid_subdisk*, align 8
  %6 = alloca %struct.g_raid_volume*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = call i32 (...) @g_topology_assert_not()
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @G_RAID_LOGREQ(i32 3, %struct.bio* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 2
  %15 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %14, align 8
  store %struct.g_raid_subdisk* %15, %struct.g_raid_subdisk** %5, align 8
  %16 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %17 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %16, i32 0, i32 2
  %18 = load %struct.g_raid_softc*, %struct.g_raid_softc** %17, align 8
  store %struct.g_raid_softc* %18, %struct.g_raid_softc** %3, align 8
  %19 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %20 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %19, i32 0, i32 1
  %21 = load %struct.g_raid_volume*, %struct.g_raid_volume** %20, align 8
  store %struct.g_raid_volume* %21, %struct.g_raid_volume** %6, align 8
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %1
  %27 = load %struct.bio*, %struct.bio** %2, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.g_raid_disk*, %struct.g_raid_disk** %36, align 8
  store %struct.g_raid_disk* %37, %struct.g_raid_disk** %4, align 8
  %38 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %39 = icmp eq %struct.g_raid_disk* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %42 = load %struct.bio*, %struct.bio** %2, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @g_raid_kill_consumer(%struct.g_raid_softc* %41, %struct.TYPE_2__* %44)
  br label %46

46:                                               ; preds = %40, %26
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %49 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.bio*, %struct.bio** %2, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 8
  %57 = load %struct.g_raid_volume*, %struct.g_raid_volume** %6, align 8
  %58 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %61 = load %struct.bio*, %struct.bio** %2, align 8
  %62 = call i32 @G_RAID_TR_IODONE(i32 %59, %struct.g_raid_subdisk* %60, %struct.bio* %61)
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @G_RAID_LOGREQ(i32, %struct.bio*, i8*, i32) #1

declare dso_local i32 @g_raid_kill_consumer(%struct.g_raid_softc*, %struct.TYPE_2__*) #1

declare dso_local i32 @G_RAID_TR_IODONE(i32, %struct.g_raid_subdisk*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
