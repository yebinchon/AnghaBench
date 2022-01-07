; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_generic_pcie_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_generic_pcie_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pcie_core_softc = type { i64, i64 }

@PCIB_IVAR_BUS = common dso_local global i32 0, align 4
@PCIB_IVAR_DOMAIN = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"ERROR: Unknown index %d.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @generic_pcie_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_pcie_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.generic_pcie_core_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.generic_pcie_core_softc* @device_get_softc(i32 %11)
  store %struct.generic_pcie_core_softc* %12, %struct.generic_pcie_core_softc** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PCIB_IVAR_BUS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %10, align 8
  %18 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %9, align 8
  store i64 %19, i64* %20, align 8
  store i32 0, i32* %5, align 4
  br label %39

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PCIB_IVAR_DOMAIN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %10, align 8
  %27 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %9, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %5, align 4
  br label %39

30:                                               ; preds = %21
  %31 = load i64, i64* @bootverbose, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* @ENOENT, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %25, %16
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.generic_pcie_core_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
