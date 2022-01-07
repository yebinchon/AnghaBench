; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_msm.c_ehci_msm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_msm.c_ehci_msm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_msm_softc = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32*, i32, i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ehci_msm_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: unable to subregion USB host registers\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@EHCI_HC_DEVSTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Qualcomm\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@EHCI_SCFLG_DONTRESET = common dso_local global i32 0, align 4
@EHCI_SCFLG_NORESTERM = common dso_local global i32 0, align 4
@EHCI_SCFLG_DONEINIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"USB init failed err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ehci_msm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_msm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehci_msm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ehci_msm_softc* @device_get_softc(i32 %8)
  store %struct.ehci_msm_softc* %9, %struct.ehci_msm_softc** %4, align 8
  %10 = load %struct.ehci_msm_softc*, %struct.ehci_msm_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ehci_msm_softc, %struct.ehci_msm_softc* %10, i32 0, i32 1
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  store i32 %12, i32* %15, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 32, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ehci_msm_spec, align 4
  %31 = load %struct.ehci_msm_softc*, %struct.ehci_msm_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ehci_msm_softc, %struct.ehci_msm_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @bus_alloc_resources(i32 %29, i32 %30, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %185

40:                                               ; preds = %1
  %41 = load %struct.ehci_msm_softc*, %struct.ehci_msm_softc** %4, align 8
  %42 = getelementptr inbounds %struct.ehci_msm_softc, %struct.ehci_msm_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @rman_get_bustag(i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @USB_GET_DMA_TAG(i32 %51)
  %53 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_7__* %50, i32 %52, i32* @ehci_iterate_hw_softc)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %2, align 4
  br label %185

57:                                               ; preds = %40
  %58 = load %struct.ehci_msm_softc*, %struct.ehci_msm_softc** %4, align 8
  %59 = getelementptr inbounds %struct.ehci_msm_softc, %struct.ehci_msm_softc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @rman_get_bustag(i32 %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ehci_msm_softc*, %struct.ehci_msm_softc** %4, align 8
  %67 = getelementptr inbounds %struct.ehci_msm_softc, %struct.ehci_msm_softc* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rman_get_bushandle(i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load %struct.ehci_msm_softc*, %struct.ehci_msm_softc** %4, align 8
  %73 = getelementptr inbounds %struct.ehci_msm_softc, %struct.ehci_msm_softc* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @rman_get_size(i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 6
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = call i64 @bus_space_subregion(i8* %82, i32 %83, i32 256, i32 %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %57
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @device_get_name(i32 %92)
  %94 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %57
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @device_add_child(i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %181

109:                                              ; preds = %95
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = call i32 @device_set_ivars(i32 %113, %struct.TYPE_7__* %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @EHCI_HC_DEVSTR, align 4
  %122 = call i32 @device_set_desc(i32 %120, i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @sprintf(i32 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.ehci_msm_softc*, %struct.ehci_msm_softc** %4, align 8
  %129 = getelementptr inbounds %struct.ehci_msm_softc, %struct.ehci_msm_softc* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @INTR_TYPE_BIO, align 4
  %134 = load i32, i32* @INTR_MPSAFE, align 4
  %135 = or i32 %133, %134
  %136 = load i64, i64* @ehci_interrupt, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = call i32 @bus_setup_intr(i32 %127, i32 %132, i32 %135, i32* null, i32* %137, %struct.TYPE_6__* %138, i32** %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %109
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 (i32, i8*, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  store i32* null, i32** %149, align 8
  br label %181

150:                                              ; preds = %109
  %151 = load i32, i32* @EHCI_SCFLG_DONTRESET, align 4
  %152 = load i32, i32* @EHCI_SCFLG_NORESTERM, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %159 = call i32 @ehci_init(%struct.TYPE_6__* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %150
  %163 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @device_probe_and_attach(i32 %171)
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %162, %150
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 (i32, i8*, ...) @device_printf(i32 %177, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %178)
  br label %181

180:                                              ; preds = %173
  store i32 0, i32* %2, align 4
  br label %185

181:                                              ; preds = %176, %144, %106
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @ehci_msm_detach(i32 %182)
  %184 = load i32, i32* @ENXIO, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %181, %180, %55, %36
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.ehci_msm_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @rman_get_bustag(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @rman_get_size(i32) #1

declare dso_local i64 @bus_space_subregion(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32*, %struct.TYPE_6__*, i32**) #1

declare dso_local i32 @ehci_init(%struct.TYPE_6__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @ehci_msm_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
