; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_intel.c_agp_intel_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_intel.c_agp_intel_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_intel_softc = type { i32, i32, i32, %struct.agp_gatt* }
%struct.agp_gatt = type { i32 }

@AGP_INTEL_APSIZE = common dso_local global i32 0, align 4
@MAX_APSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_intel_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_intel_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_intel_softc*, align 8
  %5 = alloca %struct.agp_gatt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.agp_intel_softc* @device_get_softc(i32 %8)
  store %struct.agp_intel_softc* %9, %struct.agp_intel_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @agp_generic_attach(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @AGP_INTEL_APSIZE, align 4
  %19 = call i32 @pci_read_config(i32 %17, i32 %18, i32 1)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @AGP_INTEL_APSIZE, align 4
  %22 = load i32, i32* @MAX_APSIZE, align 4
  %23 = call i32 @pci_write_config(i32 %20, i32 %21, i32 %22, i32 1)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @AGP_INTEL_APSIZE, align 4
  %26 = call i32 @pci_read_config(i32 %24, i32 %25, i32 1)
  %27 = load i32, i32* @MAX_APSIZE, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.agp_intel_softc*, %struct.agp_intel_softc** %4, align 8
  %30 = getelementptr inbounds %struct.agp_intel_softc, %struct.agp_intel_softc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @AGP_INTEL_APSIZE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @pci_write_config(i32 %31, i32 %32, i32 %33, i32 1)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @AGP_GET_APERTURE(i32 %35)
  %37 = load %struct.agp_intel_softc*, %struct.agp_intel_softc** %4, align 8
  %38 = getelementptr inbounds %struct.agp_intel_softc, %struct.agp_intel_softc* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.agp_intel_softc*, %struct.agp_intel_softc** %4, align 8
  %40 = getelementptr inbounds %struct.agp_intel_softc, %struct.agp_intel_softc* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %58, %16
  %42 = load i32, i32* %3, align 4
  %43 = call %struct.agp_gatt* @agp_alloc_gatt(i32 %42)
  store %struct.agp_gatt* %43, %struct.agp_gatt** %5, align 8
  %44 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %45 = icmp ne %struct.agp_gatt* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %59

47:                                               ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @AGP_GET_APERTURE(i32 %49)
  %51 = sdiv i32 %50, 2
  %52 = call i64 @AGP_SET_APERTURE(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @agp_generic_detach(i32 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %2, align 4
  br label %65

58:                                               ; preds = %47
  br label %41

59:                                               ; preds = %46
  %60 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %61 = load %struct.agp_intel_softc*, %struct.agp_intel_softc** %4, align 8
  %62 = getelementptr inbounds %struct.agp_intel_softc, %struct.agp_intel_softc* %61, i32 0, i32 3
  store %struct.agp_gatt* %60, %struct.agp_gatt** %62, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @agp_intel_commit_gatt(i32 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %54, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.agp_intel_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_generic_attach(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

declare dso_local %struct.agp_gatt* @agp_alloc_gatt(i32) #1

declare dso_local i64 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @agp_generic_detach(i32) #1

declare dso_local i32 @agp_intel_commit_gatt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
