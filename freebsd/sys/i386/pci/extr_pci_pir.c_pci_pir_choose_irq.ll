; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_choose_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_choose_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_link = type { i32, i32 }

@PCI_INVALID_IRQ = common dso_local global i32 0, align 4
@NUM_ISA_INTERRUPTS = common dso_local global i32 0, align 4
@pir_interrupt_weight = common dso_local global i64* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"$PIR: Found IRQ %d for link %#x from \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_link*, i32)* @pci_pir_choose_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_pir_choose_irq(%struct.pci_link* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_link* %0, %struct.pci_link** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_link*, %struct.pci_link** %4, align 8
  %10 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %17, i32* %3, align 4
  br label %71

18:                                               ; preds = %2
  %19 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %50, %18
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NUM_ISA_INTERRUPTS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %50

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PCI_INVALID_IRQ, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = load i64*, i64** @pir_interrupt_weight, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** @pir_interrupt_weight, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %40, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %35, %31
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %35
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %20

53:                                               ; preds = %20
  %54 = load i64, i64* @bootverbose, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @PCI_INTERRUPT_VALID(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.pci_link*, %struct.pci_link** %4, align 8
  %63 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @pci_print_irqmask(i32 %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %60, %56, %53
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @PCI_INTERRUPT_VALID(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pci_print_irqmask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
