; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd.c_agp_amd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd.c_agp_amd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_amd_softc = type { i32, %struct.agp_amd_gatt*, i32, i32, i32 }
%struct.agp_amd_gatt = type { i32 }

@AGP_AMD751_REGISTERS = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AGP_AMD751_ATTBASE = common dso_local global i32 0, align 4
@AGP_AMD751_MODECTRL = common dso_local global i32 0, align 4
@AGP_AMD751_MODECTRL_SYNEN = common dso_local global i32 0, align 4
@AGP_AMD751_MODECTRL2 = common dso_local global i32 0, align 4
@AGP_AMD751_MODECTRL2_GPDCE = common dso_local global i32 0, align 4
@AGP_AMD751_STATUS = common dso_local global i32 0, align 4
@AGP_AMD751_STATUS_GCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_amd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_amd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_amd_softc*, align 8
  %5 = alloca %struct.agp_amd_gatt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.agp_amd_softc* @device_get_softc(i32 %8)
  store %struct.agp_amd_softc* %9, %struct.agp_amd_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @agp_generic_attach(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  %17 = load i32, i32* @AGP_AMD751_REGISTERS, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SYS_RES_MEMORY, align 4
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i32 @bus_alloc_resource_any(i32 %18, i32 %19, i32* %7, i32 %20)
  %22 = load %struct.agp_amd_softc*, %struct.agp_amd_softc** %4, align 8
  %23 = getelementptr inbounds %struct.agp_amd_softc, %struct.agp_amd_softc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.agp_amd_softc*, %struct.agp_amd_softc** %4, align 8
  %25 = getelementptr inbounds %struct.agp_amd_softc, %struct.agp_amd_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @agp_generic_detach(i32 %29)
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %2, align 4
  br label %90

32:                                               ; preds = %16
  %33 = load %struct.agp_amd_softc*, %struct.agp_amd_softc** %4, align 8
  %34 = getelementptr inbounds %struct.agp_amd_softc, %struct.agp_amd_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @rman_get_bustag(i32 %35)
  %37 = load %struct.agp_amd_softc*, %struct.agp_amd_softc** %4, align 8
  %38 = getelementptr inbounds %struct.agp_amd_softc, %struct.agp_amd_softc* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.agp_amd_softc*, %struct.agp_amd_softc** %4, align 8
  %40 = getelementptr inbounds %struct.agp_amd_softc, %struct.agp_amd_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @rman_get_bushandle(i32 %41)
  %43 = load %struct.agp_amd_softc*, %struct.agp_amd_softc** %4, align 8
  %44 = getelementptr inbounds %struct.agp_amd_softc, %struct.agp_amd_softc* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @AGP_GET_APERTURE(i32 %45)
  %47 = load %struct.agp_amd_softc*, %struct.agp_amd_softc** %4, align 8
  %48 = getelementptr inbounds %struct.agp_amd_softc, %struct.agp_amd_softc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %64, %32
  %50 = load i32, i32* %3, align 4
  %51 = call %struct.agp_amd_gatt* @agp_amd_alloc_gatt(i32 %50)
  store %struct.agp_amd_gatt* %51, %struct.agp_amd_gatt** %5, align 8
  %52 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %5, align 8
  %53 = icmp ne %struct.agp_amd_gatt* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %65

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @AGP_GET_APERTURE(i32 %57)
  %59 = sdiv i32 %58, 2
  %60 = call i64 @AGP_SET_APERTURE(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOMEM, align 4
  store i32 %63, i32* %2, align 4
  br label %90

64:                                               ; preds = %55
  br label %49

65:                                               ; preds = %54
  %66 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %5, align 8
  %67 = load %struct.agp_amd_softc*, %struct.agp_amd_softc** %4, align 8
  %68 = getelementptr inbounds %struct.agp_amd_softc, %struct.agp_amd_softc* %67, i32 0, i32 1
  store %struct.agp_amd_gatt* %66, %struct.agp_amd_gatt** %68, align 8
  %69 = load i32, i32* @AGP_AMD751_ATTBASE, align 4
  %70 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %5, align 8
  %71 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @WRITE4(i32 %69, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @AGP_AMD751_MODECTRL, align 4
  %76 = load i32, i32* @AGP_AMD751_MODECTRL_SYNEN, align 4
  %77 = call i32 @pci_write_config(i32 %74, i32 %75, i32 %76, i32 1)
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @AGP_AMD751_MODECTRL2, align 4
  %80 = load i32, i32* @AGP_AMD751_MODECTRL2_GPDCE, align 4
  %81 = call i32 @pci_write_config(i32 %78, i32 %79, i32 %80, i32 1)
  %82 = load i32, i32* @AGP_AMD751_STATUS, align 4
  %83 = load i32, i32* @AGP_AMD751_STATUS, align 4
  %84 = call i32 @READ2(i32 %83)
  %85 = load i32, i32* @AGP_AMD751_STATUS_GCE, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @WRITE2(i32 %82, i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @AGP_FLUSH_TLB(i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %65, %62, %28, %14
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.agp_amd_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_generic_attach(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @agp_generic_detach(i32) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

declare dso_local %struct.agp_amd_gatt* @agp_amd_alloc_gatt(i32) #1

declare dso_local i64 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @WRITE4(i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @WRITE2(i32, i32) #1

declare dso_local i32 @READ2(i32) #1

declare dso_local i32 @AGP_FLUSH_TLB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
