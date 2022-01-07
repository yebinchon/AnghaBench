; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb_octeon.c_octusb_octeon_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb_octeon.c_octusb_octeon_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octusb_octeon_softc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32**, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@OCTUSB_MAX_DEVICES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCTUSB_MAX_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"octusb: too many USB ports %d\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@OCTEON_IRQ_USB0 = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@octusb_interrupt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @octusb_octeon_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octusb_octeon_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.octusb_octeon_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.octusb_octeon_softc* @device_get_softc(i32 %9)
  store %struct.octusb_octeon_softc* %10, %struct.octusb_octeon_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %13 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i32 %11, i32* %15, align 8
  %16 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %17 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %21 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* @OCTUSB_MAX_DEVICES, align 4
  %25 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %26 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %24, i32* %28, align 8
  %29 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %30 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 32, i32* %32, align 8
  %33 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %34 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @USB_GET_DMA_TAG(i32 %36)
  %38 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_4__* %35, i32 %37, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %2, align 4
  br label %169

42:                                               ; preds = %1
  %43 = call i32 (...) @cvmx_usb_get_num_ports()
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @OCTUSB_MAX_PORTS, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %42
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %121, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %124

55:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @SYS_RES_IRQ, align 4
  %58 = load i64, i64* @OCTEON_IRQ_USB0, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load i64, i64* @OCTEON_IRQ_USB0, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load i32, i32* @RF_ACTIVE, align 4
  %67 = call i32 @bus_alloc_resource(i32 %56, i32 %57, i32* %6, i64 %61, i64 %65, i32 1, i32 %66)
  %68 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %69 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %67, i32* %74, align 4
  %75 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %76 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %55
  br label %165

85:                                               ; preds = %55
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %88 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @INTR_TYPE_BIO, align 4
  %96 = load i32, i32* @INTR_MPSAFE, align 4
  %97 = or i32 %95, %96
  %98 = load i64, i64* @octusb_interrupt, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %101 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %102 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = bitcast i32** %107 to %struct.octusb_octeon_softc*
  %109 = call i32 (i32, i32, i32, i32*, %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc*, ...) @bus_setup_intr(i32 %86, i32 %94, i32 %97, i32* %99, %struct.octusb_octeon_softc* %100, %struct.octusb_octeon_softc* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %85
  %113 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %114 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  store i32* null, i32** %119, align 8
  br label %165

120:                                              ; preds = %85
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %51

124:                                              ; preds = %51
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @device_add_child(i32 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %127 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %128 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i32 %126, i32* %130, align 4
  %131 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %132 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %124
  br label %165

138:                                              ; preds = %124
  %139 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %140 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %145 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = call i32 @device_set_ivars(i32 %143, %struct.TYPE_4__* %146)
  %148 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %149 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %148, i32 0, i32 0
  %150 = call i32 @octusb_init(%struct.TYPE_5__* %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %138
  %154 = load %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc** %4, align 8
  %155 = getelementptr inbounds %struct.octusb_octeon_softc, %struct.octusb_octeon_softc* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @device_probe_and_attach(i32 %158)
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %153, %138
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %165

164:                                              ; preds = %160
  store i32 0, i32* %2, align 4
  br label %169

165:                                              ; preds = %163, %137, %112, %84
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @octusb_octeon_detach(i32 %166)
  %168 = load i32, i32* @ENXIO, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %165, %164, %40
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.octusb_octeon_softc* @device_get_softc(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i32 @cvmx_usb_get_num_ports(...) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @bus_alloc_resource(i32, i32, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, %struct.octusb_octeon_softc*, %struct.octusb_octeon_softc*, ...) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @octusb_init(%struct.TYPE_5__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @octusb_octeon_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
