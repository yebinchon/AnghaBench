; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc3.c_snps_dwc3_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc3.c_snps_dwc3_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snps_dwc3_softc = type { i32, i32, i32, i32*, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"snps id: %x\0A\00", align 1
@DWC3_GSNPSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"usb2-phy\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"usb3-phy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @snps_dwc3_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snps_dwc3_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.snps_dwc3_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.snps_dwc3_softc* @device_get_softc(i32 %6)
  store %struct.snps_dwc3_softc* %7, %struct.snps_dwc3_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %10 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SYS_RES_MEMORY, align 4
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i32* @bus_alloc_resource_any(i32 %11, i32 %12, i32* %5, i32 %13)
  %15 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %16 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %15, i32 0, i32 3
  store i32* %14, i32** %16, align 8
  %17 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %18 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %71

25:                                               ; preds = %1
  %26 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %27 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @rman_get_bustag(i32* %28)
  %30 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %31 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %33 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @rman_get_bushandle(i32* %34)
  %36 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %37 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* @bootverbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %43 = load i32, i32* @DWC3_GSNPSID, align 4
  %44 = call i32 @DWC3_READ(%struct.snps_dwc3_softc* %42, i32 %43)
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %25
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %49 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %52 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %51, i32 0, i32 2
  %53 = call i32 @phy_get_by_ofw_name(i32 %47, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %52)
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %56 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %59 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %58, i32 0, i32 0
  %60 = call i32 @phy_get_by_ofw_name(i32 %54, i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %59)
  %61 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %62 = call i32 @snps_dwc3_reset(%struct.snps_dwc3_softc* %61)
  %63 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %64 = call i32 @snps_dwc3_configure_host(%struct.snps_dwc3_softc* %63)
  %65 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %66 = call i32 @snps_dwc3_configure_phy(%struct.snps_dwc3_softc* %65)
  %67 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %68 = call i32 @snps_dwc3_do_quirks(%struct.snps_dwc3_softc* %67)
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @snps_dwc3_attach_xhci(i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %46, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.snps_dwc3_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @DWC3_READ(%struct.snps_dwc3_softc*, i32) #1

declare dso_local i32 @phy_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @snps_dwc3_reset(%struct.snps_dwc3_softc*) #1

declare dso_local i32 @snps_dwc3_configure_host(%struct.snps_dwc3_softc*) #1

declare dso_local i32 @snps_dwc3_configure_phy(%struct.snps_dwc3_softc*) #1

declare dso_local i32 @snps_dwc3_do_quirks(%struct.snps_dwc3_softc*) #1

declare dso_local i32 @snps_dwc3_attach_xhci(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
