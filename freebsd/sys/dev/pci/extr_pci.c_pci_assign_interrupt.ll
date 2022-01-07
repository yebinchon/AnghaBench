; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_assign_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_assign_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@PCI_INVALID_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"hw.pci%d.%d.%d.INT%c.irq\00", align 1
@PCIR_INTLINE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @pci_assign_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_assign_interrupt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_devinfo*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.pci_devinfo* @device_get_ivars(i32 %11)
  store %struct.pci_devinfo* %12, %struct.pci_devinfo** %7, align 8
  %13 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %14 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %13, i32 0, i32 1
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %8, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %101

20:                                               ; preds = %3
  %21 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %21, i32* %10, align 4
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 65
  %36 = sub nsw i64 %35, 1
  %37 = call i32 @snprintf(i8* %22, i32 64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i64 %36)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %39 = call i64 @TUNABLE_INT_FETCH(i8* %38, i32* %10)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %20
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %42, 255
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %47, %44, %20
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @PCI_INTERRUPT_VALID(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PCI_INTERRUPT_VALID(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59, %53
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @PCI_ASSIGN_INTERRUPT(i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @PCI_INTERRUPT_VALID(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @PCI_INTERRUPT_VALID(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %101

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @PCIR_INTLINE, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @pci_write_config(i32 %90, i32 %91, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %86, %80
  %95 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %96 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %95, i32 0, i32 0
  %97 = load i32, i32* @SYS_RES_IRQ, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @resource_list_add(i32* %96, i32 %97, i32 0, i32 %98, i32 %99, i32 1)
  br label %101

101:                                              ; preds = %94, %79, %19
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i64) #1

declare dso_local i64 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @PCI_INTERRUPT_VALID(i32) #1

declare dso_local i32 @PCI_ASSIGN_INTERRUPT(i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
