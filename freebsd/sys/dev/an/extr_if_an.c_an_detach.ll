; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32, i32, i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"already unloaded\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @an_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.an_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.an_softc* @device_get_softc(i32 %6)
  store %struct.an_softc* %7, %struct.an_softc** %4, align 8
  %8 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %9 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %8, i32 0, i32 6
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %5, align 8
  %11 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %12 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %20 = call i32 @AN_LOCK(%struct.an_softc* %19)
  %21 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %22 = call i32 @an_stop(%struct.an_softc* %21)
  %23 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %24 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %26 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %25, i32 0, i32 5
  %27 = call i32 @ifmedia_removeall(i32* %26)
  %28 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %35 = call i32 @AN_UNLOCK(%struct.an_softc* %34)
  %36 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %37 = call i32 @ether_ifdetach(%struct.ifnet* %36)
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %40 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %43 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bus_teardown_intr(i32 %38, i32 %41, i32 %44)
  %46 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %47 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %46, i32 0, i32 2
  %48 = call i32 @callout_drain(i32* %47)
  %49 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %50 = call i32 @if_free(%struct.ifnet* %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @an_release_resources(i32 %51)
  %53 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %54 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %53, i32 0, i32 1
  %55 = call i32 @mtx_destroy(i32* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %18, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.an_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AN_LOCK(%struct.an_softc*) #1

declare dso_local i32 @an_stop(%struct.an_softc*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @AN_UNLOCK(%struct.an_softc*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @an_release_resources(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
