; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_ahb.c_ath_ahb_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_ahb.c_ath_ahb_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ahb_softc = type { i32, i32, i32, %struct.ath_softc }
%struct.ath_softc = type { i32, i64, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ath_ahb_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_ahb_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_ahb_softc*, align 8
  %4 = alloca %struct.ath_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ath_ahb_softc* @device_get_softc(i32 %5)
  store %struct.ath_ahb_softc* %6, %struct.ath_ahb_softc** %3, align 8
  %7 = load %struct.ath_ahb_softc*, %struct.ath_ahb_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ath_ahb_softc, %struct.ath_ahb_softc* %7, i32 0, i32 3
  store %struct.ath_softc* %8, %struct.ath_softc** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @bus_child_present(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %17 = call i32 @ath_detach(%struct.ath_softc* %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @bus_generic_detach(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.ath_ahb_softc*, %struct.ath_ahb_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ath_ahb_softc, %struct.ath_ahb_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ath_ahb_softc*, %struct.ath_ahb_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ath_ahb_softc, %struct.ath_ahb_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bus_teardown_intr(i32 %20, i32 %23, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @SYS_RES_IRQ, align 4
  %30 = load %struct.ath_ahb_softc*, %struct.ath_ahb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ath_ahb_softc, %struct.ath_ahb_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bus_release_resource(i32 %28, i32 %29, i32 0, i32 %32)
  %34 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bus_dma_tag_destroy(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @SYS_RES_MEMORY, align 4
  %40 = load %struct.ath_ahb_softc*, %struct.ath_ahb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ath_ahb_softc, %struct.ath_ahb_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bus_release_resource(i32 %38, i32 %39, i32 0, i32 %42)
  %44 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %1
  %49 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @M_TEMP, align 4
  %53 = call i32 @free(i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %1
  %55 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %56 = call i32 @ATH_TXSTATUS_LOCK_DESTROY(%struct.ath_softc* %55)
  %57 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %58 = call i32 @ATH_RX_LOCK_DESTROY(%struct.ath_softc* %57)
  %59 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %60 = call i32 @ATH_TX_LOCK_DESTROY(%struct.ath_softc* %59)
  %61 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %62 = call i32 @ATH_PCU_LOCK_DESTROY(%struct.ath_softc* %61)
  %63 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %64 = call i32 @ATH_LOCK_DESTROY(%struct.ath_softc* %63)
  ret i32 0
}

declare dso_local %struct.ath_ahb_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_child_present(i32) #1

declare dso_local i32 @ath_detach(%struct.ath_softc*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @ATH_TXSTATUS_LOCK_DESTROY(%struct.ath_softc*) #1

declare dso_local i32 @ATH_RX_LOCK_DESTROY(%struct.ath_softc*) #1

declare dso_local i32 @ATH_TX_LOCK_DESTROY(%struct.ath_softc*) #1

declare dso_local i32 @ATH_PCU_LOCK_DESTROY(%struct.ath_softc*) #1

declare dso_local i32 @ATH_LOCK_DESTROY(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
