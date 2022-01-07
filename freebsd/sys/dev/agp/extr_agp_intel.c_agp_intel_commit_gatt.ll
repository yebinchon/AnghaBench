; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_intel.c_agp_intel_commit_gatt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_intel.c_agp_intel_commit_gatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_intel_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AGP_INTEL_ATTBASE = common dso_local global i32 0, align 4
@AGP_INTEL_AGPCTRL = common dso_local global i32 0, align 4
@AGP_INTEL_I820_RDCR = common dso_local global i32 0, align 4
@AGP_INTEL_I845_AGPM = common dso_local global i32 0, align 4
@AGP_INTEL_MCHCFG = common dso_local global i32 0, align 4
@AGP_INTEL_NBXCFG = common dso_local global i32 0, align 4
@AGP_INTEL_I8XX_ERRSTS = common dso_local global i32 0, align 4
@AGP_INTEL_ERRSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @agp_intel_commit_gatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_intel_commit_gatt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_intel_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.agp_intel_softc* @device_get_softc(i32 %6)
  store %struct.agp_intel_softc* %7, %struct.agp_intel_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @pci_get_devid(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @AGP_INTEL_ATTBASE, align 4
  %12 = load %struct.agp_intel_softc*, %struct.agp_intel_softc** %3, align 8
  %13 = getelementptr inbounds %struct.agp_intel_softc, %struct.agp_intel_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_write_config(i32 %10, i32 %11, i32 %16, i32 4)
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %27 [
    i32 1905295494, label %19
    i32 1904246918, label %23
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @AGP_INTEL_AGPCTRL, align 4
  %22 = call i32 @pci_write_config(i32 %20, i32 %21, i32 8320, i32 4)
  br label %36

23:                                               ; preds = %1
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @AGP_INTEL_AGPCTRL, align 4
  %26 = call i32 @pci_write_config(i32 %24, i32 %25, i32 8832, i32 4)
  br label %36

27:                                               ; preds = %1
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @AGP_INTEL_AGPCTRL, align 4
  %30 = call i32 @pci_read_config(i32 %28, i32 %29, i32 4)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @AGP_INTEL_AGPCTRL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, 128
  %35 = call i32 @pci_write_config(i32 %31, i32 %32, i32 %34, i32 4)
  br label %36

36:                                               ; preds = %27, %23, %19
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %62 [
    i32 620789894, label %38
    i32 620855430, label %38
    i32 439386246, label %46
    i32 627081350, label %46
    i32 859865222, label %46
    i32 897613958, label %46
    i32 628129926, label %46
    i32 628654214, label %46
    i32 438403206, label %54
    i32 623935622, label %54
    i32 624001158, label %54
    i32 626884742, label %54
    i32 626032774, label %54
  ]

38:                                               ; preds = %36, %36
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @AGP_INTEL_I820_RDCR, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @AGP_INTEL_I820_RDCR, align 4
  %43 = call i32 @pci_read_config(i32 %41, i32 %42, i32 1)
  %44 = or i32 %43, 2
  %45 = call i32 @pci_write_config(i32 %39, i32 %40, i32 %44, i32 1)
  br label %71

46:                                               ; preds = %36, %36, %36, %36, %36, %36
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @AGP_INTEL_I845_AGPM, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @AGP_INTEL_I845_AGPM, align 4
  %51 = call i32 @pci_read_config(i32 %49, i32 %50, i32 1)
  %52 = or i32 %51, 2
  %53 = call i32 @pci_write_config(i32 %47, i32 %48, i32 %52, i32 1)
  br label %71

54:                                               ; preds = %36, %36, %36, %36, %36
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @AGP_INTEL_MCHCFG, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @AGP_INTEL_MCHCFG, align 4
  %59 = call i32 @pci_read_config(i32 %57, i32 %58, i32 2)
  %60 = or i32 %59, 512
  %61 = call i32 @pci_write_config(i32 %55, i32 %56, i32 %60, i32 2)
  br label %71

62:                                               ; preds = %36
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @AGP_INTEL_NBXCFG, align 4
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @AGP_INTEL_NBXCFG, align 4
  %67 = call i32 @pci_read_config(i32 %65, i32 %66, i32 4)
  %68 = and i32 %67, -1025
  %69 = or i32 %68, 512
  %70 = call i32 @pci_write_config(i32 %63, i32 %64, i32 %69, i32 4)
  br label %71

71:                                               ; preds = %62, %54, %46, %38
  %72 = load i32, i32* %4, align 4
  switch i32 %72, label %81 [
    i32 438403206, label %73
    i32 620789894, label %77
    i32 620855430, label %77
    i32 439386246, label %77
    i32 627081350, label %77
    i32 623935622, label %77
    i32 859865222, label %77
    i32 624001158, label %77
    i32 628129926, label %77
    i32 628654214, label %77
    i32 626884742, label %77
    i32 626032774, label %77
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @AGP_INTEL_I8XX_ERRSTS, align 4
  %76 = call i32 @pci_write_config(i32 %74, i32 %75, i32 49152, i32 2)
  br label %86

77:                                               ; preds = %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @AGP_INTEL_I8XX_ERRSTS, align 4
  %80 = call i32 @pci_write_config(i32 %78, i32 %79, i32 255, i32 2)
  br label %86

81:                                               ; preds = %71
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @AGP_INTEL_ERRSTS, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @pci_write_config(i32 %82, i32 %84, i32 7, i32 1)
  br label %86

86:                                               ; preds = %81, %77, %73
  ret void
}

declare dso_local %struct.agp_intel_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
