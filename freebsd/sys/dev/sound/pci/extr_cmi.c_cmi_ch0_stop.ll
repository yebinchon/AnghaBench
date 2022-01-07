; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_ch0_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_ch0_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }
%struct.sc_chinfo = type { i64 }

@CMPCI_REG_INTR_CTRL = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_INTR_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_FUNC_0 = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sc_info*, %struct.sc_chinfo*)* @cmi_ch0_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cmi_ch0_stop(%struct.sc_info* %0, %struct.sc_chinfo* %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.sc_chinfo*, align 8
  %5 = alloca i64, align 8
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store %struct.sc_chinfo* %1, %struct.sc_chinfo** %4, align 8
  %6 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %7 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %10 = load i32, i32* @CMPCI_REG_INTR_CTRL, align 4
  %11 = load i32, i32* @CMPCI_REG_CH0_INTR_ENABLE, align 4
  %12 = call i32 @cmi_clr4(%struct.sc_info* %9, i32 %10, i32 %11)
  %13 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %14 = load i32, i32* @CMPCI_REG_FUNC_0, align 4
  %15 = load i32, i32* @CMPCI_REG_CH0_ENABLE, align 4
  %16 = call i32 @cmi_clr4(%struct.sc_info* %13, i32 %14, i32 %15)
  %17 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %18 = load i32, i32* @CMPCI_REG_FUNC_0, align 4
  %19 = load i32, i32* @CMPCI_REG_CH0_RESET, align 4
  %20 = call i32 @cmi_set4(%struct.sc_info* %17, i32 %18, i32 %19)
  %21 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %22 = load i32, i32* @CMPCI_REG_FUNC_0, align 4
  %23 = load i32, i32* @CMPCI_REG_CH0_RESET, align 4
  %24 = call i32 @cmi_clr4(%struct.sc_info* %21, i32 %22, i32 %23)
  %25 = load %struct.sc_chinfo*, %struct.sc_chinfo** %4, align 8
  %26 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* %5, align 8
  ret i64 %27
}

declare dso_local i32 @cmi_clr4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @cmi_set4(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
