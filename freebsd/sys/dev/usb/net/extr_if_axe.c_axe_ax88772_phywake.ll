; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_ax88772_phywake.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_ax88772_phywake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axe_softc = type { i64, %struct.usb_ether }
%struct.usb_ether = type { i32 }

@AXE_772_PHY_NO_EPHY = common dso_local global i64 0, align 8
@AXE_CMD_SW_PHY_SELECT = common dso_local global i32 0, align 4
@AXE_SW_PHY_SELECT_SS_ENB = common dso_local global i32 0, align 4
@AXE_SW_PHY_SELECT_EMBEDDED = common dso_local global i32 0, align 4
@AXE_SW_PHY_SELECT_SS_MII = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@AXE_SW_PHY_SELECT_EXT = common dso_local global i32 0, align 4
@AXE_CMD_SW_RESET_REG = common dso_local global i32 0, align 4
@AXE_SW_RESET_IPPD = common dso_local global i32 0, align 4
@AXE_SW_RESET_IPRL = common dso_local global i32 0, align 4
@AXE_SW_RESET_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axe_softc*)* @axe_ax88772_phywake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_ax88772_phywake(%struct.axe_softc* %0) #0 {
  %2 = alloca %struct.axe_softc*, align 8
  %3 = alloca %struct.usb_ether*, align 8
  store %struct.axe_softc* %0, %struct.axe_softc** %2, align 8
  %4 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %5 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %4, i32 0, i32 1
  store %struct.usb_ether* %5, %struct.usb_ether** %3, align 8
  %6 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %7 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AXE_772_PHY_NO_EPHY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %13 = load i32, i32* @AXE_CMD_SW_PHY_SELECT, align 4
  %14 = load i32, i32* @AXE_SW_PHY_SELECT_SS_ENB, align 4
  %15 = load i32, i32* @AXE_SW_PHY_SELECT_EMBEDDED, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @AXE_SW_PHY_SELECT_SS_MII, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @axe_cmd(%struct.axe_softc* %12, i32 %13, i32 0, i32 %18, i32* null)
  %20 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %21 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %20, i32 0, i32 1
  %22 = load i32, i32* @hz, align 4
  %23 = sdiv i32 %22, 32
  %24 = call i32 @uether_pause(%struct.usb_ether* %21, i32 %23)
  br label %39

25:                                               ; preds = %1
  %26 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %27 = load i32, i32* @AXE_CMD_SW_PHY_SELECT, align 4
  %28 = load i32, i32* @AXE_SW_PHY_SELECT_SS_ENB, align 4
  %29 = load i32, i32* @AXE_SW_PHY_SELECT_EXT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @AXE_SW_PHY_SELECT_SS_MII, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @axe_cmd(%struct.axe_softc* %26, i32 %27, i32 0, i32 %32, i32* null)
  %34 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %35 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %34, i32 0, i32 1
  %36 = load i32, i32* @hz, align 4
  %37 = sdiv i32 %36, 32
  %38 = call i32 @uether_pause(%struct.usb_ether* %35, i32 %37)
  br label %39

39:                                               ; preds = %25, %11
  %40 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %41 = load i32, i32* @AXE_CMD_SW_RESET_REG, align 4
  %42 = load i32, i32* @AXE_SW_RESET_IPPD, align 4
  %43 = load i32, i32* @AXE_SW_RESET_IPRL, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @axe_cmd(%struct.axe_softc* %40, i32 %41, i32 0, i32 %44, i32* null)
  %46 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %47 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %46, i32 0, i32 1
  %48 = load i32, i32* @hz, align 4
  %49 = sdiv i32 %48, 4
  %50 = call i32 @uether_pause(%struct.usb_ether* %47, i32 %49)
  %51 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %52 = load i32, i32* @AXE_CMD_SW_RESET_REG, align 4
  %53 = load i32, i32* @AXE_SW_RESET_IPRL, align 4
  %54 = call i32 @axe_cmd(%struct.axe_softc* %51, i32 %52, i32 0, i32 %53, i32* null)
  %55 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %56 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %55, i32 0, i32 1
  %57 = load i32, i32* @hz, align 4
  %58 = call i32 @uether_pause(%struct.usb_ether* %56, i32 %57)
  %59 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %60 = load i32, i32* @AXE_CMD_SW_RESET_REG, align 4
  %61 = load i32, i32* @AXE_SW_RESET_CLEAR, align 4
  %62 = call i32 @axe_cmd(%struct.axe_softc* %59, i32 %60, i32 0, i32 %61, i32* null)
  %63 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %64 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %63, i32 0, i32 1
  %65 = load i32, i32* @hz, align 4
  %66 = sdiv i32 %65, 32
  %67 = call i32 @uether_pause(%struct.usb_ether* %64, i32 %66)
  %68 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %69 = load i32, i32* @AXE_CMD_SW_RESET_REG, align 4
  %70 = load i32, i32* @AXE_SW_RESET_IPRL, align 4
  %71 = call i32 @axe_cmd(%struct.axe_softc* %68, i32 %69, i32 0, i32 %70, i32* null)
  %72 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %73 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %72, i32 0, i32 1
  %74 = load i32, i32* @hz, align 4
  %75 = sdiv i32 %74, 32
  %76 = call i32 @uether_pause(%struct.usb_ether* %73, i32 %75)
  ret void
}

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @uether_pause(%struct.usb_ether*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
