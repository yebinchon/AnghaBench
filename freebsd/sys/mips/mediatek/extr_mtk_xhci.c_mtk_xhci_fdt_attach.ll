; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_xhci.c_mtk_xhci_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_xhci.c_mtk_xhci_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { %struct.TYPE_2__, i32*, i32*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@XHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not allocate irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@XHCI_HC_DEVSTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Mediatek\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@xhci_interrupt = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"USB init failed err=%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_xhci_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_xhci_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.xhci_softc* @device_get_softc(i32 %7)
  store %struct.xhci_softc* %8, %struct.xhci_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 4
  %13 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %14 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %17 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @XHCI_MAX_DEVICES, align 4
  %20 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  store i32 0, i32* %6, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = call i8* @bus_alloc_resource_any(i32 %23, i32 %24, i32* %6, i32 %25)
  %27 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %30 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %158

36:                                               ; preds = %1
  %37 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %38 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @rman_get_bustag(i8* %39)
  %41 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %42 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %44 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @rman_get_bushandle(i8* %45)
  %47 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %48 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %50 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @rman_get_size(i8* %51)
  %53 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %54 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @mtk_xhci_fdt_init(i32 %55)
  store i32 0, i32* %6, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SYS_RES_IRQ, align 4
  %59 = load i32, i32* @RF_SHAREABLE, align 4
  %60 = load i32, i32* @RF_ACTIVE, align 4
  %61 = or i32 %59, %60
  %62 = call i8* @bus_alloc_resource_any(i32 %57, i32 %58, i32* %6, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %65 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %67 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %36
  %71 = load i32, i32* %3, align 4
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %158

73:                                               ; preds = %36
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @device_add_child(i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %76 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %77 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %80 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %3, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %158

87:                                               ; preds = %73
  %88 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %89 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %93 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %92, i32 0, i32 0
  %94 = call i32 @device_set_ivars(i32 %91, %struct.TYPE_2__* %93)
  %95 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %96 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @XHCI_HC_DEVSTR, align 4
  %100 = call i32 @device_set_desc(i32 %98, i32 %99)
  %101 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %102 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @sprintf(i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* %3, align 4
  %106 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %107 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @INTR_TYPE_BIO, align 4
  %110 = load i32, i32* @INTR_MPSAFE, align 4
  %111 = or i32 %109, %110
  %112 = load i64, i64* @xhci_interrupt, align 8
  %113 = inttoptr i64 %112 to i32*
  %114 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %115 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %116 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %115, i32 0, i32 1
  %117 = call i32 @bus_setup_intr(i32 %105, i32* %108, i32 %111, i32* null, i32* %113, %struct.xhci_softc* %114, i32** %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %87
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  %124 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %125 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %124, i32 0, i32 1
  store i32* null, i32** %125, align 8
  br label %158

126:                                              ; preds = %87
  %127 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @xhci_init(%struct.xhci_softc* %127, i32 %128, i32 1)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %134 = call i32 @xhci_halt_controller(%struct.xhci_softc* %133)
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %132, %126
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %140 = call i32 @xhci_start_controller(%struct.xhci_softc* %139)
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %5, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %146 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @device_probe_and_attach(i32 %148)
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %144, %141
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  br label %158

157:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %162

158:                                              ; preds = %153, %120, %84, %70, %33
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @mtk_xhci_fdt_detach(i32 %159)
  %161 = load i32, i32* @ENXIO, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %158, %157
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.xhci_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i32 @mtk_xhci_fdt_init(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.xhci_softc*, i32**) #1

declare dso_local i32 @xhci_init(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @xhci_halt_controller(%struct.xhci_softc*) #1

declare dso_local i32 @xhci_start_controller(%struct.xhci_softc*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @mtk_xhci_fdt_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
