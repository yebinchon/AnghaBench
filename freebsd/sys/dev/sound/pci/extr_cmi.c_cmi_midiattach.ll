; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_midiattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_midiattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32 }

@CMPCI_REG_FUNC_1 = common dso_local global i32 0, align 4
@CMPCI_REG_UART_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_LEGACY_CTRL = common dso_local global i32 0, align 4
@CMPCI_REG_VMPUSEL_MASK = common dso_local global i32 0, align 4
@CMPCI_REG_VMPUSEL_SHIFT = common dso_local global i32 0, align 4
@cmi_mpu_class = common dso_local global i32 0, align 4
@cmi_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @cmi_midiattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmi_midiattach(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %3 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %4 = load i32, i32* @CMPCI_REG_FUNC_1, align 4
  %5 = load i32, i32* @CMPCI_REG_UART_ENABLE, align 4
  %6 = call i32 @cmi_clr4(%struct.sc_info* %3, i32 %4, i32 %5)
  %7 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %8 = load i32, i32* @CMPCI_REG_LEGACY_CTRL, align 4
  %9 = load i32, i32* @CMPCI_REG_VMPUSEL_MASK, align 4
  %10 = load i32, i32* @CMPCI_REG_VMPUSEL_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = call i32 @cmi_clr4(%struct.sc_info* %7, i32 %8, i32 %11)
  %13 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %14 = load i32, i32* @CMPCI_REG_LEGACY_CTRL, align 4
  %15 = load i32, i32* @CMPCI_REG_VMPUSEL_SHIFT, align 4
  %16 = shl i32 0, %15
  %17 = call i32 @cmi_set4(%struct.sc_info* %13, i32 %14, i32 %16)
  %18 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %19 = load i32, i32* @CMPCI_REG_FUNC_1, align 4
  %20 = load i32, i32* @CMPCI_REG_UART_ENABLE, align 4
  %21 = call i32 @cmi_set4(%struct.sc_info* %18, i32 %19, i32 %20)
  %22 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %23 = load i32, i32* @cmi_intr, align 4
  %24 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 0
  %26 = call i32 @mpu401_init(i32* @cmi_mpu_class, %struct.sc_info* %22, i32 %23, i32* %25)
  %27 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @cmi_clr4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @cmi_set4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @mpu401_init(i32*, %struct.sc_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
