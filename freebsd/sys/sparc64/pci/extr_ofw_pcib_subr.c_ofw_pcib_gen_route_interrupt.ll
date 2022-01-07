; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_ofw_pcib_subr.c_ofw_pcib_gen_route_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_ofw_pcib_subr.c_ofw_pcib_gen_route_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_pcib_gen_softc = type { %struct.ofw_bus_iinfo }
%struct.ofw_bus_iinfo = type { i64 }
%struct.ofw_pci_register = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_pcib_gen_route_interrupt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ofw_pcib_gen_softc*, align 8
  %9 = alloca %struct.ofw_bus_iinfo*, align 8
  %10 = alloca %struct.ofw_pci_register, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.ofw_pcib_gen_softc* @device_get_softc(i32 %13)
  store %struct.ofw_pcib_gen_softc* %14, %struct.ofw_pcib_gen_softc** %8, align 8
  %15 = load %struct.ofw_pcib_gen_softc*, %struct.ofw_pcib_gen_softc** %8, align 8
  %16 = getelementptr inbounds %struct.ofw_pcib_gen_softc, %struct.ofw_pcib_gen_softc* %15, i32 0, i32 0
  store %struct.ofw_bus_iinfo* %16, %struct.ofw_bus_iinfo** %9, align 8
  %17 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %9, align 8
  %18 = getelementptr inbounds %struct.ofw_bus_iinfo, %struct.ofw_bus_iinfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ofw_bus_get_node(i32 %23)
  %25 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %9, align 8
  %26 = call i64 @ofw_bus_lookup_imap(i32 %24, %struct.ofw_bus_iinfo* %25, %struct.ofw_pci_register* %10, i32 4, i32* %11, i32 4, i32* %12, i32 4, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %4, align 4
  br label %50

30:                                               ; preds = %21
  br label %43

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %35, 4
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @pcib_route_interrupt(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %50

42:                                               ; preds = %34, %31
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @device_get_parent(i32 %44)
  %46 = call i32 @device_get_parent(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @PCIB_ROUTE_INTERRUPT(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %37, %28
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.ofw_pcib_gen_softc* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_lookup_imap(i32, %struct.ofw_bus_iinfo*, %struct.ofw_pci_register*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @pcib_route_interrupt(i32, i32, i32) #1

declare dso_local i32 @PCIB_ROUTE_INTERRUPT(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
