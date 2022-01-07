; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_handle_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i32 }
%struct.g_raid_event = type { i32, i64, i32, i32 }

@G_RAID_EVENT_VOLUME = common dso_local global i32 0, align 4
@G_RAID_EVENT_DISK = common dso_local global i32 0, align 4
@G_RAID_EVENT_SUBDISK = common dso_local global i32 0, align 4
@G_RAID_EVENT_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error cannot be handled.\00", align 1
@G_RAID_EVENT_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Waking up %p.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_softc*, %struct.g_raid_event*)* @g_raid_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_handle_event(%struct.g_raid_softc* %0, %struct.g_raid_event* %1) #0 {
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.g_raid_event*, align 8
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %3, align 8
  store %struct.g_raid_event* %1, %struct.g_raid_event** %4, align 8
  %5 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %6 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @G_RAID_EVENT_VOLUME, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %13 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %16 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @g_raid_update_volume(i32 %14, i32 %17)
  %19 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %20 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  br label %67

21:                                               ; preds = %2
  %22 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %23 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @G_RAID_EVENT_DISK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %30 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %33 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @g_raid_update_disk(i32 %31, i32 %34)
  %36 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %37 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %66

38:                                               ; preds = %21
  %39 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %40 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @G_RAID_EVENT_SUBDISK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %47 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %50 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @g_raid_update_subdisk(i32 %48, i32 %51)
  %53 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %54 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %65

55:                                               ; preds = %38
  %56 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %57 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %60 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @g_raid_update_node(i32 %58, i32 %61)
  %63 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %64 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %55, %45
  br label %66

66:                                               ; preds = %65, %28
  br label %67

67:                                               ; preds = %66, %11
  %68 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %69 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @G_RAID_EVENT_WAIT, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %76 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @KASSERT(i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %82 = call i32 @g_raid_event_free(%struct.g_raid_event* %81)
  br label %100

83:                                               ; preds = %67
  %84 = load i32, i32* @G_RAID_EVENT_DONE, align 4
  %85 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %86 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %90 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %91 = call i32 @G_RAID_DEBUG1(i32 4, %struct.g_raid_softc* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.g_raid_event* %90)
  %92 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %93 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %92, i32 0, i32 0
  %94 = call i32 @mtx_lock(i32* %93)
  %95 = load %struct.g_raid_event*, %struct.g_raid_event** %4, align 8
  %96 = call i32 @wakeup(%struct.g_raid_event* %95)
  %97 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %98 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %97, i32 0, i32 0
  %99 = call i32 @mtx_unlock(i32* %98)
  br label %100

100:                                              ; preds = %83, %74
  ret void
}

declare dso_local i64 @g_raid_update_volume(i32, i32) #1

declare dso_local i64 @g_raid_update_disk(i32, i32) #1

declare dso_local i64 @g_raid_update_subdisk(i32, i32) #1

declare dso_local i64 @g_raid_update_node(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_raid_event_free(%struct.g_raid_event*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, %struct.g_raid_event*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.g_raid_event*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
