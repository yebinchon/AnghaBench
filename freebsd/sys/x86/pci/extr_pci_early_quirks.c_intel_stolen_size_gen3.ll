; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_pci_early_quirks.c_intel_stolen_size_gen3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_pci_early_quirks.c_intel_stolen_size_gen3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I830_GMCH_CTRL = common dso_local global i32 0, align 4
@I855_GMCH_GMS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @intel_stolen_size_gen3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_stolen_size_gen3(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @I830_GMCH_CTRL, align 4
  %11 = call i32 @pci_cfgregread(i32 0, i32 0, i32 0, i32 %10, i32 2)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @I855_GMCH_GMS_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %42 [
    i32 137, label %16
    i32 135, label %18
    i32 134, label %20
    i32 138, label %22
    i32 136, label %24
    i32 133, label %26
    i32 132, label %28
    i32 140, label %30
    i32 139, label %32
    i32 128, label %34
    i32 131, label %36
    i32 130, label %38
    i32 129, label %40
  ]

16:                                               ; preds = %3
  %17 = call i32 @MiB(i32 1)
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = call i32 @MiB(i32 4)
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = call i32 @MiB(i32 8)
  store i32 %21, i32* %4, align 4
  br label %43

22:                                               ; preds = %3
  %23 = call i32 @MiB(i32 16)
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %3
  %25 = call i32 @MiB(i32 32)
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %3
  %27 = call i32 @MiB(i32 48)
  store i32 %27, i32* %4, align 4
  br label %43

28:                                               ; preds = %3
  %29 = call i32 @MiB(i32 64)
  store i32 %29, i32* %4, align 4
  br label %43

30:                                               ; preds = %3
  %31 = call i32 @MiB(i32 128)
  store i32 %31, i32* %4, align 4
  br label %43

32:                                               ; preds = %3
  %33 = call i32 @MiB(i32 256)
  store i32 %33, i32* %4, align 4
  br label %43

34:                                               ; preds = %3
  %35 = call i32 @MiB(i32 96)
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %3
  %37 = call i32 @MiB(i32 160)
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %3
  %39 = call i32 @MiB(i32 224)
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %3
  %41 = call i32 @MiB(i32 352)
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16
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
