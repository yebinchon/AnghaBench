; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i64, i32 }
%struct.mii_data = type { i32 }

@XL_W3_MAC_CTRL = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@XL_MACCTRL_DUPLEX = common dso_local global i32 0, align 4
@XL_TYPE_905B = common dso_local global i64 0, align 8
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@XL_MACCTRL_FLOW_CONTROL_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xl_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xl_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i8* @device_get_softc(i32 %6)
  %8 = bitcast i8* %7 to %struct.xl_softc*
  store %struct.xl_softc* %8, %struct.xl_softc** %3, align 8
  %9 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %10 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.mii_data*
  store %struct.mii_data* %13, %struct.mii_data** %4, align 8
  %14 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %15 = call i32 @xl_setcfg(%struct.xl_softc* %14)
  %16 = call i32 @XL_SEL_WIN(i32 3)
  %17 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %18 = load i32, i32* @XL_W3_MAC_CTRL, align 4
  %19 = call i32 @CSR_READ_1(%struct.xl_softc* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %21 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IFM_OPTIONS(i32 %22)
  %24 = load i32, i32* @IFM_FDX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %1
  %28 = load i32, i32* @XL_MACCTRL_DUPLEX, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %32 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XL_TYPE_905B, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %27
  %37 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %38 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IFM_OPTIONS(i32 %39)
  %41 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* @XL_MACCTRL_FLOW_CONTROL_ENB, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %53

48:                                               ; preds = %36
  %49 = load i32, i32* @XL_MACCTRL_FLOW_CONTROL_ENB, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %44
  br label %54

54:                                               ; preds = %53, %27
  br label %71

55:                                               ; preds = %1
  %56 = load i32, i32* @XL_MACCTRL_DUPLEX, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %61 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @XL_TYPE_905B, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load i32, i32* @XL_MACCTRL_FLOW_CONTROL_ENB, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %55
  br label %71

71:                                               ; preds = %70, %54
  %72 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %73 = load i32, i32* @XL_W3_MAC_CTRL, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @CSR_WRITE_1(%struct.xl_softc* %72, i32 %73, i32 %74)
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @xl_setcfg(%struct.xl_softc*) #1

declare dso_local i32 @XL_SEL_WIN(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.xl_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.xl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
