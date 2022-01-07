; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_destroy_delayed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_destroy_delayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i32, i32, i32 }

@EV_CANCEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Destroying canceled.\00", align 1
@G_RAID3_DEVICE_FLAG_DESTROY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DESTROY flag set on %s.\00", align 1
@G_RAID3_DEVICE_FLAG_DESTROYING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"DESTROYING flag not set on %s.\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Destroying %s (delayed).\00", align 1
@G_RAID3_DESTROY_SOFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Cannot destroy %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @g_raid3_destroy_delayed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_destroy_delayed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid3_softc*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EV_CANCEL, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (i32, i8*, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %64

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.g_raid3_softc*
  store %struct.g_raid3_softc* %14, %struct.g_raid3_softc** %5, align 8
  %15 = call i32 (...) @g_topology_unlock()
  %16 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %17 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %16, i32 0, i32 1
  %18 = call i32 @sx_xlock(i32* %17)
  %19 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %20 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @G_RAID3_DEVICE_FLAG_DESTROY, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %27 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %25, i8* %30)
  %32 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %33 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @G_RAID3_DEVICE_FLAG_DESTROYING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %40 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @KASSERT(i32 %38, i8* %43)
  %45 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %46 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %50 = load i32, i32* @G_RAID3_DESTROY_SOFT, align 4
  %51 = call i32 @g_raid3_destroy(%struct.g_raid3_softc* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %12
  %55 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %56 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %60 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %59, i32 0, i32 1
  %61 = call i32 @sx_xunlock(i32* %60)
  br label %62

62:                                               ; preds = %54, %12
  %63 = call i32 (...) @g_topology_lock()
  br label %64

64:                                               ; preds = %62, %10
  ret void
}

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_raid3_destroy(%struct.g_raid3_softc*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
