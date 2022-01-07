; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_ari_get_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_ari_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcib_softc = type { i32 }

@PCI_ID_RID = common dso_local global i32 0, align 4
@PCIB_ENABLE_ARI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @pcib_ari_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcib_ari_get_id(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.pcib_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PCI_ID_RID, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @device_get_parent(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i64*, i64** %9, align 8
  %26 = call i32 @PCIB_GET_ID(i32 %22, i32 %23, i32 %24, i64* %25)
  store i32 %26, i32* %5, align 4
  br label %58

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.pcib_softc* @device_get_softc(i32 %28)
  store %struct.pcib_softc* %29, %struct.pcib_softc** %10, align 8
  %30 = load %struct.pcib_softc*, %struct.pcib_softc** %10, align 8
  %31 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PCIB_ENABLE_ARI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @pci_get_bus(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @pci_get_function(i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i64 @PCI_ARI_RID(i32 %41, i32 %42)
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  br label %57

45:                                               ; preds = %27
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @pci_get_bus(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @pci_get_slot(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @pci_get_function(i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i64 @PCI_RID(i32 %52, i32 %53, i32 %54)
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %45, %36
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %18
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @PCIB_GET_ID(i32, i32, i32, i64*) #1

declare dso_local %struct.pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i64 @PCI_ARI_RID(i32, i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i64 @PCI_RID(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
