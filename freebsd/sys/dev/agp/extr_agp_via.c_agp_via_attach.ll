; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_via_softc = type { i32, i64*, %struct.agp_gatt* }
%struct.agp_gatt = type { i32 }

@via_v2_regs = common dso_local global i64* null, align 8
@AGP_CAPID = common dso_local global i64 0, align 8
@AGP_VIA_AGPSEL = common dso_local global i64 0, align 8
@via_v3_regs = common dso_local global i64* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@REG_ATTBASE = common dso_local global i64 0, align 8
@REG_GARTCTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"aperture size is %dM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_via_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_via_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_via_softc*, align 8
  %5 = alloca %struct.agp_gatt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.agp_via_softc* @device_get_softc(i32 %10)
  store %struct.agp_via_softc* %11, %struct.agp_via_softc** %4, align 8
  %12 = load i64*, i64** @via_v2_regs, align 8
  %13 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %14 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %13, i32 0, i32 1
  store i64* %12, i64** %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @agp_find_caps(i32 %16)
  %18 = load i64, i64* @AGP_CAPID, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @pci_read_config(i32 %15, i64 %19, i32 4)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 20
  %23 = and i32 %22, 15
  %24 = icmp sge i32 %23, 3
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load i64, i64* @AGP_VIA_AGPSEL, align 8
  %28 = call i32 @pci_read_config(i32 %26, i64 %27, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i64*, i64** @via_v3_regs, align 8
  %34 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %35 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %34, i32 0, i32 1
  store i64* %33, i64** %35, align 8
  br label %36

36:                                               ; preds = %32, %25
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @agp_generic_attach(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %135

44:                                               ; preds = %37
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @AGP_GET_APERTURE(i32 %45)
  %47 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %48 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %66, %44
  %50 = load i32, i32* %3, align 4
  %51 = call %struct.agp_gatt* @agp_alloc_gatt(i32 %50)
  store %struct.agp_gatt* %51, %struct.agp_gatt** %5, align 8
  %52 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %53 = icmp ne %struct.agp_gatt* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %67

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @AGP_GET_APERTURE(i32 %57)
  %59 = sdiv i32 %58, 2
  %60 = call i64 @AGP_SET_APERTURE(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @agp_generic_detach(i32 %63)
  %65 = load i32, i32* @ENOMEM, align 4
  store i32 %65, i32* %2, align 4
  br label %135

66:                                               ; preds = %55
  br label %49

67:                                               ; preds = %54
  %68 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %69 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %70 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %69, i32 0, i32 2
  store %struct.agp_gatt* %68, %struct.agp_gatt** %70, align 8
  %71 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %72 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i64*, i64** @via_v2_regs, align 8
  %75 = icmp eq i64* %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %67
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %79 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @REG_ATTBASE, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %85 = getelementptr inbounds %struct.agp_gatt, %struct.agp_gatt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, 3
  %88 = call i32 @pci_write_config(i32 %77, i64 %83, i32 %87, i32 4)
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %91 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @REG_GARTCTRL, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @pci_write_config(i32 %89, i64 %95, i32 15, i32 4)
  br label %127

97:                                               ; preds = %67
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %100 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* @REG_ATTBASE, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %106 = getelementptr inbounds %struct.agp_gatt, %struct.agp_gatt* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @pci_write_config(i32 %98, i64 %104, i32 %107, i32 4)
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %111 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* @REG_GARTCTRL, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @pci_read_config(i32 %109, i64 %115, i32 4)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %119 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i64, i64* @REG_GARTCTRL, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, 384
  %126 = call i32 @pci_write_config(i32 %117, i64 %123, i32 %125, i32 4)
  br label %127

127:                                              ; preds = %97, %76
  %128 = load i32, i32* %3, align 4
  %129 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %130 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sdiv i32 %131, 1024
  %133 = sdiv i32 %132, 1024
  %134 = call i32 @device_printf(i32 %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %133)
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %127, %62, %42
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.agp_via_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @agp_find_caps(i32) #1

declare dso_local i32 @agp_generic_attach(i32) #1

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

declare dso_local %struct.agp_gatt* @agp_alloc_gatt(i32) #1

declare dso_local i64 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @agp_generic_detach(i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
