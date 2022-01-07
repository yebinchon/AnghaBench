; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_pci_early_quirks.c_intel_stolen_size_chv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_pci_early_quirks.c_intel_stolen_size_chv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SNB_GMCH_CTRL = common dso_local global i32 0, align 4
@SNB_GMCH_GMS_SHIFT = common dso_local global i32 0, align 4
@SNB_GMCH_GMS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @intel_stolen_size_chv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_stolen_size_chv(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SNB_GMCH_CTRL, align 4
  %14 = call i32 @pci_cfgregread(i32 %10, i32 %11, i32 %12, i32 %13, i32 2)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SNB_GMCH_GMS_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* @SNB_GMCH_GMS_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 17
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @MiB(i32 32)
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 23
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 17
  %32 = call i32 @MiB(i32 4)
  %33 = mul nsw i32 %31, %32
  %34 = call i32 @MiB(i32 8)
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 23
  %39 = call i32 @MiB(i32 4)
  %40 = mul nsw i32 %38, %39
  %41 = call i32 @MiB(i32 36)
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %29, %22
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MiB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
