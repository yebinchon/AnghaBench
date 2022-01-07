; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_apple.c_agp_apple_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_apple.c_agp_apple_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_apple_softc = type { i32, i64 }

@UNIN_AGP_GART_CONTROL = common dso_local global i32 0, align 4
@UNIN_AGP_GART_INVAL = common dso_local global i32 0, align 4
@UNIN_AGP_GART_2XRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_apple_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_apple_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_apple_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.agp_apple_softc* @device_get_softc(i32 %4)
  store %struct.agp_apple_softc* %5, %struct.agp_apple_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @agp_free_cdev(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @UNIN_AGP_GART_CONTROL, align 4
  %10 = load i32, i32* @UNIN_AGP_GART_INVAL, align 4
  %11 = call i32 @pci_write_config(i32 %8, i32 %9, i32 %10, i32 4)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @UNIN_AGP_GART_CONTROL, align 4
  %14 = call i32 @pci_write_config(i32 %12, i32 %13, i32 0, i32 4)
  %15 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %3, align 8
  %16 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @UNIN_AGP_GART_CONTROL, align 4
  %22 = load i32, i32* @UNIN_AGP_GART_2XRESET, align 4
  %23 = call i32 @pci_write_config(i32 %20, i32 %21, i32 %22, i32 4)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @UNIN_AGP_GART_CONTROL, align 4
  %26 = call i32 @pci_write_config(i32 %24, i32 %25, i32 0, i32 4)
  br label %27

27:                                               ; preds = %19, %1
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @AGP_SET_APERTURE(i32 %28, i32 0)
  %30 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %3, align 8
  %31 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @agp_free_gatt(i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @agp_free_res(i32 %34)
  ret i32 0
}

declare dso_local %struct.agp_apple_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_free_cdev(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @agp_free_gatt(i32) #1

declare dso_local i32 @agp_free_res(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
