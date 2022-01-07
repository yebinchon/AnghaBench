; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_pci_route_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_pci_route_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_route_interrupt_args = type { i32, i32, i64 }

@pci0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"do not know how to route PCI interrupts\00", align 1
@mptable_pci_route_interrupt_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to route slot %d INT%c\0A\00", align 1
@PCI_INVALID_IRQ = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"slot %d INT%c routed to irq %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mptable_pci_route_interrupt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_route_interrupt_args, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @pci0, align 4
  %13 = icmp ne i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @pci_get_bus(i32 %16)
  %18 = load i32, i32* @pci0, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %8, i32 0, i32 2
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pci_get_slot(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 %24, 2
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %8, i32 0, i32 1
  store i32 -1, i32* %29, align 4
  %30 = load i32, i32* @mptable_pci_route_interrupt_handler, align 4
  %31 = call i32 @mptable_walk_table(i32 %30, %struct.pci_route_interrupt_args* %8)
  %32 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 65, %38
  %40 = trunc i32 %39 to i8
  %41 = call i32 (i32, i8*, i32, i8, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8 signext %40)
  %42 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %42, i32* %4, align 4
  br label %58

43:                                               ; preds = %3
  %44 = load i64, i64* @bootverbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 65, %49
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %8, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, i32, i8, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8 signext %51, i32 %53)
  br label %55

55:                                               ; preds = %46, %43
  %56 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %35
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @mptable_walk_table(i32, %struct.pci_route_interrupt_args*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
