; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octopci_softc = type { i32 }

@OCTEON_FEATURE_PCIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @octopci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octopci_write_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.octopci_softc*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.octopci_softc* @device_get_softc(i32 %17)
  store %struct.octopci_softc* %18, %struct.octopci_softc** %15, align 8
  %19 = load i32, i32* @OCTEON_FEATURE_PCIE, align 4
  %20 = call i64 @octeon_has_feature(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %7
  %23 = load i32, i32* %14, align 4
  switch i32 %23, label %54 [
    i32 4, label %24
    i32 2, label %34
    i32 1, label %44
  ]

24:                                               ; preds = %22
  %25 = load %struct.octopci_softc*, %struct.octopci_softc** %15, align 8
  %26 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @cvmx_pcie_config_write32(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  br label %77

34:                                               ; preds = %22
  %35 = load %struct.octopci_softc*, %struct.octopci_softc** %15, align 8
  %36 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @cvmx_pcie_config_write16(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  br label %77

44:                                               ; preds = %22
  %45 = load %struct.octopci_softc*, %struct.octopci_softc** %15, align 8
  %46 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @cvmx_pcie_config_write8(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  br label %77

54:                                               ; preds = %22
  br label %77

55:                                               ; preds = %7
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @octopci_cs_addr(i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %14, align 4
  switch i32 %61, label %76 [
    i32 4, label %62
    i32 2, label %67
    i32 1, label %72
  ]

62:                                               ; preds = %55
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @htole32(i32 %64)
  %66 = call i32 @cvmx_write64_uint32(i32 %63, i32 %65)
  br label %77

67:                                               ; preds = %55
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @htole16(i32 %69)
  %71 = call i32 @cvmx_write64_uint16(i32 %68, i32 %70)
  br label %77

72:                                               ; preds = %55
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @cvmx_write64_uint8(i32 %73, i32 %74)
  br label %77

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76, %72, %67, %62, %54, %44, %34, %24
  ret void
}

declare dso_local %struct.octopci_softc* @device_get_softc(i32) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_pcie_config_write32(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cvmx_pcie_config_write16(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cvmx_pcie_config_write8(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @octopci_cs_addr(i32, i32, i32, i32) #1

declare dso_local i32 @cvmx_write64_uint32(i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @cvmx_write64_uint16(i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @cvmx_write64_uint8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
