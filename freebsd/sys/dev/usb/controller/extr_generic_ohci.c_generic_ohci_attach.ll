; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_generic_ohci.c_generic_ohci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_generic_ohci.c_generic_ohci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_ohci_softc = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32 }

@OHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ohci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Generic\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ohci_interrupt = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PHY_USB_MODE_HOST = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @generic_ohci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_ohci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.generic_ohci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.generic_ohci_softc* @device_get_softc(i32 %7)
  store %struct.generic_ohci_softc* %8, %struct.generic_ohci_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i32 %9, i32* %13, align 8
  %14 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %15 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %19 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @OHCI_MAX_DEVICES, align 4
  %23 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %24 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 8
  %27 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 32, i32* %30, align 8
  %31 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %32 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @USB_GET_DMA_TAG(i32 %34)
  %36 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_4__* %33, i32 %35, i32* @ohci_iterate_hw_softc)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %2, align 4
  br label %175

40:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SYS_RES_MEMORY, align 4
  %43 = load i32, i32* @RF_ACTIVE, align 4
  %44 = call i8* @bus_alloc_resource_any(i32 %41, i32 %42, i32* %6, i32 %43)
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %47 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %50 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %5, align 4
  br label %171

56:                                               ; preds = %40
  %57 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %58 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @rman_get_bustag(i64 %60)
  %62 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %63 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 7
  store i32 %61, i32* %64, align 4
  %65 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %66 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @rman_get_bushandle(i64 %68)
  %70 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %71 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 6
  store i32 %69, i32* %72, align 8
  %73 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %74 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @rman_get_size(i64 %76)
  %78 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %79 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 5
  store i32 %77, i32* %80, align 4
  store i32 0, i32* %6, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @SYS_RES_IRQ, align 4
  %83 = load i32, i32* @RF_ACTIVE, align 4
  %84 = call i8* @bus_alloc_resource_any(i32 %81, i32 %82, i32* %6, i32 %83)
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %87 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  %89 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %90 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %56
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %5, align 4
  br label %171

96:                                               ; preds = %56
  %97 = load i32, i32* %3, align 4
  %98 = call i64 @device_add_child(i32 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1)
  %99 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %100 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i64 %98, i64* %102, align 8
  %103 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %104 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %5, align 4
  br label %171

111:                                              ; preds = %96
  %112 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %113 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %118 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = call i32 @device_set_ivars(i64 %116, %struct.TYPE_4__* %119)
  %121 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %122 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @strlcpy(i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %126 = load i32, i32* %3, align 4
  %127 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %128 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* @INTR_TYPE_BIO, align 4
  %132 = load i32, i32* @INTR_MPSAFE, align 4
  %133 = or i32 %131, %132
  %134 = load i64, i64* @ohci_interrupt, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %137 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %138 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = call i32 @bus_setup_intr(i32 %126, i64 %130, i32 %133, i32* null, i32* %135, %struct.generic_ohci_softc* %136, i32** %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %111
  %144 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %145 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  store i32* null, i32** %146, align 8
  br label %171

147:                                              ; preds = %111
  %148 = load i32, i32* %3, align 4
  %149 = call i64 @GENERIC_USB_INIT(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @ENXIO, align 4
  store i32 %152, i32* %5, align 4
  br label %171

153:                                              ; preds = %147
  %154 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %155 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %154, i32 0, i32 0
  %156 = call i32 @ohci_init(%struct.TYPE_5__* %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load %struct.generic_ohci_softc*, %struct.generic_ohci_softc** %4, align 8
  %161 = getelementptr inbounds %struct.generic_ohci_softc, %struct.generic_ohci_softc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @device_probe_and_attach(i64 %164)
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %159, %153
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %171

170:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %175

171:                                              ; preds = %169, %151, %143, %109, %94, %54
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @generic_ohci_detach(i32 %172)
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %171, %170, %38
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.generic_ohci_softc* @device_get_softc(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i64) #1

declare dso_local i32 @rman_get_bushandle(i64) #1

declare dso_local i32 @rman_get_size(i64) #1

declare dso_local i64 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i64, i32, i32*, i32*, %struct.generic_ohci_softc*, i32**) #1

declare dso_local i64 @GENERIC_USB_INIT(i32) #1

declare dso_local i32 @ohci_init(%struct.TYPE_5__*) #1

declare dso_local i32 @device_probe_and_attach(i64) #1

declare dso_local i32 @generic_ohci_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
