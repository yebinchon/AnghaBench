; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_legacy.c_legacy_pci_cfgregopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_legacy.c_legacy_pci_cfgregopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfgmech = common dso_local global i64 0, align 8
@CFGMECH_NONE = common dso_local global i64 0, align 8
@CFGMECH_PCIE = common dso_local global i64 0, align 8
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Enabled ECAM PCIe accesses\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @legacy_pci_cfgregopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @legacy_pci_cfgregopen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @cfgmech, align 8
  %7 = load i64, i64* @CFGMECH_NONE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @cfgmech, align 8
  %11 = load i64, i64* @CFGMECH_PCIE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  br label %42

14:                                               ; preds = %9
  %15 = load i32, i32* @PCIR_VENDOR, align 4
  %16 = call i32 @pci_cfgregread(i32 0, i32 0, i32 0, i32 %15, i32 2)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @PCIR_DEVICE, align 4
  %18 = call i32 @pci_cfgregread(i32 0, i32 0, i32 0, i32 %17, i32 2)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %32 [
    i32 32902, label %20
  ]

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %31 [
    i32 13712, label %22
    i32 13714, label %22
    i32 9600, label %27
    i32 9604, label %27
    i32 9616, label %27
  ]

22:                                               ; preds = %20, %20
  %23 = call i32 @pci_cfgregread(i32 0, i32 0, i32 0, i32 206, i32 2)
  %24 = shl i32 %23, 16
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pcie_cfgregopen(i32 %25, i32 0, i32 255)
  br label %31

27:                                               ; preds = %20, %20, %20
  %28 = call i32 @pci_cfgregread(i32 0, i32 0, i32 0, i32 72, i32 4)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pcie_cfgregopen(i32 %29, i32 0, i32 255)
  br label %31

31:                                               ; preds = %20, %27, %22
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i64, i64* @bootverbose, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i64, i64* @cfgmech, align 8
  %37 = load i64, i64* @CFGMECH_PCIE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %13, %39, %35, %32
  ret void
}

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pcie_cfgregopen(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
