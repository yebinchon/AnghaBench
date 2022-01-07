; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_geom* }
%struct.g_geom = type { %struct.g_mountver_softc* }
%struct.g_mountver_softc = type { i64, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Request received.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Discarding request due to shutdown.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Queueing request.\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_mountver_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mountver_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_mountver_softc*, align 8
  %4 = alloca %struct.g_geom*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  store %struct.g_geom* %9, %struct.g_geom** %4, align 8
  %10 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %11 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %10, i32 0, i32 0
  %12 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %11, align 8
  store %struct.g_mountver_softc* %12, %struct.g_mountver_softc** %3, align 8
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = call i32 @G_MOUNTVER_LOGREQ(%struct.bio* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %3, align 8
  %16 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %3, align 8
  %21 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %20, i32 0, i32 2
  %22 = call i32 @TAILQ_EMPTY(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %3, align 8
  %26 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = call i32 @G_MOUNTVER_LOGREQ(%struct.bio* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = load i32, i32* @ENXIO, align 4
  %34 = call i32 @g_io_deliver(%struct.bio* %32, i32 %33)
  br label %53

35:                                               ; preds = %24
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = call i32 @G_MOUNTVER_LOGREQ(%struct.bio* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.bio*, %struct.bio** %2, align 8
  %39 = call i32 @g_mountver_queue(%struct.bio* %38)
  %40 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %3, align 8
  %41 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %46 = call i32 @g_mountver_send_queued(%struct.g_geom* %45)
  br label %47

47:                                               ; preds = %44, %35
  br label %53

48:                                               ; preds = %19
  %49 = load %struct.bio*, %struct.bio** %2, align 8
  %50 = call i32 @G_MOUNTVER_LOGREQ(%struct.bio* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.bio*, %struct.bio** %2, align 8
  %52 = call i32 @g_mountver_send(%struct.bio* %51)
  br label %53

53:                                               ; preds = %29, %48, %47
  ret void
}

declare dso_local i32 @G_MOUNTVER_LOGREQ(%struct.bio*, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @g_mountver_queue(%struct.bio*) #1

declare dso_local i32 @g_mountver_send_queued(%struct.g_geom*) #1

declare dso_local i32 @g_mountver_send(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
