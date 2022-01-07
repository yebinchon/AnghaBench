; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%d volumes are still open.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Array will be destroyed on last close.\00", align 1
@G_RAID_NODE_E_WAKE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"r:destroy\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_raid_destroy(%struct.g_raid_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @g_topology_assert_not()
  %9 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %10 = icmp eq %struct.g_raid_softc* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %3, align 4
  br label %70

13:                                               ; preds = %2
  %14 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %15 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %14, i32 0, i32 1
  %16 = load i32, i32* @SX_XLOCKED, align 4
  %17 = call i32 @sx_assert(i32* %15, i32 %16)
  %18 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %19 = call i32 @g_raid_nopens(%struct.g_raid_softc* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %45 [
    i32 128, label %24
    i32 130, label %32
    i32 129, label %41
  ]

24:                                               ; preds = %22
  %25 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %29 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %28, i32 0, i32 1
  %30 = call i32 @sx_xunlock(i32* %29)
  %31 = load i32, i32* @EBUSY, align 4
  store i32 %31, i32* %3, align 4
  br label %70

32:                                               ; preds = %22
  %33 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %34 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %36 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %35, i32 0, i32 0
  store i32 130, i32* %36, align 4
  %37 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %38 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %37, i32 0, i32 1
  %39 = call i32 @sx_xunlock(i32* %38)
  %40 = load i32, i32* @EBUSY, align 4
  store i32 %40, i32* %3, align 4
  br label %70

41:                                               ; preds = %22
  %42 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %22
  br label %46

46:                                               ; preds = %45, %13
  %47 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %48 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %47, i32 0, i32 0
  store i32 129, i32* %48, align 4
  %49 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %50 = load i32, i32* @G_RAID_NODE_E_WAKE, align 4
  %51 = call i32 @g_raid_event_send(%struct.g_raid_softc* %49, i32 %50, i32 0)
  %52 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %53 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %52, i32 0, i32 0
  %54 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %55 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %54, i32 0, i32 1
  %56 = load i32, i32* @PRIBIO, align 4
  %57 = load i32, i32* @PDROP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @hz, align 4
  %60 = mul nsw i32 %59, 3
  %61 = call i32 @sx_sleep(i32* %53, i32* %55, i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @EWOULDBLOCK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %46
  %66 = load i32, i32* @EBUSY, align 4
  br label %68

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %32, %24, %11
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @g_raid_nopens(%struct.g_raid_softc*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, ...) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_softc*, i32, i32) #1

declare dso_local i32 @sx_sleep(i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
