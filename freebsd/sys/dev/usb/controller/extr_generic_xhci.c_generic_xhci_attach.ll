; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_generic_xhci.c_generic_xhci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_generic_xhci.c_generic_xhci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { %struct.TYPE_2__, i32*, i32*, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 }

@XHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to allocate IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to add USB device\0A\00", align 1
@XHCI_HC_VENDOR = common dso_local global i8* null, align 8
@XHCI_HC_DEVSTR = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@xhci_interrupt = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to setup error IRQ, %d\0A\00", align 1
@IS_DMA_32B = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to init XHCI, with error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Failed to start XHCI controller, with error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Failed to initialize USB, with error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_xhci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.xhci_softc* @device_get_softc(i32 %7)
  store %struct.xhci_softc* %8, %struct.xhci_softc** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 8
  %13 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %14 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %17 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @XHCI_MAX_DEVICES, align 4
  %20 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = call i8* @bus_alloc_resource_any(i32 %23, i32 %24, i32* %6, i32 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %29 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %28, i32 0, i32 4
  store i32* %27, i32** %29, align 8
  %30 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %31 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @generic_xhci_detach(i32 %37)
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %180

40:                                               ; preds = %1
  %41 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %42 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @rman_get_bustag(i32* %43)
  %45 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %46 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %48 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @rman_get_bushandle(i32* %49)
  %51 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %52 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %54 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @rman_get_size(i32* %55)
  %57 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %58 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @SYS_RES_IRQ, align 4
  %61 = load i32, i32* @RF_SHAREABLE, align 4
  %62 = load i32, i32* @RF_ACTIVE, align 4
  %63 = or i32 %61, %62
  %64 = call i8* @bus_alloc_resource_any(i32 %59, i32 %60, i32* %6, i32 %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %67 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %69 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %40
  %73 = load i32, i32* %3, align 4
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @generic_xhci_detach(i32 %75)
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %2, align 4
  br label %180

78:                                               ; preds = %40
  %79 = load i32, i32* %3, align 4
  %80 = call i32* @device_add_child(i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %81 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %82 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32* %80, i32** %83, align 8
  %84 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %85 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  %90 = load i32, i32* %3, align 4
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @generic_xhci_detach(i32 %92)
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %2, align 4
  br label %180

95:                                               ; preds = %78
  %96 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %97 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %101 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %100, i32 0, i32 0
  %102 = call i32 @device_set_ivars(i32* %99, %struct.TYPE_2__* %101)
  %103 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %104 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** @XHCI_HC_VENDOR, align 8
  %107 = call i32 @sprintf(i32 %105, i8* %106)
  %108 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %109 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* @XHCI_HC_DEVSTR, align 4
  %113 = call i32 @device_set_desc(i32* %111, i32 %112)
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %116 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @INTR_TYPE_BIO, align 4
  %119 = load i32, i32* @INTR_MPSAFE, align 4
  %120 = or i32 %118, %119
  %121 = load i64, i64* @xhci_interrupt, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %124 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %125 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %124, i32 0, i32 1
  %126 = call i32 @bus_setup_intr(i32 %114, i32* %117, i32 %120, i32* null, i32* %122, %struct.xhci_softc* %123, i32** %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %95
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  %133 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %134 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %133, i32 0, i32 1
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @generic_xhci_detach(i32 %135)
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %180

138:                                              ; preds = %95
  %139 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @IS_DMA_32B, align 4
  %142 = call i32 @xhci_init(%struct.xhci_softc* %139, i32 %140, i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 (i32, i8*, ...) @device_printf(i32 %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @generic_xhci_detach(i32 %149)
  %151 = load i32, i32* @ENXIO, align 4
  store i32 %151, i32* %2, align 4
  br label %180

152:                                              ; preds = %138
  %153 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %154 = call i32 @xhci_start_controller(%struct.xhci_softc* %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 (i32, i8*, ...) @device_printf(i32 %158, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @generic_xhci_detach(i32 %161)
  %163 = load i32, i32* @ENXIO, align 4
  store i32 %163, i32* %2, align 4
  br label %180

164:                                              ; preds = %152
  %165 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %166 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @device_probe_and_attach(i32* %168)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %164
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* %5, align 4
  %175 = call i32 (i32, i8*, ...) @device_printf(i32 %173, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @generic_xhci_detach(i32 %176)
  %178 = load i32, i32* @ENXIO, align 4
  store i32 %178, i32* %2, align 4
  br label %180

179:                                              ; preds = %164
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %179, %172, %157, %145, %129, %89, %72, %34
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local %struct.xhci_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @generic_xhci_detach(i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32*, i32) #1

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
