; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/balloon/extr_virtio_balloon.c_vtballoon_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/balloon/extr_virtio_balloon.c_vtballoon_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtballoon_softc = type { i32*, i32*, i32 }

@VTBALLOON_FLAG_DETACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vtbdth\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtballoon_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtballoon_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtballoon_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.vtballoon_softc* @device_get_softc(i32 %4)
  store %struct.vtballoon_softc* %5, %struct.vtballoon_softc** %3, align 8
  %6 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %12 = call i32 @VTBALLOON_LOCK(%struct.vtballoon_softc* %11)
  %13 = load i32, i32* @VTBALLOON_FLAG_DETACH, align 4
  %14 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %15 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %19 = call i32 @wakeup_one(%struct.vtballoon_softc* %18)
  %20 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %24 = call i32 @VTBALLOON_MTX(%struct.vtballoon_softc* %23)
  %25 = call i32 @msleep(i32* %22, i32 %24, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  %26 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %27 = call i32 @VTBALLOON_UNLOCK(%struct.vtballoon_softc* %26)
  %28 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %29 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %10, %1
  %31 = load i32, i32* %2, align 4
  %32 = call i64 @device_is_attached(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %36 = call i32 @vtballoon_pop(%struct.vtballoon_softc* %35)
  %37 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %38 = call i32 @vtballoon_stop(%struct.vtballoon_softc* %37)
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %41 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %46 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @M_DEVBUF, align 4
  %49 = call i32 @free(i32* %47, i32 %48)
  %50 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %51 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %44, %39
  %53 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %54 = call i32 @VTBALLOON_LOCK_DESTROY(%struct.vtballoon_softc* %53)
  ret i32 0
}

declare dso_local %struct.vtballoon_softc* @device_get_softc(i32) #1

declare dso_local i32 @VTBALLOON_LOCK(%struct.vtballoon_softc*) #1

declare dso_local i32 @wakeup_one(%struct.vtballoon_softc*) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @VTBALLOON_MTX(%struct.vtballoon_softc*) #1

declare dso_local i32 @VTBALLOON_UNLOCK(%struct.vtballoon_softc*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @vtballoon_pop(%struct.vtballoon_softc*) #1

declare dso_local i32 @vtballoon_stop(%struct.vtballoon_softc*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @VTBALLOON_LOCK_DESTROY(%struct.vtballoon_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
