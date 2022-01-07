; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_route_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_route_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psycho_softc = type { i32 }

@PSR_PCIA0_INT_MAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"guessing interrupt %d for device %d.%d pin %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @psycho_route_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psycho_route_interrupt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.psycho_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ofw_pci_route_interrupt_common(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i64 @PCI_INTERRUPT_VALID(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.psycho_softc* @device_get_softc(i32 %26)
  store %struct.psycho_softc* %27, %struct.psycho_softc** %8, align 8
  %28 = load i64, i64* @PSR_PCIA0_INT_MAP, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pci_get_slot(i32 %29)
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.psycho_softc*, %struct.psycho_softc** %8, align 8
  %33 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 3, %34
  %36 = add nsw i32 %31, %35
  %37 = mul nsw i32 8, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %28, %38
  store i64 %39, i64* %9, align 8
  %40 = load %struct.psycho_softc*, %struct.psycho_softc** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @PSYCHO_READ8(%struct.psycho_softc* %40, i64 %41)
  %43 = call i32 @INTINO(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pci_get_slot(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @pci_get_function(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %50, i32 %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %25, %23, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ofw_pci_route_interrupt_common(i32, i32, i32) #1

declare dso_local i64 @PCI_INTERRUPT_VALID(i32) #1

declare dso_local %struct.psycho_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @INTINO(i32) #1

declare dso_local i32 @PSYCHO_READ8(%struct.psycho_softc*, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
