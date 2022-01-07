; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_ax88772_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_ax88772_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axe_softc = type { i64, i32 }

@AXE_CMD_WRITE_GPIO = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@AXE_772_PHY_NO_EPHY = common dso_local global i64 0, align 8
@AXE_CMD_SW_PHY_SELECT = common dso_local global i32 0, align 4
@AXE_CMD_SW_RESET_REG = common dso_local global i32 0, align 4
@AXE_SW_RESET_CLEAR = common dso_local global i32 0, align 4
@AXE_SW_RESET_IPPD = common dso_local global i32 0, align 4
@AXE_SW_RESET_PRL = common dso_local global i32 0, align 4
@AXE_SW_RESET_IPRL = common dso_local global i32 0, align 4
@AXE_CMD_RXCTL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axe_softc*)* @axe_ax88772_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_ax88772_init(%struct.axe_softc* %0) #0 {
  %2 = alloca %struct.axe_softc*, align 8
  store %struct.axe_softc* %0, %struct.axe_softc** %2, align 8
  %3 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %4 = load i32, i32* @AXE_CMD_WRITE_GPIO, align 4
  %5 = call i32 @axe_cmd(%struct.axe_softc* %3, i32 %4, i32 0, i32 176, i32* null)
  %6 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %7 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %6, i32 0, i32 1
  %8 = load i32, i32* @hz, align 4
  %9 = sdiv i32 %8, 16
  %10 = call i32 @uether_pause(i32* %7, i32 %9)
  %11 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AXE_772_PHY_NO_EPHY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %1
  %17 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %18 = load i32, i32* @AXE_CMD_SW_PHY_SELECT, align 4
  %19 = call i32 @axe_cmd(%struct.axe_softc* %17, i32 %18, i32 0, i32 1, i32* null)
  %20 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %21 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %20, i32 0, i32 1
  %22 = load i32, i32* @hz, align 4
  %23 = sdiv i32 %22, 64
  %24 = call i32 @uether_pause(i32* %21, i32 %23)
  %25 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %26 = load i32, i32* @AXE_CMD_SW_RESET_REG, align 4
  %27 = load i32, i32* @AXE_SW_RESET_CLEAR, align 4
  %28 = call i32 @axe_cmd(%struct.axe_softc* %25, i32 %26, i32 0, i32 %27, i32* null)
  %29 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %29, i32 0, i32 1
  %31 = load i32, i32* @hz, align 4
  %32 = sdiv i32 %31, 16
  %33 = call i32 @uether_pause(i32* %30, i32 %32)
  %34 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %35 = load i32, i32* @AXE_CMD_SW_RESET_REG, align 4
  %36 = load i32, i32* @AXE_SW_RESET_IPPD, align 4
  %37 = load i32, i32* @AXE_SW_RESET_PRL, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @axe_cmd(%struct.axe_softc* %34, i32 %35, i32 0, i32 %38, i32* null)
  %40 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %41 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %40, i32 0, i32 1
  %42 = load i32, i32* @hz, align 4
  %43 = sdiv i32 %42, 4
  %44 = call i32 @uether_pause(i32* %41, i32 %43)
  %45 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %46 = load i32, i32* @AXE_CMD_SW_RESET_REG, align 4
  %47 = load i32, i32* @AXE_SW_RESET_PRL, align 4
  %48 = call i32 @axe_cmd(%struct.axe_softc* %45, i32 %46, i32 0, i32 %47, i32* null)
  %49 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %50 = load i32, i32* @AXE_CMD_SW_RESET_REG, align 4
  %51 = load i32, i32* @AXE_SW_RESET_IPRL, align 4
  %52 = load i32, i32* @AXE_SW_RESET_PRL, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @axe_cmd(%struct.axe_softc* %49, i32 %50, i32 0, i32 %53, i32* null)
  br label %70

55:                                               ; preds = %1
  %56 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %57 = load i32, i32* @AXE_CMD_SW_PHY_SELECT, align 4
  %58 = call i32 @axe_cmd(%struct.axe_softc* %56, i32 %57, i32 0, i32 0, i32* null)
  %59 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %60 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %59, i32 0, i32 1
  %61 = load i32, i32* @hz, align 4
  %62 = sdiv i32 %61, 64
  %63 = call i32 @uether_pause(i32* %60, i32 %62)
  %64 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %65 = load i32, i32* @AXE_CMD_SW_RESET_REG, align 4
  %66 = load i32, i32* @AXE_SW_RESET_IPPD, align 4
  %67 = load i32, i32* @AXE_SW_RESET_PRL, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @axe_cmd(%struct.axe_softc* %64, i32 %65, i32 0, i32 %68, i32* null)
  br label %70

70:                                               ; preds = %55, %16
  %71 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %72 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %71, i32 0, i32 1
  %73 = load i32, i32* @hz, align 4
  %74 = sdiv i32 %73, 4
  %75 = call i32 @uether_pause(i32* %72, i32 %74)
  %76 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %77 = load i32, i32* @AXE_CMD_RXCTL_WRITE, align 4
  %78 = call i32 @axe_cmd(%struct.axe_softc* %76, i32 %77, i32 0, i32 0, i32* null)
  ret void
}

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @uether_pause(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
