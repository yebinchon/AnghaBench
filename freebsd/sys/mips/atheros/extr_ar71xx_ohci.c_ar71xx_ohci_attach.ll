; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_ohci.c_ar71xx_ohci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_ohci.c_ar71xx_ohci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_ohci_softc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32, i32, i32*, i32*, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32, i32, i8* }

@OHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ohci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ar71xx_ohci_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Atheros\00", align 1
@OHCI_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ar71xx_ohci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_ohci_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ar71xx_ohci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.ar71xx_ohci_softc* @device_get_softc(i8* %7)
  store %struct.ar71xx_ohci_softc* %8, %struct.ar71xx_ohci_softc** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i8* %9, i8** %13, align 8
  %14 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @OHCI_MAX_DEVICES, align 4
  %23 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 8
  %27 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 32, i32* %30, align 8
  %31 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @USB_GET_DMA_TAG(i8* %34)
  %36 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_4__* %33, i32 %35, i32* @ohci_iterate_hw_softc)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %2, align 4
  br label %185

40:                                               ; preds = %1
  %41 = load i8*, i8** %3, align 8
  %42 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 8
  store i8* %41, i8** %44, align 8
  store i32 0, i32* %6, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* @SYS_RES_MEMORY, align 4
  %47 = load i32, i32* @RF_ACTIVE, align 4
  %48 = call i8* @bus_alloc_resource_any(i8* %45, i32 %46, i32* %6, i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 6
  store i32* %49, i32** %52, align 8
  %53 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %54 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %40
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %5, align 4
  br label %176

60:                                               ; preds = %40
  %61 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %62 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @rman_get_bustag(i32* %64)
  %66 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %67 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %70 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @rman_get_bushandle(i32* %72)
  %74 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %75 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %78 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @rman_get_size(i32* %80)
  %82 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %83 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 7
  store i32 %81, i32* %84, align 8
  store i32 0, i32* %6, align 4
  %85 = load i8*, i8** %3, align 8
  %86 = load i32, i32* @SYS_RES_IRQ, align 4
  %87 = load i32, i32* @RF_ACTIVE, align 4
  %88 = call i8* @bus_alloc_resource_any(i8* %85, i32 %86, i32* %6, i32 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %91 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 5
  store i32* %89, i32** %92, align 8
  %93 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %94 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %60
  %99 = load i32, i32* @ENOMEM, align 4
  store i32 %99, i32* %5, align 4
  br label %176

100:                                              ; preds = %60
  %101 = load i8*, i8** %3, align 8
  %102 = call i32* @device_add_child(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1)
  %103 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %104 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i32* %102, i32** %106, align 8
  %107 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %108 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i32, i32* @ENOMEM, align 4
  store i32 %114, i32* %5, align 4
  br label %176

115:                                              ; preds = %100
  %116 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %117 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %122 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = call i32 @device_set_ivars(i32* %120, %struct.TYPE_4__* %123)
  %125 = load i8*, i8** %3, align 8
  %126 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %127 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @INTR_TYPE_BIO, align 4
  %131 = load i32, i32* @INTR_MPSAFE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @ar71xx_ohci_intr, align 4
  %134 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %135 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %136 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  %138 = call i32 @bus_setup_intr(i8* %125, i32* %129, i32 %132, i32* null, i32 %133, %struct.ar71xx_ohci_softc* %134, i32* %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %115
  %142 = load i32, i32* @ENXIO, align 4
  store i32 %142, i32* %5, align 4
  br label %176

143:                                              ; preds = %115
  %144 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %145 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @strlcpy(i32 %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %149 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %150 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %154 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @OHCI_CONTROL, align 4
  %158 = call i32 @bus_space_write_4(i32 %152, i32 %156, i32 %157, i32 0)
  %159 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %160 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %159, i32 0, i32 0
  %161 = call i32 @ohci_init(%struct.TYPE_5__* %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %143
  %165 = load %struct.ar71xx_ohci_softc*, %struct.ar71xx_ohci_softc** %4, align 8
  %166 = getelementptr inbounds %struct.ar71xx_ohci_softc, %struct.ar71xx_ohci_softc* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @device_probe_and_attach(i32* %169)
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %164, %143
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %176

175:                                              ; preds = %171
  store i32 0, i32* %2, align 4
  br label %185

176:                                              ; preds = %174, %141, %113, %98, %58
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i8*, i8** %3, align 8
  %181 = call i32 @ar71xx_ohci_detach(i8* %180)
  %182 = load i32, i32* %5, align 4
  store i32 %182, i32* %2, align 4
  br label %185

183:                                              ; preds = %176
  %184 = load i32, i32* %5, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %183, %179, %175, %38
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.ar71xx_ohci_softc* @device_get_softc(i8*) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32* @device_add_child(i8*, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @bus_setup_intr(i8*, i32*, i32, i32*, i32, %struct.ar71xx_ohci_softc*, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @ohci_init(%struct.TYPE_5__*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @ar71xx_ohci_detach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
