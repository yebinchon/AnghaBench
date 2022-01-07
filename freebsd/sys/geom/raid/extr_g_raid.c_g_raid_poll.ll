; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i64, i32, i32, i32, i32 }
%struct.g_raid_event = type { i32 }
%struct.bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@e_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_softc*)* @g_raid_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_poll(%struct.g_raid_softc* %0) #0 {
  %2 = alloca %struct.g_raid_softc*, align 8
  %3 = alloca %struct.g_raid_event*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %2, align 8
  %5 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %6 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %5, i32 0, i32 1
  %7 = call i32 @sx_xlock(i32* %6)
  %8 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %9 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %8, i32 0, i32 2
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %12 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %11, i32 0, i32 4
  %13 = call %struct.g_raid_event* @TAILQ_FIRST(i32* %12)
  store %struct.g_raid_event* %13, %struct.g_raid_event** %3, align 8
  %14 = load %struct.g_raid_event*, %struct.g_raid_event** %3, align 8
  %15 = icmp ne %struct.g_raid_event* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %18 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %17, i32 0, i32 4
  %19 = load %struct.g_raid_event*, %struct.g_raid_event** %3, align 8
  %20 = load i32, i32* @e_next, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* %18, %struct.g_raid_event* %19, i32 %20)
  %22 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %23 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %22, i32 0, i32 2
  %24 = call i32 @mtx_unlock(i32* %23)
  %25 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %26 = load %struct.g_raid_event*, %struct.g_raid_event** %3, align 8
  %27 = call i32 @g_raid_handle_event(%struct.g_raid_softc* %25, %struct.g_raid_event* %26)
  br label %60

28:                                               ; preds = %1
  %29 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %30 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %29, i32 0, i32 3
  %31 = call %struct.bio* @bioq_takefirst(i32* %30)
  store %struct.bio* %31, %struct.bio** %4, align 8
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = icmp ne %struct.bio* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %36 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %35, i32 0, i32 2
  %37 = call i32 @mtx_unlock(i32* %36)
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp eq %struct.TYPE_2__* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %49 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %42, %34
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = call i32 @g_raid_start_request(%struct.bio* %53)
  br label %58

55:                                               ; preds = %42
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = call i32 @g_raid_disk_done_request(%struct.bio* %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %28
  br label %60

60:                                               ; preds = %59, %16
  %61 = load %struct.g_raid_softc*, %struct.g_raid_softc** %2, align 8
  %62 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %61, i32 0, i32 1
  %63 = call i32 @sx_xunlock(i32* %62)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.g_raid_event* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_raid_event*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_raid_handle_event(%struct.g_raid_softc*, %struct.g_raid_event*) #1

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @g_raid_start_request(%struct.bio*) #1

declare dso_local i32 @g_raid_disk_done_request(%struct.bio*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
