; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32*, i32*, i32, i32, i32 }

@FXP_CSR_SCB_INTRCNTL = common dso_local global i32 0, align 4
@FXP_SCB_INTR_DISABLE = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fxp_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxp_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fxp_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.fxp_softc* @device_get_softc(i32 %4)
  store %struct.fxp_softc* %5, %struct.fxp_softc** %3, align 8
  %6 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %7 = call i32 @FXP_LOCK(%struct.fxp_softc* %6)
  %8 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %9 = load i32, i32* @FXP_CSR_SCB_INTRCNTL, align 4
  %10 = load i32, i32* @FXP_SCB_INTR_DISABLE, align 4
  %11 = call i32 @CSR_WRITE_1(%struct.fxp_softc* %8, i32 %9, i32 %10)
  %12 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %13 = call i32 @fxp_stop(%struct.fxp_softc* %12)
  %14 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %15 = call i32 @FXP_UNLOCK(%struct.fxp_softc* %14)
  %16 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %17 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %16, i32 0, i32 4
  %18 = call i32 @callout_drain(i32* %17)
  %19 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %20 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ether_ifdetach(i32 %21)
  %23 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %24 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %27 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %32 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @bus_teardown_intr(i32 %25, i32 %30, i32* %33)
  %35 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %36 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %38 = call i32 @fxp_release(%struct.fxp_softc* %37)
  ret i32 0
}

declare dso_local %struct.fxp_softc* @device_get_softc(i32) #1

declare dso_local i32 @FXP_LOCK(%struct.fxp_softc*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.fxp_softc*, i32, i32) #1

declare dso_local i32 @fxp_stop(%struct.fxp_softc*) #1

declare dso_local i32 @FXP_UNLOCK(%struct.fxp_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @fxp_release(%struct.fxp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
