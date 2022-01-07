; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_search_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_search_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIV_INVALID = common dso_local global i32 0, align 4
@PCI_INVALID_IRQ = common dso_local global i64 0, align 8
@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCI_MAXHDRTYPE = common dso_local global i32 0, align 4
@PCIM_MFDEV = common dso_local global i32 0, align 4
@PCI_FUNCMAX = common dso_local global i64 0, align 8
@PCIR_INTPIN = common dso_local global i32 0, align 4
@PCIR_INTLINE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"$PIR: Found matching pin for %d.%d.INT%c at func %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32)* @pci_pir_search_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pci_pir_search_irq(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PCIR_VENDOR, align 4
  %14 = call i32 @pci_cfgregread(i32 %11, i32 %12, i64 0, i32 %13, i32 2)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PCIV_INVALID, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @PCI_INVALID_IRQ, align 8
  store i64 %19, i64* %4, align 8
  br label %96

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PCIR_HDRTYPE, align 4
  %24 = call i32 @pci_cfgregread(i32 %21, i32 %22, i64 0, i32 %23, i32 1)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PCIM_HDRTYPE, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @PCI_MAXHDRTYPE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i64, i64* @PCI_INVALID_IRQ, align 8
  store i64 %31, i64* %4, align 8
  br label %96

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @PCIM_MFDEV, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @PCI_FUNCMAX, align 8
  store i64 %38, i64* %10, align 8
  br label %40

39:                                               ; preds = %32
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %39, %37
  store i64 0, i64* %9, align 8
  br label %41

41:                                               ; preds = %91, %40
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %94

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* @PCIR_VENDOR, align 4
  %50 = call i32 @pci_cfgregread(i32 %46, i32 %47, i64 %48, i32 %49, i32 2)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PCIV_INVALID, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %91

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* @PCIR_INTPIN, align 4
  %60 = call i32 @pci_cfgregread(i32 %56, i32 %57, i64 %58, i32 %59, i32 1)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %91

66:                                               ; preds = %55
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* @PCIR_INTLINE, align 4
  %71 = call i32 @pci_cfgregread(i32 %67, i32 %68, i64 %69, i32 %70, i32 1)
  store i32 %71, i32* %8, align 4
  %72 = load i64, i64* @bootverbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 65
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76, i32 %78, i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %66
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @PCI_INVALID_IRQ, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %4, align 8
  br label %96

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %65, %54
  %92 = load i64, i64* %9, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %9, align 8
  br label %41

94:                                               ; preds = %41
  %95 = load i64, i64* @PCI_INVALID_IRQ, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %94, %87, %30, %18
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local i32 @pci_cfgregread(i32, i32, i64, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
