; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_ehci.c_ar71xx_ehci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_ehci.c_ar71xx_ehci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_ehci_softc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, i32, i32, i32, i32*, i32*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REV_2_0 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@ar71xx_bus_space_reversed = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not allocate irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@EHCI_HC_DEVSTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Atheros\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ar71xx_ehci_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@ar71xx_ehci_post_reset = common dso_local global i32 0, align 4
@ar71xx_soc = common dso_local global i32 0, align 4
@EHCI_SCFLG_TT = common dso_local global i32 0, align 4
@EHCI_SCFLG_NORESTERM = common dso_local global i32 0, align 4
@ehci_get_port_speed_portsc = common dso_local global i32 0, align 4
@EHCI_CAPLEN_HCIVERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"USB init failed err=%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ar71xx_ehci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_ehci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar71xx_ehci_softc*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ar71xx_ehci_softc* @device_get_softc(i32 %8)
  store %struct.ar71xx_ehci_softc* %9, %struct.ar71xx_ehci_softc** %4, align 8
  %10 = load %struct.ar71xx_ehci_softc*, %struct.ar71xx_ehci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ar71xx_ehci_softc, %struct.ar71xx_ehci_softc* %10, i32 0, i32 0
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 5
  store i32 %12, i32* %15, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 32, i32* %28, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @USB_GET_DMA_TAG(i32 %31)
  %33 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_9__* %30, i32 %32, i32* @ehci_iterate_hw_softc)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %2, align 4
  br label %189

37:                                               ; preds = %1
  %38 = load i32, i32* @USB_REV_2_0, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  store i32 0, i32* %7, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @SYS_RES_MEMORY, align 4
  %44 = load i32, i32* @RF_ACTIVE, align 4
  %45 = call i8* @bus_alloc_resource_any(i32 %42, i32 %43, i32* %7, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %3, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %185

55:                                               ; preds = %37
  %56 = load i32, i32* @ar71xx_bus_space_reversed, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @rman_get_bushandle(i8* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @rman_get_size(i8* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %7, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @SYS_RES_IRQ, align 4
  %73 = load i32, i32* @RF_ACTIVE, align 4
  %74 = load i32, i32* @RF_SHAREABLE, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @bus_alloc_resource_any(i32 %71, i32 %72, i32* %7, i32 %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  store i32* %77, i32** %79, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %55
  %85 = load i32, i32* %3, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %185

87:                                               ; preds = %55
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @device_add_child(i32 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %185

101:                                              ; preds = %87
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = call i32 @device_set_ivars(i32 %105, %struct.TYPE_9__* %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @EHCI_HC_DEVSTR, align 4
  %114 = call i32 @device_set_desc(i32 %112, i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @sprintf(i32 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @INTR_TYPE_BIO, align 4
  %124 = load i32, i32* @INTR_MPSAFE, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @ar71xx_ehci_intr, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 5
  %130 = call i32 @bus_setup_intr(i32 %119, i32* %122, i32 %125, i32* null, i32 %126, %struct.TYPE_8__* %127, i32** %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %101
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  store i32* null, i32** %138, align 8
  br label %185

139:                                              ; preds = %101
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  %142 = load i32, i32* @ar71xx_ehci_post_reset, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @ar71xx_soc, align 4
  switch i32 %145, label %157 [
    i32 140, label %146
    i32 139, label %146
    i32 138, label %146
    i32 137, label %146
    i32 136, label %146
    i32 135, label %146
    i32 134, label %146
    i32 133, label %146
    i32 132, label %146
    i32 131, label %146
    i32 130, label %146
    i32 129, label %146
    i32 128, label %146
  ]

146:                                              ; preds = %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139, %139
  %147 = load i32, i32* @EHCI_SCFLG_TT, align 4
  %148 = load i32, i32* @EHCI_SCFLG_NORESTERM, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load i32, i32* @ehci_get_port_speed_portsc, align 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  br label %158

157:                                              ; preds = %139
  br label %158

158:                                              ; preds = %157, %146
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %160 = load i32, i32* @EHCI_CAPLEN_HCIVERSION, align 4
  %161 = call i32 @EREAD4(%struct.TYPE_8__* %159, i32 %160)
  %162 = call i32 @EHCI_CAPLENGTH(i32 %161)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = call i32 @ehci_reset(%struct.TYPE_8__* %165)
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %168 = call i32 @ehci_init(%struct.TYPE_8__* %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %158
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @device_probe_and_attach(i32 %175)
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %171, %158
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 (i32, i8*, ...) @device_printf(i32 %181, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  br label %185

184:                                              ; preds = %177
  store i32 0, i32* %2, align 4
  br label %189

185:                                              ; preds = %180, %133, %98, %84, %52
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @ar71xx_ehci_detach(i32 %186)
  %188 = load i32, i32* @ENXIO, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %185, %184, %35
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.ar71xx_ehci_softc* @device_get_softc(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.TYPE_8__*, i32**) #1

declare dso_local i32 @EHCI_CAPLENGTH(i32) #1

declare dso_local i32 @EREAD4(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ehci_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @ehci_init(%struct.TYPE_8__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @ar71xx_ehci_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
