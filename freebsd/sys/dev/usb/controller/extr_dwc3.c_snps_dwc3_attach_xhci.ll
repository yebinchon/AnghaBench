; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc3.c_snps_dwc3_attach_xhci.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc3.c_snps_dwc3_attach_xhci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snps_dwc3_softc = type { i32, i32, i32, %struct.xhci_softc }
%struct.xhci_softc = type { %struct.TYPE_2__, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to allocate IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to add USB device\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Synopsys\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@xhci_interrupt = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to setup IRQ, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to init XHCI, with error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Failed to start XHCI controller, with error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"trying to attach\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed to initialize USB, with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @snps_dwc3_attach_xhci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snps_dwc3_attach_xhci(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.snps_dwc3_softc*, align 8
  %5 = alloca %struct.xhci_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.snps_dwc3_softc* @device_get_softc(i32 %8)
  store %struct.snps_dwc3_softc* %9, %struct.snps_dwc3_softc** %4, align 8
  %10 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %11 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %10, i32 0, i32 3
  store %struct.xhci_softc* %11, %struct.xhci_softc** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %13 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %16 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %18 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %21 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %23 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %26 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %4, align 8
  %28 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rman_get_size(i32 %29)
  %31 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %32 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SYS_RES_IRQ, align 4
  %35 = load i32, i32* @RF_SHAREABLE, align 4
  %36 = load i32, i32* @RF_ACTIVE, align 4
  %37 = or i32 %35, %36
  %38 = call i32* @bus_alloc_resource_any(i32 %33, i32 %34, i32* %7, i32 %37)
  %39 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %40 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %42 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %144

49:                                               ; preds = %1
  %50 = load i32, i32* %3, align 4
  %51 = call i32* @device_add_child(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %52 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %53 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32* %51, i32** %54, align 8
  %55 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %56 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %144

64:                                               ; preds = %49
  %65 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %66 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %70 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %69, i32 0, i32 0
  %71 = call i32 @device_set_ivars(i32* %68, %struct.TYPE_2__* %70)
  %72 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %73 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @sprintf(i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %77 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @device_set_desc(i32* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %83 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @INTR_TYPE_BIO, align 4
  %86 = load i32, i32* @INTR_MPSAFE, align 4
  %87 = or i32 %85, %86
  %88 = load i64, i64* @xhci_interrupt, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %91 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %92 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %91, i32 0, i32 1
  %93 = call i32 @bus_setup_intr(i32 %81, i32* %84, i32 %87, i32* null, i32* %89, %struct.xhci_softc* %90, i32** %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %64
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %101 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %100, i32 0, i32 1
  store i32* null, i32** %101, align 8
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %144

103:                                              ; preds = %64
  %104 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @xhci_init(%struct.xhci_softc* %104, i32 %105, i32 1)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (i32, i8*, ...) @device_printf(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %2, align 4
  br label %144

114:                                              ; preds = %103
  %115 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %116 = call i32 @xhci_start_controller(%struct.xhci_softc* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @ENXIO, align 4
  store i32 %123, i32* %2, align 4
  br label %144

124:                                              ; preds = %114
  %125 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %126 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = ptrtoint i32* %128 to i32
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %131 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %132 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @device_probe_and_attach(i32* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %124
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @ENXIO, align 4
  store i32 %142, i32* %2, align 4
  br label %144

143:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %138, %119, %109, %96, %60, %45
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.snps_dwc3_softc* @device_get_softc(i32) #1

declare dso_local i32 @rman_get_size(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32*, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.xhci_softc*, i32**) #1

declare dso_local i32 @xhci_init(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @xhci_start_controller(%struct.xhci_softc*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
