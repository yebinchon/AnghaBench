; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_xhci.c_mtk_xhci_fdt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_xhci.c_mtk_xhci_fdt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i32 }

@USB_IP_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%d USB3 ports, %d USB2 ports\0A\00", align 1
@USB_IP_PW_CTRL = common dso_local global i64 0, align 8
@USB_IP_SW_RST = common dso_local global i32 0, align 4
@USB_IP_PW_CTRL_1 = common dso_local global i64 0, align 8
@USB_IP_PDN = common dso_local global i32 0, align 4
@USB_PORT_PDN = common dso_local global i32 0, align 4
@USB_PORT_DIS = common dso_local global i32 0, align 4
@USB_HDMA_CFG = common dso_local global i32 0, align 4
@USB_HDMA_CFG_MT7621_VAL = common dso_local global i32 0, align 4
@U3_LTSSM_TIMING_PARAM3 = common dso_local global i32 0, align 4
@U3_LTSSM_TIMING_VAL = common dso_local global i32 0, align 4
@SYNC_HS_EOF = common dso_local global i32 0, align 4
@SYNC_HS_EOF_VAL = common dso_local global i32 0, align 4
@USB_IP_SPAR0 = common dso_local global i32 0, align 4
@USB_IP_SPAR0_VAL = common dso_local global i32 0, align 4
@U2_PHY_BASE_P0 = common dso_local global i64 0, align 8
@U2_PHYD_CR1 = common dso_local global i64 0, align 8
@U2_PHYD_CR1_MASK = common dso_local global i32 0, align 4
@U2_PHYD_CR1_VAL = common dso_local global i32 0, align 4
@U2_PHY_BASE_P1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mtk_xhci_fdt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_xhci_fdt_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.xhci_softc* @device_get_softc(i32 %8)
  store %struct.xhci_softc* %9, %struct.xhci_softc** %3, align 8
  %10 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %11 = load i32, i32* @USB_IP_CAP, align 4
  %12 = call i64 @RD4(%struct.xhci_softc* %10, i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @U3_PORT_NUM(i64 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @U2_PORT_NUM(i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  %21 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %22 = load i64, i64* @USB_IP_PW_CTRL, align 8
  %23 = load i32, i32* @USB_IP_SW_RST, align 4
  %24 = call i32 @CLRSET4(%struct.xhci_softc* %21, i64 %22, i32 0, i32 %23)
  %25 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %26 = load i64, i64* @USB_IP_PW_CTRL, align 8
  %27 = load i32, i32* @USB_IP_SW_RST, align 4
  %28 = call i32 @CLRSET4(%struct.xhci_softc* %25, i64 %26, i32 %27, i32 0)
  %29 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %30 = load i64, i64* @USB_IP_PW_CTRL_1, align 8
  %31 = load i32, i32* @USB_IP_PDN, align 4
  %32 = call i32 @CLRSET4(%struct.xhci_softc* %29, i64 %30, i32 %31, i32 0)
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %45, %1
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @USB_U3_CTRL(i64 %39)
  %41 = load i32, i32* @USB_PORT_PDN, align 4
  %42 = load i32, i32* @USB_PORT_DIS, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @CLRSET4(%struct.xhci_softc* %38, i64 %40, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %33

48:                                               ; preds = %33
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @USB_U2_CTRL(i64 %55)
  %57 = load i32, i32* @USB_PORT_PDN, align 4
  %58 = load i32, i32* @USB_PORT_DIS, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @CLRSET4(%struct.xhci_softc* %54, i64 %56, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %53
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %49

64:                                               ; preds = %49
  %65 = call i32 @DELAY(i32 100000)
  %66 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %67 = load i32, i32* @USB_HDMA_CFG, align 4
  %68 = load i32, i32* @USB_HDMA_CFG_MT7621_VAL, align 4
  %69 = call i32 @WR4(%struct.xhci_softc* %66, i32 %67, i32 %68)
  %70 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %71 = load i32, i32* @U3_LTSSM_TIMING_PARAM3, align 4
  %72 = load i32, i32* @U3_LTSSM_TIMING_VAL, align 4
  %73 = call i32 @WR4(%struct.xhci_softc* %70, i32 %71, i32 %72)
  %74 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %75 = load i32, i32* @SYNC_HS_EOF, align 4
  %76 = load i32, i32* @SYNC_HS_EOF_VAL, align 4
  %77 = call i32 @WR4(%struct.xhci_softc* %74, i32 %75, i32 %76)
  %78 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %79 = load i32, i32* @USB_IP_SPAR0, align 4
  %80 = load i32, i32* @USB_IP_SPAR0_VAL, align 4
  %81 = call i32 @WR4(%struct.xhci_softc* %78, i32 %79, i32 %80)
  %82 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %83 = load i64, i64* @U2_PHY_BASE_P0, align 8
  %84 = load i64, i64* @U2_PHYD_CR1, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i32, i32* @U2_PHYD_CR1_MASK, align 4
  %87 = load i32, i32* @U2_PHYD_CR1_VAL, align 4
  %88 = call i32 @CLRSET4(%struct.xhci_softc* %82, i64 %85, i32 %86, i32 %87)
  %89 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %90 = load i64, i64* @U2_PHY_BASE_P1, align 8
  %91 = load i64, i64* @U2_PHYD_CR1, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i32, i32* @U2_PHYD_CR1_MASK, align 4
  %94 = load i32, i32* @U2_PHYD_CR1_VAL, align 4
  %95 = call i32 @CLRSET4(%struct.xhci_softc* %89, i64 %92, i32 %93, i32 %94)
  ret void
}

declare dso_local %struct.xhci_softc* @device_get_softc(i32) #1

declare dso_local i64 @RD4(%struct.xhci_softc*, i32) #1

declare dso_local i64 @U3_PORT_NUM(i64) #1

declare dso_local i64 @U2_PORT_NUM(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

declare dso_local i32 @CLRSET4(%struct.xhci_softc*, i64, i32, i32) #1

declare dso_local i64 @USB_U3_CTRL(i64) #1

declare dso_local i64 @USB_U2_CTRL(i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @WR4(%struct.xhci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
