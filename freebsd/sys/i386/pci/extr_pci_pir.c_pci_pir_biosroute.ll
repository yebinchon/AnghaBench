; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_biosroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_biosroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bios_regs = type { i32, i32, i32 }

@PCIBIOS_ROUTE_INTERRUPT = common dso_local global i32 0, align 4
@PCIbios = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GCODE_SEL = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @pci_pir_biosroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_pir_biosroute(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bios_regs, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @PCIBIOS_ROUTE_INTERRUPT, align 4
  %13 = getelementptr inbounds %struct.bios_regs, %struct.bios_regs* %11, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 3
  %18 = or i32 %15, %17
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.bios_regs, %struct.bios_regs* %11, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 10, %24
  %26 = or i32 %23, %25
  %27 = getelementptr inbounds %struct.bios_regs, %struct.bios_regs* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PCIbios, i32 0, i32 0), align 4
  %29 = load i32, i32* @GCODE_SEL, align 4
  %30 = load i32, i32* @SEL_KPL, align 4
  %31 = call i32 @GSEL(i32 %29, i32 %30)
  %32 = call i32 @bios32(%struct.bios_regs* %11, i32 %28, i32 %31)
  ret i32 %32
}

declare dso_local i32 @bios32(%struct.bios_regs*, i32, i32) #1

declare dso_local i32 @GSEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
