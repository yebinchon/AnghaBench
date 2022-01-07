; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_set_txantenna.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_set_txantenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { i64 }

@RAL_BBP_TX = common dso_local global i32 0, align 4
@RAL_BBP_ANTMASK = common dso_local global i32 0, align 4
@RAL_BBP_ANTA = common dso_local global i32 0, align 4
@RAL_BBP_ANTB = common dso_local global i32 0, align 4
@RAL_BBP_DIVERSITY = common dso_local global i32 0, align 4
@RAL_RF_2525E = common dso_local global i64 0, align 8
@RAL_RF_2526 = common dso_local global i64 0, align 8
@RAL_RF_5222 = common dso_local global i64 0, align 8
@RAL_BBP_FLIPIQ = common dso_local global i32 0, align 4
@RAL_PHY_CSR5 = common dso_local global i32 0, align 4
@RAL_PHY_CSR6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*, i32)* @ural_set_txantenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_set_txantenna(%struct.ural_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ural_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %8 = load i32, i32* @RAL_BBP_TX, align 4
  %9 = call i32 @ural_bbp_read(%struct.ural_softc* %7, i32 %8)
  %10 = load i32, i32* @RAL_BBP_ANTMASK, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @RAL_BBP_ANTA, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @RAL_BBP_ANTB, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @RAL_BBP_DIVERSITY, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %15
  %32 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RAL_RF_2525E, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RAL_RF_2526, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RAL_RF_5222, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43, %37, %31
  %50 = load i32, i32* @RAL_BBP_FLIPIQ, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %55 = load i32, i32* @RAL_BBP_TX, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @ural_bbp_write(%struct.ural_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %59 = load i32, i32* @RAL_PHY_CSR5, align 4
  %60 = call i32 @ural_read(%struct.ural_softc* %58, i32 %59)
  %61 = and i32 %60, -8
  store i32 %61, i32* %5, align 4
  %62 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %63 = load i32, i32* @RAL_PHY_CSR5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 7
  %67 = or i32 %64, %66
  %68 = call i32 @ural_write(%struct.ural_softc* %62, i32 %63, i32 %67)
  %69 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %70 = load i32, i32* @RAL_PHY_CSR6, align 4
  %71 = call i32 @ural_read(%struct.ural_softc* %69, i32 %70)
  %72 = and i32 %71, -8
  store i32 %72, i32* %5, align 4
  %73 = load %struct.ural_softc*, %struct.ural_softc** %3, align 8
  %74 = load i32, i32* @RAL_PHY_CSR6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, 7
  %78 = or i32 %75, %77
  %79 = call i32 @ural_write(%struct.ural_softc* %73, i32 %74, i32 %78)
  ret void
}

declare dso_local i32 @ural_bbp_read(%struct.ural_softc*, i32) #1

declare dso_local i32 @ural_bbp_write(%struct.ural_softc*, i32, i32) #1

declare dso_local i32 @ural_read(%struct.ural_softc*, i32) #1

declare dso_local i32 @ural_write(%struct.ural_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
