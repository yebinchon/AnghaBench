; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i32 }

@STE_ASICCTL = common dso_local global i32 0, align 4
@STE_ASICCTL_GLOBAL_RESET = common dso_local global i32 0, align 4
@STE_ASICCTL_RX_RESET = common dso_local global i32 0, align 4
@STE_ASICCTL_TX_RESET = common dso_local global i32 0, align 4
@STE_ASICCTL_DMA_RESET = common dso_local global i32 0, align 4
@STE_ASICCTL_FIFO_RESET = common dso_local global i32 0, align 4
@STE_ASICCTL_NETWORK_RESET = common dso_local global i32 0, align 4
@STE_ASICCTL_AUTOINIT_RESET = common dso_local global i32 0, align 4
@STE_ASICCTL_HOST_RESET = common dso_local global i32 0, align 4
@STE_ASICCTL_EXTRESET_RESET = common dso_local global i32 0, align 4
@STE_TIMEOUT = common dso_local global i32 0, align 4
@STE_ASICCTL_RESET_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"global reset never completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_reset(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %5 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %6 = load i32, i32* @STE_ASICCTL, align 4
  %7 = call i32 @CSR_READ_4(%struct.ste_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @STE_ASICCTL_GLOBAL_RESET, align 4
  %9 = load i32, i32* @STE_ASICCTL_RX_RESET, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @STE_ASICCTL_TX_RESET, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @STE_ASICCTL_DMA_RESET, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @STE_ASICCTL_FIFO_RESET, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @STE_ASICCTL_NETWORK_RESET, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @STE_ASICCTL_AUTOINIT_RESET, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @STE_ASICCTL_HOST_RESET, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @STE_ASICCTL_EXTRESET_RESET, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %28 = load i32, i32* @STE_ASICCTL, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @CSR_WRITE_4(%struct.ste_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %32 = load i32, i32* @STE_ASICCTL, align 4
  %33 = call i32 @CSR_READ_4(%struct.ste_softc* %31, i32 %32)
  %34 = call i32 @DELAY(i32 1000)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %49, %1
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @STE_TIMEOUT, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %41 = load i32, i32* @STE_ASICCTL, align 4
  %42 = call i32 @CSR_READ_4(%struct.ste_softc* %40, i32 %41)
  %43 = load i32, i32* @STE_ASICCTL_RESET_BUSY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %52

47:                                               ; preds = %39
  %48 = call i32 @DELAY(i32 10)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %35

52:                                               ; preds = %46, %35
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @STE_TIMEOUT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %58 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %52
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.ste_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
