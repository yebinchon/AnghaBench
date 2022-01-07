; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiopps.c_gpiopps_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiopps.c_gpiopps_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_softc = type { %struct.TYPE_2__*, i32*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpiopps_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiopps_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pps_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.pps_softc* @device_get_softc(i32 %4)
  store %struct.pps_softc* %5, %struct.pps_softc** %3, align 8
  %6 = load %struct.pps_softc*, %struct.pps_softc** %3, align 8
  %7 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.pps_softc*, %struct.pps_softc** %3, align 8
  %12 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @destroy_dev(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.pps_softc*, %struct.pps_softc** %3, align 8
  %17 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.pps_softc*, %struct.pps_softc** %3, align 8
  %23 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.pps_softc*, %struct.pps_softc** %3, align 8
  %26 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @bus_teardown_intr(i32 %21, i32* %24, i32* %27)
  br label %29

29:                                               ; preds = %20, %15
  %30 = load %struct.pps_softc*, %struct.pps_softc** %3, align 8
  %31 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @SYS_RES_IRQ, align 4
  %37 = load %struct.pps_softc*, %struct.pps_softc** %3, align 8
  %38 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.pps_softc*, %struct.pps_softc** %3, align 8
  %41 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @bus_release_resource(i32 %35, i32 %36, i32 %39, i32* %42)
  br label %44

44:                                               ; preds = %34, %29
  %45 = load %struct.pps_softc*, %struct.pps_softc** %3, align 8
  %46 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.pps_softc*, %struct.pps_softc** %3, align 8
  %51 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GPIO_GET_BUS(i32 %54)
  %56 = load %struct.pps_softc*, %struct.pps_softc** %3, align 8
  %57 = getelementptr inbounds %struct.pps_softc, %struct.pps_softc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gpiobus_release_pin(i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %49, %44
  ret i32 0
}

declare dso_local %struct.pps_softc* @device_get_softc(i32) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @gpiobus_release_pin(i32, i32) #1

declare dso_local i32 @GPIO_GET_BUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
