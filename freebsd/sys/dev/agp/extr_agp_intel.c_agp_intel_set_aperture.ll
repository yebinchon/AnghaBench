; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_intel.c_agp_intel_set_aperture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_intel.c_agp_intel_set_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_intel_softc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AGP_INTEL_APSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @agp_intel_set_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_intel_set_aperture(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.agp_intel_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.agp_intel_softc* @device_get_softc(i32 %8)
  store %struct.agp_intel_softc* %9, %struct.agp_intel_softc** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 1
  %12 = ashr i32 %11, 22
  %13 = load %struct.agp_intel_softc*, %struct.agp_intel_softc** %6, align 8
  %14 = getelementptr inbounds %struct.agp_intel_softc, %struct.agp_intel_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.agp_intel_softc*, %struct.agp_intel_softc** %6, align 8
  %19 = getelementptr inbounds %struct.agp_intel_softc, %struct.agp_intel_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %17, %20
  %22 = shl i32 %21, 22
  %23 = or i32 %22, 4194303
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.agp_intel_softc*, %struct.agp_intel_softc** %6, align 8
  %32 = getelementptr inbounds %struct.agp_intel_softc, %struct.agp_intel_softc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @AGP_INTEL_APSIZE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pci_write_config(i32 %33, i32 %34, i32 %35, i32 1)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %27
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.agp_intel_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
