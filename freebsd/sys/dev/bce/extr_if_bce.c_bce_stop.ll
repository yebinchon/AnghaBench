; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_MISC_ENABLE_CLR_BITS = common dso_local global i32 0, align 4
@BCE_MISC_ENABLE_CLR_DEFAULT = common dso_local global i32 0, align 4
@bce_hdr_split = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_stop(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  %4 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %5 = call i32 @DBENTER(i32 %4)
  %6 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %7 = call i32 @BCE_LOCK_ASSERT(%struct.bce_softc* %6)
  %8 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %8, i32 0, i32 3
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %11, i32 0, i32 2
  %13 = call i32 @callout_stop(i32* %12)
  %14 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %15 = load i32, i32* @BCE_MISC_ENABLE_CLR_BITS, align 4
  %16 = load i32, i32* @BCE_MISC_ENABLE_CLR_DEFAULT, align 4
  %17 = call i32 @REG_WR(%struct.bce_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %19 = load i32, i32* @BCE_MISC_ENABLE_CLR_BITS, align 4
  %20 = call i32 @REG_RD(%struct.bce_softc* %18, i32 %19)
  %21 = call i32 @DELAY(i32 20)
  %22 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %23 = call i32 @bce_disable_intr(%struct.bce_softc* %22)
  %24 = load i64, i64* @bce_hdr_split, align 8
  %25 = load i64, i64* @TRUE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %29 = call i32 @bce_free_pg_chain(%struct.bce_softc* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %32 = call i32 @bce_free_rx_chain(%struct.bce_softc* %31)
  %33 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %34 = call i32 @bce_free_tx_chain(%struct.bce_softc* %33)
  %35 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %36 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @FALSE, align 4
  %38 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %41 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %49 = call i32 @DBEXIT(i32 %48)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @BCE_LOCK_ASSERT(%struct.bce_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @REG_WR(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bce_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bce_disable_intr(%struct.bce_softc*) #1

declare dso_local i32 @bce_free_pg_chain(%struct.bce_softc*) #1

declare dso_local i32 @bce_free_rx_chain(%struct.bce_softc*) #1

declare dso_local i32 @bce_free_tx_chain(%struct.bce_softc*) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
