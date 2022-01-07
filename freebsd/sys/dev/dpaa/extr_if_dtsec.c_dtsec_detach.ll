; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i64, i32, i32* }

@DTSEC_MODE_REGULAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtsec_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dtsec_softc*, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.dtsec_softc* @device_get_softc(i32 %5)
  store %struct.dtsec_softc* %6, %struct.dtsec_softc** %3, align 8
  %7 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %8 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @device_is_attached(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ether_ifdetach(i32* %14)
  %16 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %17 = call i32 @DTSEC_LOCK(%struct.dtsec_softc* %16)
  %18 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %19 = call i32 @dtsec_if_deinit_locked(%struct.dtsec_softc* %18)
  %20 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %21 = call i32 @DTSEC_UNLOCK(%struct.dtsec_softc* %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %24 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %29 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @if_free(i32* %30)
  %32 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %33 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %36 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DTSEC_MODE_REGULAR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %42 = call i32 @dtsec_rm_fqr_rx_free(%struct.dtsec_softc* %41)
  %43 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %44 = call i32 @dtsec_rm_fqr_tx_free(%struct.dtsec_softc* %43)
  %45 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %46 = call i32 @dtsec_rm_fi_pool_free(%struct.dtsec_softc* %45)
  %47 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %48 = call i32 @dtsec_rm_pool_rx_free(%struct.dtsec_softc* %47)
  br label %49

49:                                               ; preds = %40, %34
  %50 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %51 = call i32 @dtsec_fm_mac_free(%struct.dtsec_softc* %50)
  %52 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %53 = call i32 @dtsec_fm_port_free_both(%struct.dtsec_softc* %52)
  %54 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %55 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %54, i32 0, i32 1
  %56 = call i32 @mtx_destroy(i32* %55)
  ret i32 0
}

declare dso_local %struct.dtsec_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @ether_ifdetach(i32*) #1

declare dso_local i32 @DTSEC_LOCK(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_if_deinit_locked(%struct.dtsec_softc*) #1

declare dso_local i32 @DTSEC_UNLOCK(%struct.dtsec_softc*) #1

declare dso_local i32 @if_free(i32*) #1

declare dso_local i32 @dtsec_rm_fqr_rx_free(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_rm_fqr_tx_free(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_rm_fi_pool_free(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_rm_pool_rx_free(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_fm_mac_free(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_fm_port_free_both(%struct.dtsec_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
