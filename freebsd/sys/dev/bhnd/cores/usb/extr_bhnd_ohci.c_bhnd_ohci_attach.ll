; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/usb/extr_bhnd_ohci.c_bhnd_ohci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/usb/extr_bhnd_ohci.c_bhnd_ohci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i32*, i32*, i32, i8*, i32, i32, i32, i8*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8* }

@OHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ohci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not allocate irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Broadcom\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ohci_interrupt = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Could not setup irq, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"USB init failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bhnd_ohci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_ohci_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.TYPE_7__* @device_get_softc(i8* %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  store i8* %9, i8** %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @OHCI_MAX_DEVICES, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 32, i32* %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @USB_GET_DMA_TAG(i8* %28)
  %30 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_8__* %27, i32 %29, i32* @ohci_iterate_hw_softc)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %155

34:                                               ; preds = %1
  %35 = load i8*, i8** %3, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  store i32 0, i32* %5, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* @SYS_RES_MEMORY, align 4
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = call i8* @bus_alloc_resource_any(i8* %38, i32 %39, i32* %5, i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %34
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i8*, i8*, ...) @device_printf(i8* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %151

51:                                               ; preds = %34
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @rman_get_bustag(i8* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @rman_get_bushandle(i8* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @rman_get_size(i8* %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %5, align 4
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* @SYS_RES_IRQ, align 4
  %72 = load i32, i32* @RF_SHAREABLE, align 4
  %73 = load i32, i32* @RF_ACTIVE, align 4
  %74 = or i32 %72, %73
  %75 = call i8* @bus_alloc_resource_any(i8* %70, i32 %71, i32* %5, i32 %74)
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %51
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 (i8*, i8*, ...) @device_printf(i8* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %151

86:                                               ; preds = %51
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @device_add_child(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %86
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 (i8*, i8*, ...) @device_printf(i8* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %151

100:                                              ; preds = %86
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = call i32 @device_set_ivars(i32 %104, %struct.TYPE_8__* %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @strlcpy(i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %112 = load i8*, i8** %3, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @INTR_TYPE_BIO, align 4
  %117 = load i32, i32* @INTR_MPSAFE, align 4
  %118 = or i32 %116, %117
  %119 = load i64, i64* @ohci_interrupt, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = call i32 @bus_setup_intr(i8* %112, i32* %115, i32 %118, i32* null, i32* %120, %struct.TYPE_7__* %121, i32** %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %100
  %128 = load i8*, i8** %3, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 (i8*, i8*, ...) @device_printf(i8* %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i32* null, i32** %132, align 8
  br label %151

133:                                              ; preds = %100
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = call i32 @ohci_init(%struct.TYPE_7__* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @device_probe_and_attach(i32 %142)
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %138, %133
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i8*, i8** %3, align 8
  %149 = call i32 (i8*, i8*, ...) @device_printf(i8* %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %151

150:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %155

151:                                              ; preds = %147, %127, %97, %83, %48
  %152 = load i8*, i8** %3, align 8
  %153 = call i32 @bhnd_ohci_detach(i8* %152)
  %154 = load i32, i32* @ENXIO, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %151, %150, %32
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.TYPE_7__* @device_get_softc(i8*) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i32 @device_add_child(i8*, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @bus_setup_intr(i8*, i32*, i32, i32*, i32*, %struct.TYPE_7__*, i32**) #1

declare dso_local i32 @ohci_init(%struct.TYPE_7__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @bhnd_ohci_detach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
