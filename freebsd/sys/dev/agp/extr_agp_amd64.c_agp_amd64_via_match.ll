; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_via_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_via_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_BRIDGE = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_BRIDGE_PCI = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@AGP_VIA_AGPSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @agp_amd64_via_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_amd64_via_match() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PCIR_CLASS, align 4
  %3 = call i32 @pci_cfgregread(i32 0, i32 1, i32 0, i32 %2, i32 1)
  %4 = load i32, i32* @PCIC_BRIDGE, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %24, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @PCIR_SUBCLASS, align 4
  %8 = call i32 @pci_cfgregread(i32 0, i32 1, i32 0, i32 %7, i32 1)
  %9 = load i32, i32* @PCIS_BRIDGE_PCI, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %24, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* @PCIR_VENDOR, align 4
  %13 = call i32 @pci_cfgregread(i32 0, i32 1, i32 0, i32 %12, i32 2)
  %14 = icmp ne i32 %13, 4358
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @PCIR_DEVICE, align 4
  %17 = call i32 @pci_cfgregread(i32 0, i32 1, i32 0, i32 %16, i32 2)
  %18 = icmp ne i32 %17, 45448
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @AGP_VIA_AGPSEL, align 4
  %21 = call i32 @pci_cfgregread(i32 0, i32 1, i32 0, i32 %20, i32 1)
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %15, %11, %6, %0
  store i32 0, i32* %1, align 4
  br label %26

25:                                               ; preds = %19
  store i32 1, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
