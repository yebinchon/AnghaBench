; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_pci.c_opalpci_alloc_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_pci.c_opalpci_alloc_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opalpci_softc = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@VMEM_ADDR_MIN = common dso_local global i32 0, align 4
@VMEM_ADDR_MAX = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @opalpci_alloc_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opalpci_alloc_msi(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.opalpci_softc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.opalpci_softc* @device_get_softc(i32 %17)
  store %struct.opalpci_softc* %18, %struct.opalpci_softc** %12, align 8
  %19 = load %struct.opalpci_softc*, %struct.opalpci_softc** %12, align 8
  %20 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @ENODEV, align 4
  store i32 %24, i32* %6, align 4
  br label %65

25:                                               ; preds = %5
  %26 = load %struct.opalpci_softc*, %struct.opalpci_softc** %12, align 8
  %27 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @powerof2(i32 %30)
  %32 = load i32, i32* @VMEM_ADDR_MIN, align 4
  %33 = load i32, i32* @VMEM_ADDR_MAX, align 4
  %34 = load i32, i32* @M_BESTFIT, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @vmem_xalloc(i32* %28, i32 %29, i32 %31, i32 0, i32 0, i32 %32, i32 %33, i32 %36, i64* %13)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %6, align 4
  br label %65

42:                                               ; preds = %25
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ofw_bus_get_node(i32 %43)
  %45 = call i32 @OF_xref_from_node(i32 %44)
  store i32 %45, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %61, %42
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  %52 = load i64, i64* %13, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @MAP_IRQ(i32 %51, i64 %55)
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %16, align 4
  br label %46

64:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %40, %23
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.opalpci_softc* @device_get_softc(i32) #1

declare dso_local i32 @vmem_xalloc(i32*, i32, i32, i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @MAP_IRQ(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
