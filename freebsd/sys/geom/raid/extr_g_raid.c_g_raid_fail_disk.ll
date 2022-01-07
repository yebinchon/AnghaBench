; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_fail_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_fail_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i64 }
%struct.g_raid_subdisk = type { %struct.g_raid_disk* }
%struct.g_raid_disk = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"Warning! Fail request to an absent disk!\00", align 1
@G_RAID_DISK_S_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Warning! Fail request to a disk in a wrong state (%s)!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_raid_fail_disk(%struct.g_raid_softc* %0, %struct.g_raid_subdisk* %1, %struct.g_raid_disk* %2) #0 {
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca %struct.g_raid_subdisk*, align 8
  %6 = alloca %struct.g_raid_disk*, align 8
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %4, align 8
  store %struct.g_raid_subdisk* %1, %struct.g_raid_subdisk** %5, align 8
  store %struct.g_raid_disk* %2, %struct.g_raid_disk** %6, align 8
  %7 = load %struct.g_raid_disk*, %struct.g_raid_disk** %6, align 8
  %8 = icmp eq %struct.g_raid_disk* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %11 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %10, i32 0, i32 0
  %12 = load %struct.g_raid_disk*, %struct.g_raid_disk** %11, align 8
  store %struct.g_raid_disk* %12, %struct.g_raid_disk** %6, align 8
  br label %13

13:                                               ; preds = %9, %3
  %14 = load %struct.g_raid_disk*, %struct.g_raid_disk** %6, align 8
  %15 = icmp eq %struct.g_raid_disk* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %18 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 0, %struct.g_raid_softc* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %44

19:                                               ; preds = %13
  %20 = load %struct.g_raid_disk*, %struct.g_raid_disk** %6, align 8
  %21 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @G_RAID_DISK_S_ACTIVE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %27 = load %struct.g_raid_disk*, %struct.g_raid_disk** %6, align 8
  %28 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @g_raid_disk_state2str(i64 %29)
  %31 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 0, %struct.g_raid_softc* %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %44

32:                                               ; preds = %19
  %33 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %34 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %39 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %42 = load %struct.g_raid_disk*, %struct.g_raid_disk** %6, align 8
  %43 = call i32 @G_RAID_MD_FAIL_DISK(i64 %40, %struct.g_raid_subdisk* %41, %struct.g_raid_disk* %42)
  br label %44

44:                                               ; preds = %16, %25, %37, %32
  ret void
}

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, ...) #1

declare dso_local i32 @g_raid_disk_state2str(i64) #1

declare dso_local i32 @G_RAID_MD_FAIL_DISK(i64, %struct.g_raid_subdisk*, %struct.g_raid_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
