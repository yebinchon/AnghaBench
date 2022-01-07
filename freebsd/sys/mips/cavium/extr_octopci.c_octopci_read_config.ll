; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octopci_softc = type { i32 }

@OCTEON_FEATURE_PCIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64, i32)* @octopci_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octopci_read_config(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.octopci_softc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.octopci_softc* @device_get_softc(i32 %17)
  store %struct.octopci_softc* %18, %struct.octopci_softc** %14, align 8
  %19 = load i32, i32* @OCTEON_FEATURE_PCIE, align 4
  %20 = call i64 @octeon_has_feature(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %6
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 -1, i32* %7, align 4
  br label %84

32:                                               ; preds = %28, %25, %22
  %33 = load i32, i32* %13, align 4
  switch i32 %33, label %61 [
    i32 4, label %34
    i32 2, label %43
    i32 1, label %52
  ]

34:                                               ; preds = %32
  %35 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %36 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @cvmx_pcie_config_read32(i32 %37, i64 %38, i64 %39, i64 %40, i64 %41)
  store i32 %42, i32* %7, align 4
  br label %84

43:                                               ; preds = %32
  %44 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %45 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @cvmx_pcie_config_read16(i32 %46, i64 %47, i64 %48, i64 %49, i64 %50)
  store i32 %51, i32* %7, align 4
  br label %84

52:                                               ; preds = %32
  %53 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %54 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @cvmx_pcie_config_read8(i32 %55, i64 %56, i64 %57, i64 %58, i64 %59)
  store i32 %60, i32* %7, align 4
  br label %84

61:                                               ; preds = %32
  store i32 -1, i32* %7, align 4
  br label %84

62:                                               ; preds = %6
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @octopci_cs_addr(i64 %63, i64 %64, i64 %65, i64 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %13, align 4
  switch i32 %68, label %83 [
    i32 4, label %69
    i32 2, label %74
    i32 1, label %79
  ]

69:                                               ; preds = %62
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @cvmx_read64_uint32(i32 %70)
  %72 = call i32 @le32toh(i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %7, align 4
  br label %84

74:                                               ; preds = %62
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @cvmx_read64_uint16(i32 %75)
  %77 = call i32 @le16toh(i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  store i32 %78, i32* %7, align 4
  br label %84

79:                                               ; preds = %62
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @cvmx_read64_uint8(i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %7, align 4
  br label %84

83:                                               ; preds = %62
  store i32 -1, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %79, %74, %69, %61, %52, %43, %34, %31
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local %struct.octopci_softc* @device_get_softc(i32) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_pcie_config_read32(i32, i64, i64, i64, i64) #1

declare dso_local i32 @cvmx_pcie_config_read16(i32, i64, i64, i64, i64) #1

declare dso_local i32 @cvmx_pcie_config_read8(i32, i64, i64, i64, i64) #1

declare dso_local i32 @octopci_cs_addr(i64, i64, i64, i64) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @cvmx_read64_uint32(i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @cvmx_read64_uint16(i32) #1

declare dso_local i32 @cvmx_read64_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
