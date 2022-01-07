; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aue_softc = type { i32, i32 }
%struct.mii_data = type { i32 }

@AUE_CTL0 = common dso_local global i32 0, align 4
@AUE_CTL0_RX_ENB = common dso_local global i32 0, align 4
@AUE_CTL0_TX_ENB = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i64 0, align 8
@AUE_CTL1 = common dso_local global i32 0, align 4
@AUE_CTL1_SPEEDSEL = common dso_local global i32 0, align 4
@IFM_GMASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@AUE_CTL1_DUPLEX = common dso_local global i32 0, align 4
@AUE_FLAG_LSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @aue_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aue_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aue_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.aue_softc* @device_get_softc(i32 %7)
  store %struct.aue_softc* %8, %struct.aue_softc** %3, align 8
  %9 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %10 = call %struct.mii_data* @GET_MII(%struct.aue_softc* %9)
  store %struct.mii_data* %10, %struct.mii_data** %4, align 8
  %11 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %12 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %11, i32 0, i32 1
  %13 = call i32 @mtx_owned(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %18 = call i32 @AUE_LOCK(%struct.aue_softc* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %21 = load i32, i32* @AUE_CTL0, align 4
  %22 = load i32, i32* @AUE_CTL0_RX_ENB, align 4
  %23 = load i32, i32* @AUE_CTL0_TX_ENB, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @AUE_CLRBIT(%struct.aue_softc* %20, i32 %21, i32 %24)
  %26 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %27 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IFM_SUBTYPE(i32 %28)
  %30 = load i64, i64* @IFM_100_TX, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %34 = load i32, i32* @AUE_CTL1, align 4
  %35 = load i32, i32* @AUE_CTL1_SPEEDSEL, align 4
  %36 = call i32 @AUE_SETBIT(%struct.aue_softc* %33, i32 %34, i32 %35)
  br label %42

37:                                               ; preds = %19
  %38 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %39 = load i32, i32* @AUE_CTL1, align 4
  %40 = load i32, i32* @AUE_CTL1_SPEEDSEL, align 4
  %41 = call i32 @AUE_CLRBIT(%struct.aue_softc* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %44 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFM_GMASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @IFM_FDX, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %52 = load i32, i32* @AUE_CTL1, align 4
  %53 = load i32, i32* @AUE_CTL1_DUPLEX, align 4
  %54 = call i32 @AUE_SETBIT(%struct.aue_softc* %51, i32 %52, i32 %53)
  br label %60

55:                                               ; preds = %42
  %56 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %57 = load i32, i32* @AUE_CTL1, align 4
  %58 = load i32, i32* @AUE_CTL1_DUPLEX, align 4
  %59 = call i32 @AUE_CLRBIT(%struct.aue_softc* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %62 = load i32, i32* @AUE_CTL0, align 4
  %63 = load i32, i32* @AUE_CTL0_RX_ENB, align 4
  %64 = load i32, i32* @AUE_CTL0_TX_ENB, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @AUE_SETBIT(%struct.aue_softc* %61, i32 %62, i32 %65)
  %67 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %68 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AUE_FLAG_LSYS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %60
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @aue_miibus_readreg(i32 %74, i32 0, i32 27)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, 4
  %79 = call i32 @aue_miibus_writereg(i32 %76, i32 0, i32 27, i32 %78)
  br label %80

80:                                               ; preds = %73, %60
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %85 = call i32 @AUE_UNLOCK(%struct.aue_softc* %84)
  br label %86

86:                                               ; preds = %83, %80
  ret void
}

declare dso_local %struct.aue_softc* @device_get_softc(i32) #1

declare dso_local %struct.mii_data* @GET_MII(%struct.aue_softc*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @AUE_LOCK(%struct.aue_softc*) #1

declare dso_local i32 @AUE_CLRBIT(%struct.aue_softc*, i32, i32) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @AUE_SETBIT(%struct.aue_softc*, i32, i32) #1

declare dso_local i32 @aue_miibus_readreg(i32, i32, i32) #1

declare dso_local i32 @aue_miibus_writereg(i32, i32, i32, i32) #1

declare dso_local i32 @AUE_UNLOCK(%struct.aue_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
