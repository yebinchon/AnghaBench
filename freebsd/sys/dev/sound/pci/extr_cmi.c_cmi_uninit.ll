; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32*, i64 }

@CMPCI_REG_INTR_CTRL = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_INTR_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_CH1_INTR_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_TDMA_INTR_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_FUNC_0 = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_CH1_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_FUNC_1 = common dso_local global i32 0, align 4
@CMPCI_REG_UART_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @cmi_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmi_uninit(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %3 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %4 = load i32, i32* @CMPCI_REG_INTR_CTRL, align 4
  %5 = load i32, i32* @CMPCI_REG_CH0_INTR_ENABLE, align 4
  %6 = load i32, i32* @CMPCI_REG_CH1_INTR_ENABLE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CMPCI_REG_TDMA_INTR_ENABLE, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @cmi_clr4(%struct.sc_info* %3, i32 %4, i32 %9)
  %11 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %12 = load i32, i32* @CMPCI_REG_FUNC_0, align 4
  %13 = load i32, i32* @CMPCI_REG_CH0_ENABLE, align 4
  %14 = load i32, i32* @CMPCI_REG_CH1_ENABLE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @cmi_clr4(%struct.sc_info* %11, i32 %12, i32 %15)
  %17 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %18 = load i32, i32* @CMPCI_REG_FUNC_1, align 4
  %19 = load i32, i32* @CMPCI_REG_UART_ENABLE, align 4
  %20 = call i32 @cmi_clr4(%struct.sc_info* %17, i32 %18, i32 %19)
  %21 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %22 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %27 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @cmi_clr4(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
