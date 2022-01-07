; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i32 }

@INTERRUPT_STATUS = common dso_local global i32 0, align 4
@SGMII_RGMII_SMII_CTRL_STATUS = common dso_local global i32 0, align 4
@DMA_STATUS = common dso_local global i32 0, align 4
@DMA_STATUS_NIS = common dso_local global i32 0, align 4
@DMA_STATUS_RI = common dso_local global i32 0, align 4
@DMA_STATUS_TI = common dso_local global i32 0, align 4
@DMA_STATUS_AIS = common dso_local global i32 0, align 4
@DMA_STATUS_FBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Ethernet DMA error, restarting controller.\0A\00", align 1
@DMA_STATUS_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dwc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dwc_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.dwc_softc*
  store %struct.dwc_softc* %6, %struct.dwc_softc** %3, align 8
  %7 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %8 = call i32 @DWC_LOCK(%struct.dwc_softc* %7)
  %9 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %10 = load i32, i32* @INTERRUPT_STATUS, align 4
  %11 = call i32 @READ4(%struct.dwc_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %16 = load i32, i32* @SGMII_RGMII_SMII_CTRL_STATUS, align 4
  %17 = call i32 @READ4(%struct.dwc_softc* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %20 = load i32, i32* @DMA_STATUS, align 4
  %21 = call i32 @READ4(%struct.dwc_softc* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DMA_STATUS_NIS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DMA_STATUS_RI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %33 = call i32 @dwc_rxfinish_locked(%struct.dwc_softc* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @DMA_STATUS_TI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %41 = call i32 @dwc_txfinish_locked(%struct.dwc_softc* %40)
  %42 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %43 = call i32 @dwc_txstart_locked(%struct.dwc_softc* %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @DMA_STATUS_AIS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @DMA_STATUS_FBI, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %57 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %61 = call i32 @dwc_stop_locked(%struct.dwc_softc* %60)
  %62 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %63 = call i32 @dwc_init_locked(%struct.dwc_softc* %62)
  br label %64

64:                                               ; preds = %55, %50
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %67 = load i32, i32* @DMA_STATUS, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @DMA_STATUS_INTR_MASK, align 4
  %70 = and i32 %68, %69
  %71 = call i32 @WRITE4(%struct.dwc_softc* %66, i32 %67, i32 %70)
  %72 = load %struct.dwc_softc*, %struct.dwc_softc** %3, align 8
  %73 = call i32 @DWC_UNLOCK(%struct.dwc_softc* %72)
  ret void
}

declare dso_local i32 @DWC_LOCK(%struct.dwc_softc*) #1

declare dso_local i32 @READ4(%struct.dwc_softc*, i32) #1

declare dso_local i32 @dwc_rxfinish_locked(%struct.dwc_softc*) #1

declare dso_local i32 @dwc_txfinish_locked(%struct.dwc_softc*) #1

declare dso_local i32 @dwc_txstart_locked(%struct.dwc_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @dwc_stop_locked(%struct.dwc_softc*) #1

declare dso_local i32 @dwc_init_locked(%struct.dwc_softc*) #1

declare dso_local i32 @WRITE4(%struct.dwc_softc*, i32, i32) #1

declare dso_local i32 @DWC_UNLOCK(%struct.dwc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
