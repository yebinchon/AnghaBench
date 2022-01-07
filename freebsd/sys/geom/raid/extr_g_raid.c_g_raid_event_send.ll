; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_event_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_event_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i32, i32, i32 }
%struct.g_raid_event = type { i32, i32, i32, i8* }
%struct.g_raid_volume = type { %struct.g_raid_softc* }
%struct.g_raid_disk = type { %struct.g_raid_softc* }
%struct.g_raid_subdisk = type { %struct.g_raid_softc* }

@G_RAID_EVENT_VOLUME = common dso_local global i32 0, align 4
@G_RAID_EVENT_DISK = common dso_local global i32 0, align 4
@G_RAID_EVENT_SUBDISK = common dso_local global i32 0, align 4
@M_RAID = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Sending event %p. Waking up %p.\00", align 1
@e_next = common dso_local global i32 0, align 4
@G_RAID_EVENT_WAIT = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Sleeping on %p.\00", align 1
@G_RAID_EVENT_DONE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"m:event\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_raid_event_send(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.g_raid_softc*, align 8
  %9 = alloca %struct.g_raid_event*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @G_RAID_EVENT_VOLUME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.g_raid_volume*
  %18 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %17, i32 0, i32 0
  %19 = load %struct.g_raid_softc*, %struct.g_raid_softc** %18, align 8
  store %struct.g_raid_softc* %19, %struct.g_raid_softc** %8, align 8
  br label %45

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @G_RAID_EVENT_DISK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.g_raid_disk*
  %28 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %27, i32 0, i32 0
  %29 = load %struct.g_raid_softc*, %struct.g_raid_softc** %28, align 8
  store %struct.g_raid_softc* %29, %struct.g_raid_softc** %8, align 8
  br label %44

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @G_RAID_EVENT_SUBDISK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to %struct.g_raid_subdisk*
  %38 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %37, i32 0, i32 0
  %39 = load %struct.g_raid_softc*, %struct.g_raid_softc** %38, align 8
  store %struct.g_raid_softc* %39, %struct.g_raid_softc** %8, align 8
  br label %43

40:                                               ; preds = %30
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to %struct.g_raid_softc*
  store %struct.g_raid_softc* %42, %struct.g_raid_softc** %8, align 8
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %25
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i32, i32* @M_RAID, align 4
  %47 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %48 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %47, i32 0, i32 0
  %49 = call i64 @sx_xlocked(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @M_WAITOK, align 4
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @M_NOWAIT, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = call %struct.g_raid_event* @malloc(i32 24, i32 %46, i32 %56)
  store %struct.g_raid_event* %57, %struct.g_raid_event** %9, align 8
  %58 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %59 = icmp eq %struct.g_raid_event* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %4, align 4
  br label %138

62:                                               ; preds = %55
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %65 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %68 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %71 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %73 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %75 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %76 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %77 = call i32 (i32, %struct.g_raid_softc*, i8*, %struct.g_raid_event*, ...) @G_RAID_DEBUG1(i32 4, %struct.g_raid_softc* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.g_raid_event* %75, %struct.g_raid_softc* %76)
  %78 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %79 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %78, i32 0, i32 1
  %80 = call i32 @mtx_lock(i32* %79)
  %81 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %82 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %81, i32 0, i32 2
  %83 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %84 = load i32, i32* @e_next, align 4
  %85 = call i32 @TAILQ_INSERT_TAIL(i32* %82, %struct.g_raid_event* %83, i32 %84)
  %86 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %87 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %86, i32 0, i32 1
  %88 = call i32 @mtx_unlock(i32* %87)
  %89 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %90 = call i32 @wakeup(%struct.g_raid_softc* %89)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @G_RAID_EVENT_WAIT, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %138

96:                                               ; preds = %62
  %97 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %98 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %97, i32 0, i32 0
  %99 = load i32, i32* @SX_XLOCKED, align 4
  %100 = call i32 @sx_assert(i32* %98, i32 %99)
  %101 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %102 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %103 = call i32 (i32, %struct.g_raid_softc*, i8*, %struct.g_raid_event*, ...) @G_RAID_DEBUG1(i32 4, %struct.g_raid_softc* %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.g_raid_event* %102)
  %104 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %105 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %104, i32 0, i32 0
  %106 = call i32 @sx_xunlock(i32* %105)
  br label %107

107:                                              ; preds = %114, %96
  %108 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %109 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @G_RAID_EVENT_DONE, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %107
  %115 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %116 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %115, i32 0, i32 1
  %117 = call i32 @mtx_lock(i32* %116)
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %120 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %121 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %120, i32 0, i32 1
  %122 = load i32, i32* @PRIBIO, align 4
  %123 = load i32, i32* @PDROP, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @hz, align 4
  %126 = mul nsw i32 %125, 5
  %127 = call i32 @MSLEEP(i32 %118, %struct.g_raid_event* %119, i32* %121, i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  br label %107

128:                                              ; preds = %107
  %129 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %130 = getelementptr inbounds %struct.g_raid_event, %struct.g_raid_event* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %10, align 4
  %132 = load %struct.g_raid_event*, %struct.g_raid_event** %9, align 8
  %133 = call i32 @g_raid_event_free(%struct.g_raid_event* %132)
  %134 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %135 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %134, i32 0, i32 0
  %136 = call i32 @sx_xlock(i32* %135)
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %128, %95, %60
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.g_raid_event* @malloc(i32, i32, i32) #1

declare dso_local i64 @sx_xlocked(i32*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, %struct.g_raid_event*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.g_raid_event*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(%struct.g_raid_softc*) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @MSLEEP(i32, %struct.g_raid_event*, i32*, i32, i8*, i32) #1

declare dso_local i32 @g_raid_event_free(%struct.g_raid_event*) #1

declare dso_local i32 @sx_xlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
