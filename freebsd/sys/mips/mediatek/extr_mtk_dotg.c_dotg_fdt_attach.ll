; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_dotg.c_dotg_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_dotg.c_dotg_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { %struct.TYPE_3__, i32*, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@DWC_MODE_HOST = common dso_local global i32 0, align 4
@DWC_OTG_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"No mem\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Can`t alloc MEM\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Can`t alloc IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Can`t add usbus\0A\00", align 1
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@dwc_otg_filter_interrupt = common dso_local global i32 0, align 4
@dwc_otg_interrupt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Can`t set IRQ handle\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"dotg_init fail\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"device_probe_and_attach fail %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dotg_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dotg_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc_otg_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.dwc_otg_softc* @device_get_softc(i32 %7)
  store %struct.dwc_otg_softc* %8, %struct.dwc_otg_softc** %4, align 8
  %9 = load i32, i32* @DWC_MODE_HOST, align 4
  %10 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %11 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %14 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i32 %12, i32* %15, align 8
  %16 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %17 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %20 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @DWC_OTG_MAX_DEVICES, align 4
  %23 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %24 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %27 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 32, i32* %28, align 8
  %29 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %30 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @USB_GET_DMA_TAG(i32 %31)
  %33 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_3__* %30, i32 %32, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %2, align 4
  br label %153

38:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SYS_RES_MEMORY, align 4
  %41 = load i32, i32* @RF_ACTIVE, align 4
  %42 = call i8* @bus_alloc_resource_any(i32 %39, i32 %40, i32* %6, i32 %41)
  %43 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %44 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %46 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %149

51:                                               ; preds = %38
  %52 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %53 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @rman_get_bustag(i8* %54)
  %56 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %57 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %59 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @rman_get_bushandle(i8* %60)
  %62 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %63 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %65 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @rman_get_size(i8* %66)
  %68 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %69 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %6, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @SYS_RES_IRQ, align 4
  %72 = load i32, i32* @RF_ACTIVE, align 4
  %73 = call i8* @bus_alloc_resource_any(i32 %70, i32 %71, i32* %6, i32 %72)
  %74 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %75 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %77 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %51
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %149

82:                                               ; preds = %51
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_add_child(i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %85 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %86 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %89 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %82
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %149

95:                                               ; preds = %82
  %96 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %97 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %101 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %100, i32 0, i32 0
  %102 = call i32 @device_set_ivars(i32 %99, %struct.TYPE_3__* %101)
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %105 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* @INTR_TYPE_TTY, align 4
  %108 = load i32, i32* @INTR_MPSAFE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @dwc_otg_filter_interrupt, align 4
  %111 = load i32, i32* @dwc_otg_interrupt, align 4
  %112 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %113 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %114 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %113, i32 0, i32 1
  %115 = call i32 @bus_setup_intr(i32 %103, i8* %106, i32 %109, i32 %110, i32 %111, %struct.dwc_otg_softc* %112, i32** %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %95
  %119 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %120 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %119, i32 0, i32 1
  store i32* null, i32** %120, align 8
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %149

122:                                              ; preds = %95
  %123 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %124 = call i32 @dwc_otg_init(%struct.dwc_otg_softc* %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %122
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %129
  %133 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %134 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @device_probe_and_attach(i32 %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load i32, i32* %5, align 4
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %132
  br label %144

144:                                              ; preds = %143, %129
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %149

148:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %153

149:                                              ; preds = %147, %118, %93, %80, %49
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @dotg_fdt_detach(i32 %150)
  %152 = load i32, i32* @ENXIO, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %149, %148, %35
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.dwc_otg_softc* @device_get_softc(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @bus_setup_intr(i32, i8*, i32, i32, i32, %struct.dwc_otg_softc*, i32**) #1

declare dso_local i32 @dwc_otg_init(%struct.dwc_otg_softc*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @dotg_fdt_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
