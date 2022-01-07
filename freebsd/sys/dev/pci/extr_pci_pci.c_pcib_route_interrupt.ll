; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_route_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_route_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"slot %d INT%c is routed to irq %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcib_route_interrupt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @pci_get_slot(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 1
  %14 = add nsw i32 %11, %13
  %15 = srem i32 %14, 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @device_get_parent(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @PCIB_ROUTE_INTERRUPT(i32 %19, i32 %20, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @PCI_INTERRUPT_VALID(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load i64, i64* @bootverbose, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pci_get_slot(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 65, %34
  %36 = sub nsw i32 %35, 1
  %37 = trunc i32 %36 to i8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33, i8 signext %37, i32 %38)
  br label %40

40:                                               ; preds = %30, %27, %3
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @PCIB_ROUTE_INTERRUPT(i32, i32, i32) #1

declare dso_local i64 @PCI_INTERRUPT_VALID(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
