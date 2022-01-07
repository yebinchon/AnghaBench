; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_nvidia_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_nvidia_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_BRIDGE = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_BRIDGE_PCI = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_amd64_nvidia_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_amd64_nvidia_match(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @PCIR_CLASS, align 4
  %5 = call i32 @pci_cfgregread(i32 0, i32 11, i32 0, i32 %4, i32 1)
  %6 = load i32, i32* @PCIC_BRIDGE, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @PCIR_SUBCLASS, align 4
  %10 = call i32 @pci_cfgregread(i32 0, i32 11, i32 0, i32 %9, i32 1)
  %11 = load i32, i32* @PCIS_BRIDGE_PCI, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @PCIR_VENDOR, align 4
  %15 = call i32 @pci_cfgregread(i32 0, i32 11, i32 0, i32 %14, i32 2)
  %16 = icmp ne i32 %15, 4318
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @PCIR_DEVICE, align 4
  %19 = call i32 @pci_cfgregread(i32 0, i32 11, i32 0, i32 %18, i32 2)
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %13, %8, %1
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %22
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
