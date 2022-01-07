; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_pci_early_quirks.c_intel_graphics_stolen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_pci_early_quirks.c_intel_graphics_stolen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.intel_stolen_ops* }
%struct.intel_stolen_ops = type { i32 (i32, i32, i32)*, i32 (i32, i32, i32)* }

@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCI_VENDOR_INTEL = common dso_local global i64 0, align 8
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCI_CLASS_VGA = common dso_local global i64 0, align 8
@PCIR_DEVICE = common dso_local global i32 0, align 4
@intel_ids = common dso_local global %struct.TYPE_3__* null, align 8
@intel_graphics_stolen_base = common dso_local global i32 0, align 4
@intel_graphics_stolen_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_graphics_stolen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_graphics_stolen() #0 {
  %1 = alloca %struct.intel_stolen_ops*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  store i32 2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = call i64 (...) @pci_cfgregopen()
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %66

12:                                               ; preds = %0
  %13 = load i32, i32* @PCIR_VENDOR, align 4
  %14 = call i64 @pci_cfgregread(i32 0, i32 2, i32 0, i32 %13, i32 2)
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @PCI_VENDOR_INTEL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %66

19:                                               ; preds = %12
  %20 = load i32, i32* @PCIR_SUBCLASS, align 4
  %21 = call i64 @pci_cfgregread(i32 0, i32 2, i32 0, i32 %20, i32 2)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @PCI_CLASS_VGA, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %66

26:                                               ; preds = %19
  %27 = load i32, i32* @PCIR_DEVICE, align 4
  %28 = call i64 @pci_cfgregread(i32 0, i32 2, i32 0, i32 %27, i32 2)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp eq i64 %29, 65535
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %66

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @intel_ids, align 8
  %36 = call i32 @nitems(%struct.TYPE_3__* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @intel_ids, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %63

48:                                               ; preds = %38
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @intel_ids, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load %struct.intel_stolen_ops*, %struct.intel_stolen_ops** %53, align 8
  store %struct.intel_stolen_ops* %54, %struct.intel_stolen_ops** %1, align 8
  %55 = load %struct.intel_stolen_ops*, %struct.intel_stolen_ops** %1, align 8
  %56 = getelementptr inbounds %struct.intel_stolen_ops, %struct.intel_stolen_ops* %55, i32 0, i32 1
  %57 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %56, align 8
  %58 = call i32 %57(i32 0, i32 2, i32 0)
  store i32 %58, i32* @intel_graphics_stolen_base, align 4
  %59 = load %struct.intel_stolen_ops*, %struct.intel_stolen_ops** %1, align 8
  %60 = getelementptr inbounds %struct.intel_stolen_ops, %struct.intel_stolen_ops* %59, i32 0, i32 0
  %61 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %60, align 8
  %62 = call i32 %61(i32 0, i32 2, i32 0)
  store i32 %62, i32* @intel_graphics_stolen_size, align 4
  br label %66

63:                                               ; preds = %47
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %33

66:                                               ; preds = %11, %18, %25, %31, %48, %33
  ret void
}

declare dso_local i64 @pci_cfgregopen(...) #1

declare dso_local i64 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
