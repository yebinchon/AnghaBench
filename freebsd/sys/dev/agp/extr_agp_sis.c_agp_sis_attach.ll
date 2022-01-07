; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_sis.c_agp_sis_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_sis.c_agp_sis_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_sis_softc = type { i32, %struct.agp_gatt* }
%struct.agp_gatt = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AGP_SIS_ATTBASE = common dso_local global i32 0, align 4
@AGP_SIS_WINCTRL = common dso_local global i32 0, align 4
@AGP_SIS_TLBCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_sis_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_sis_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_sis_softc*, align 8
  %5 = alloca %struct.agp_gatt*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.agp_sis_softc* @device_get_softc(i32 %7)
  store %struct.agp_sis_softc* %8, %struct.agp_sis_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @agp_generic_attach(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @AGP_GET_APERTURE(i32 %16)
  %18 = load %struct.agp_sis_softc*, %struct.agp_sis_softc** %4, align 8
  %19 = getelementptr inbounds %struct.agp_sis_softc, %struct.agp_sis_softc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %37, %15
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.agp_gatt* @agp_alloc_gatt(i32 %21)
  store %struct.agp_gatt* %22, %struct.agp_gatt** %5, align 8
  %23 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %24 = icmp ne %struct.agp_gatt* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %38

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @AGP_GET_APERTURE(i32 %28)
  %30 = sdiv i32 %29, 2
  %31 = call i64 @AGP_SET_APERTURE(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @agp_generic_detach(i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %2, align 4
  br label %58

37:                                               ; preds = %26
  br label %20

38:                                               ; preds = %25
  %39 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %40 = load %struct.agp_sis_softc*, %struct.agp_sis_softc** %4, align 8
  %41 = getelementptr inbounds %struct.agp_sis_softc, %struct.agp_sis_softc* %40, i32 0, i32 1
  store %struct.agp_gatt* %39, %struct.agp_gatt** %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @AGP_SIS_ATTBASE, align 4
  %44 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %45 = getelementptr inbounds %struct.agp_gatt, %struct.agp_gatt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pci_write_config(i32 %42, i32 %43, i32 %46, i32 4)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @AGP_SIS_WINCTRL, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @AGP_SIS_WINCTRL, align 4
  %52 = call i32 @pci_read_config(i32 %50, i32 %51, i32 1)
  %53 = or i32 %52, 3
  %54 = call i32 @pci_write_config(i32 %48, i32 %49, i32 %53, i32 1)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @AGP_SIS_TLBCTRL, align 4
  %57 = call i32 @pci_write_config(i32 %55, i32 %56, i32 5, i32 1)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %38, %33, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.agp_sis_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_generic_attach(i32) #1

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

declare dso_local %struct.agp_gatt* @agp_alloc_gatt(i32) #1

declare dso_local i64 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @agp_generic_detach(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
