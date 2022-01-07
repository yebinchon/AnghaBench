; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_cfgreg.c_pci_cfgregwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_cfgreg.c_pci_cfgregwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfgmech = common dso_local global i64 0, align 8
@CFGMECH_PCIE = common dso_local global i64 0, align 8
@pcie_minbus = common dso_local global i32 0, align 4
@pcie_maxbus = common dso_local global i32 0, align 4
@pcie_badslots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_cfgregwrite(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i64, i64* @cfgmech, align 8
  %14 = load i64, i64* @CFGMECH_PCIE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %6
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @pcie_minbus, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @pcie_maxbus, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @pcie_badslots, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @pciereg_cfgwrite(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  br label %49

41:                                               ; preds = %27, %20, %16, %6
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @pcireg_cfgwrite(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %33
  ret void
}

declare dso_local i32 @pciereg_cfgwrite(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pcireg_cfgwrite(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
