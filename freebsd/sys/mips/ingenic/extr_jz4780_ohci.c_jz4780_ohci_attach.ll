; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_ohci.c_jz4780_ohci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_ohci.c_jz4780_ohci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_ohci_softc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32, i32, i32*, i32*, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32, i32, i8* }

@OHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ohci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CGU failed to enable OHCI\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ohci_interrupt = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Ingenic\00", align 1
@OHCI_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @jz4780_ohci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_ohci_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.jz4780_ohci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.jz4780_ohci_softc* @device_get_softc(i8* %7)
  store %struct.jz4780_ohci_softc* %8, %struct.jz4780_ohci_softc** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i8* %9, i8** %13, align 8
  %14 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %15 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %19 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @OHCI_MAX_DEVICES, align 4
  %23 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %24 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 8
  %27 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 32, i32* %30, align 8
  %31 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %32 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @USB_GET_DMA_TAG(i8* %34)
  %36 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_4__* %33, i32 %35, i32* @ohci_iterate_hw_softc)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %2, align 4
  br label %205

40:                                               ; preds = %1
  %41 = load i8*, i8** %3, align 8
  %42 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %43 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 8
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %47 = call i32 @jz4780_ohci_vbus_gpio_enable(i8* %45, %struct.jz4780_ohci_softc* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %197

51:                                               ; preds = %40
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @jz4780_ohci_clk_enable(i8* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %197

57:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* @SYS_RES_MEMORY, align 4
  %60 = load i32, i32* @RF_ACTIVE, align 4
  %61 = call i8* @bus_alloc_resource_any(i8* %58, i32 %59, i32* %6, i32 %60)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %64 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 6
  store i32* %62, i32** %65, align 8
  %66 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %67 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* @ENOMEM, align 4
  store i32 %72, i32* %5, align 4
  br label %197

73:                                               ; preds = %57
  %74 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %75 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @rman_get_bustag(i32* %77)
  %79 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %80 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 4
  %82 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %83 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @rman_get_bushandle(i32* %85)
  %87 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %88 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 8
  %90 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %91 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @rman_get_size(i32* %93)
  %95 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %96 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 7
  store i32 %94, i32* %97, align 8
  store i32 0, i32* %6, align 4
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* @SYS_RES_IRQ, align 4
  %100 = load i32, i32* @RF_ACTIVE, align 4
  %101 = call i8* @bus_alloc_resource_any(i8* %98, i32 %99, i32* %6, i32 %100)
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %104 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 5
  store i32* %102, i32** %105, align 8
  %106 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %107 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %73
  %112 = load i32, i32* @ENOMEM, align 4
  store i32 %112, i32* %5, align 4
  br label %197

113:                                              ; preds = %73
  %114 = call i64 (...) @jz4780_ohci_enable()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i8*, i8** %3, align 8
  %118 = call i32 @device_printf(i8* %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* @ENXIO, align 4
  store i32 %119, i32* %5, align 4
  br label %197

120:                                              ; preds = %113
  %121 = load i8*, i8** %3, align 8
  %122 = call i32* @device_add_child(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %123 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %124 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32* %122, i32** %126, align 8
  %127 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %128 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %120
  %134 = load i32, i32* @ENOMEM, align 4
  store i32 %134, i32* %5, align 4
  br label %197

135:                                              ; preds = %120
  %136 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %137 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %142 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = call i32 @device_set_ivars(i32* %140, %struct.TYPE_4__* %143)
  %145 = load i8*, i8** %3, align 8
  %146 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %147 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 5
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* @INTR_TYPE_BIO, align 4
  %151 = load i32, i32* @INTR_MPSAFE, align 4
  %152 = or i32 %150, %151
  %153 = load i64, i64* @ohci_interrupt, align 8
  %154 = inttoptr i64 %153 to i32*
  %155 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %156 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %157 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  %159 = call i32 @bus_setup_intr(i8* %145, i32* %149, i32 %152, i32* null, i32* %154, %struct.jz4780_ohci_softc* %155, i32* %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %135
  %163 = load i32, i32* @ENXIO, align 4
  store i32 %163, i32* %5, align 4
  br label %197

164:                                              ; preds = %135
  %165 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %166 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @strlcpy(i32 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %170 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %171 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %175 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @OHCI_CONTROL, align 4
  %179 = call i32 @bus_space_write_4(i32 %173, i32 %177, i32 %178, i32 0)
  %180 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %181 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %180, i32 0, i32 0
  %182 = call i32 @ohci_init(%struct.TYPE_5__* %181)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %164
  %186 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %4, align 8
  %187 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @device_probe_and_attach(i32* %190)
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %185, %164
  %193 = load i32, i32* %5, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %197

196:                                              ; preds = %192
  store i32 0, i32* %2, align 4
  br label %205

197:                                              ; preds = %195, %162, %133, %116, %111, %71, %56, %50
  %198 = load i32, i32* %5, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i8*, i8** %3, align 8
  %202 = call i32 @jz4780_ohci_detach(i8* %201)
  br label %203

203:                                              ; preds = %200, %197
  %204 = load i32, i32* %5, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %196, %38
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.jz4780_ohci_softc* @device_get_softc(i8*) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i8*) #1

declare dso_local i32 @jz4780_ohci_vbus_gpio_enable(i8*, %struct.jz4780_ohci_softc*) #1

declare dso_local i32 @jz4780_ohci_clk_enable(i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i64 @jz4780_ohci_enable(...) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i32* @device_add_child(i8*, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @bus_setup_intr(i8*, i32*, i32, i32*, i32*, %struct.jz4780_ohci_softc*, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @ohci_init(%struct.TYPE_5__*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @jz4780_ohci_detach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
