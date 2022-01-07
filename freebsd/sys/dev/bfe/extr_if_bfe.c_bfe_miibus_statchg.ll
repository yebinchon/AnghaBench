; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mii_data = type { i32, i32 }

@BFE_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@BFE_TX_CTRL = common dso_local global i32 0, align 4
@BFE_TX_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@BFE_FLOW_PAUSE_ENAB = common dso_local global i32 0, align 4
@BFE_MAC_FLOW = common dso_local global i32 0, align 4
@BFE_RXCONF = common dso_local global i32 0, align 4
@BFE_RXCONF_FLOW = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bfe_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfe_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @device_get_softc(i32 %7)
  %9 = bitcast i8* %8 to %struct.bfe_softc*
  store %struct.bfe_softc* %9, %struct.bfe_softc** %3, align 8
  %10 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.mii_data*
  store %struct.mii_data* %14, %struct.mii_data** %4, align 8
  %15 = load i32, i32* @BFE_FLAG_LINK, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %22 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFM_ACTIVE, align 4
  %25 = load i32, i32* @IFM_AVALID, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @IFM_ACTIVE, align 4
  %29 = load i32, i32* @IFM_AVALID, align 4
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %34 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IFM_SUBTYPE(i32 %35)
  switch i32 %36, label %43 [
    i32 128, label %37
    i32 129, label %37
  ]

37:                                               ; preds = %32, %32
  %38 = load i32, i32* @BFE_FLAG_LINK, align 4
  %39 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %40 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %47 = load i32, i32* @BFE_TX_CTRL, align 4
  %48 = call i32 @CSR_READ_4(%struct.bfe_softc* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @BFE_TX_DUPLEX, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %54 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @IFM_OPTIONS(i32 %55)
  %57 = load i32, i32* @IFM_FDX, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %45
  %61 = load i32, i32* @BFE_TX_DUPLEX, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %45
  %65 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %66 = load i32, i32* @BFE_TX_CTRL, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %65, i32 %66, i32 %67)
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
