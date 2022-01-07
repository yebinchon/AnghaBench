; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_ati_softc = type { i32, i32, i32, i32, i32, i32 }

@ATI_RS100_APSIZE = common dso_local global i32 0, align 4
@ATI_RS100_IG_AGPMODE = common dso_local global i32 0, align 4
@ATI_RS300_APSIZE = common dso_local global i32 0, align 4
@ATI_RS300_IG_AGPMODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATI_GART_MMADDR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATI_GART_FEATURE_ID = common dso_local global i32 0, align 4
@ATI_GART_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_ati_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_ati_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_ati_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.agp_ati_softc* @device_get_softc(i32 %10)
  store %struct.agp_ati_softc* %11, %struct.agp_ati_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @agp_generic_attach(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %108

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @pci_get_devid(i32 %19)
  switch i32 %20, label %31 [
    i32 -894431230, label %21
    i32 -894300158, label %21
    i32 -877522942, label %21
    i32 -894234622, label %21
    i32 1479544834, label %26
    i32 1479610370, label %26
    i32 1479675906, label %26
    i32 1479741442, label %26
  ]

21:                                               ; preds = %18, %18, %18, %18
  %22 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %23 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* @ATI_RS100_APSIZE, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @ATI_RS100_IG_AGPMODE, align 4
  store i32 %25, i32* %9, align 4
  br label %33

26:                                               ; preds = %18, %18, %18, %18
  %27 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %28 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @ATI_RS300_APSIZE, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @ATI_RS300_IG_AGPMODE, align 4
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %2, align 4
  br label %108

33:                                               ; preds = %26, %21
  %34 = load i32, i32* @ATI_GART_MMADDR, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SYS_RES_MEMORY, align 4
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = call i32 @bus_alloc_resource_any(i32 %35, i32 %36, i32* %6, i32 %37)
  %39 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %40 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %42 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @agp_generic_detach(i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %2, align 4
  br label %108

49:                                               ; preds = %33
  %50 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %51 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rman_get_bustag(i32 %52)
  %54 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %55 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %57 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rman_get_bushandle(i32 %58)
  %60 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %61 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @AGP_GET_APERTURE(i32 %62)
  %64 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %65 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %80, %49
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @agp_ati_alloc_gatt(i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %81

71:                                               ; preds = %66
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @AGP_GET_APERTURE(i32 %73)
  %75 = sdiv i32 %74, 2
  %76 = call i64 @AGP_SET_APERTURE(i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* %2, align 4
  br label %108

80:                                               ; preds = %71
  br label %66

81:                                               ; preds = %70
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @pci_read_config(i32 %82, i32 %83, i32 4)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, 1
  %89 = call i32 @pci_write_config(i32 %85, i32 %86, i32 %88, i32 4)
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @pci_write_config(i32 %90, i32 %91, i32 131072, i32 4)
  %93 = load i32, i32* @ATI_GART_FEATURE_ID, align 4
  %94 = call i32 @WRITE4(i32 %93, i32 393216)
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @pci_read_config(i32 %95, i32 4, i32 4)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, 16384
  %100 = call i32 @pci_write_config(i32 %97, i32 4, i32 %99, i32 4)
  %101 = load i32, i32* @ATI_GART_BASE, align 4
  %102 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %4, align 8
  %103 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @WRITE4(i32 %101, i32 %104)
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @AGP_FLUSH_TLB(i32 %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %81, %78, %45, %31, %16
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.agp_ati_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_generic_attach(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @agp_generic_detach(i32) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

declare dso_local i64 @agp_ati_alloc_gatt(i32) #1

declare dso_local i64 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @WRITE4(i32, i32) #1

declare dso_local i32 @AGP_FLUSH_TLB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
