; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_check_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_check_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FWOHCI_INTSTAT = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"device physically ejected?\0A\00", align 1
@FILTER_STRAY = common dso_local global i32 0, align 4
@FWOHCI_INTSTATCLR = common dso_local global i32 0, align 4
@OHCI_INT_PHY_BUS_R = common dso_local global i32 0, align 4
@OHCI_INT_DMA_IR = common dso_local global i32 0, align 4
@OHCI_IR_STAT = common dso_local global i32 0, align 4
@OHCI_IR_STATCLR = common dso_local global i32 0, align 4
@OHCI_INT_DMA_IT = common dso_local global i32 0, align 4
@OHCI_IT_STAT = common dso_local global i32 0, align 4
@OHCI_IT_STATCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwohci_softc*)* @fwohci_check_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwohci_check_stat(%struct.fwohci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  %7 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %8 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %7, i32 0, i32 4
  %9 = call i32 @FW_GLOCK_ASSERT(%struct.TYPE_2__* %8)
  %10 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %11 = load i32, i32* @FWOHCI_INTSTAT, align 4
  %12 = call i32 @OREAD(%struct.fwohci_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %17 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bus_child_present(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %23, i32* %2, align 4
  br label %95

24:                                               ; preds = %15
  %25 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %26 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %30, i32* %2, align 4
  br label %95

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %36 = load i32, i32* @FWOHCI_INTSTATCLR, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @OHCI_INT_PHY_BUS_R, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @OWRITE(%struct.fwohci_softc* %35, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %34, %31
  %43 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %44 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %51, i32* %2, align 4
  br label %95

52:                                               ; preds = %42
  %53 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %54 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %53, i32 0, i32 3
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @atomic_set_int(i32* %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @OHCI_INT_DMA_IR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %52
  %62 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %63 = load i32, i32* @OHCI_IR_STAT, align 4
  %64 = call i32 @OREAD(%struct.fwohci_softc* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %66 = load i32, i32* @OHCI_IR_STATCLR, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @OWRITE(%struct.fwohci_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %70 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @atomic_set_int(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %61, %52
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @OHCI_INT_DMA_IT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %80 = load i32, i32* @OHCI_IT_STAT, align 4
  %81 = call i32 @OREAD(%struct.fwohci_softc* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %83 = load i32, i32* @OHCI_IT_STATCLR, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @OWRITE(%struct.fwohci_softc* %82, i32 %83, i32 %84)
  %86 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %87 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @atomic_set_int(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %78, %73
  %91 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @fwohci_intr_core(%struct.fwohci_softc* %91, i32 %92, i32 -1)
  %94 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %50, %24, %22
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @FW_GLOCK_ASSERT(%struct.TYPE_2__*) #1

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @bus_child_present(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i32 @fwohci_intr_core(%struct.fwohci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
