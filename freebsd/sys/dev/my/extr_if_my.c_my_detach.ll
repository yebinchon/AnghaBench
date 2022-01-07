; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { i32, i32, i32, i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@MY_RES = common dso_local global i32 0, align 4
@MY_RID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @my_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.my_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.my_softc* @device_get_softc(i32 %5)
  store %struct.my_softc* %6, %struct.my_softc** %3, align 8
  %7 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %8 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %7, i32 0, i32 7
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = call i32 @ether_ifdetach(%struct.ifnet* %10)
  %12 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %13 = call i32 @MY_LOCK(%struct.my_softc* %12)
  %14 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %15 = call i32 @my_stop(%struct.my_softc* %14)
  %16 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %17 = call i32 @MY_UNLOCK(%struct.my_softc* %16)
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %20 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %23 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bus_teardown_intr(i32 %18, i32 %21, i32 %24)
  %26 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %27 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %26, i32 0, i32 5
  %28 = call i32 @callout_drain(i32* %27)
  %29 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %30 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %29, i32 0, i32 4
  %31 = call i32 @callout_drain(i32* %30)
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = call i32 @if_free(%struct.ifnet* %32)
  %34 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %35 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @M_DEVBUF, align 4
  %38 = call i32 @free(i32 %36, i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @SYS_RES_IRQ, align 4
  %41 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %42 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bus_release_resource(i32 %39, i32 %40, i32 0, i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @MY_RES, align 4
  %47 = load i32, i32* @MY_RID, align 4
  %48 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %49 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bus_release_resource(i32 %45, i32 %46, i32 %47, i32 %50)
  %52 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %53 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %52, i32 0, i32 0
  %54 = call i32 @mtx_destroy(i32* %53)
  ret i32 0
}

declare dso_local %struct.my_softc* @device_get_softc(i32) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @MY_LOCK(%struct.my_softc*) #1

declare dso_local i32 @my_stop(%struct.my_softc*) #1

declare dso_local i32 @MY_UNLOCK(%struct.my_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
