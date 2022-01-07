; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/usb/extr_bhnd_ehci.c_bhnd_ehci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/usb/extr_bhnd_ehci.c_bhnd_ehci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i32, i32, i32*, i32*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@USB_REV_2_0 = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't allocate DMA memory: %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Could not map memory\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not allocate error irq\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Could not add USB device\00", align 1
@EHCI_HC_DEVSTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"Broadcom\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Could not setup irq, %d\00", align 1
@EHCI_SCFLG_LOSTINTRBUG = common dso_local global i32 0, align 4
@bhnd_ehci_post_reset = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"USB init failed err=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bhnd_ehci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_ehci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_7__* @device_get_softc(i32 %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 5
  store i32 %9, i32* %12, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @USB_REV_2_0, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 32, i32* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @USB_GET_DMA_TAG(i32 %32)
  %34 = call i32 @usb_bus_mem_alloc_all(%struct.TYPE_8__* %31, i32 %33, i32* @ehci_iterate_hw_softc)
  store i32 %34, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i32, i8*, ...) @BHND_ERROR_DEV(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %177

41:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @SYS_RES_MEMORY, align 4
  %44 = load i32, i32* @RF_ACTIVE, align 4
  %45 = call i8* @bus_alloc_resource_any(i32 %42, i32 %43, i32* %6, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %3, align 4
  %54 = call i32 (i32, i8*, ...) @BHND_ERROR_DEV(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %173

55:                                               ; preds = %41
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 6
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @rman_get_bustag(i8* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 6
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @rman_get_bushandle(i8* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @rman_get_size(i8* %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %6, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @SYS_RES_IRQ, align 4
  %76 = load i32, i32* @RF_SHAREABLE, align 4
  %77 = load i32, i32* @RF_ACTIVE, align 4
  %78 = or i32 %76, %77
  %79 = call i8* @bus_alloc_resource_any(i32 %74, i32 %75, i32* %6, i32 %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  store i32* %80, i32** %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %55
  %88 = load i32, i32* %3, align 4
  %89 = call i32 (i32, i8*, ...) @BHND_ERROR_DEV(i32 %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @bhnd_ehci_detach(i32 %90)
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %2, align 4
  br label %177

93:                                               ; preds = %55
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @device_add_child(i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %3, align 4
  %106 = call i32 (i32, i8*, ...) @BHND_ERROR_DEV(i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %173

107:                                              ; preds = %93
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = call i32 @device_set_ivars(i32 %111, %struct.TYPE_8__* %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @EHCI_HC_DEVSTR, align 4
  %120 = call i32 @device_set_desc(i32 %118, i32 %119)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @sprintf(i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @INTR_TYPE_BIO, align 4
  %130 = load i32, i32* @INTR_MPSAFE, align 4
  %131 = or i32 %129, %130
  %132 = load i64, i64* @ehci_interrupt, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = call i32 @bus_setup_intr(i32 %125, i32* %128, i32 %131, i32* null, i32* %133, %struct.TYPE_7__* %134, i32** %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %107
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 (i32, i8*, ...) @BHND_ERROR_DEV(i32 %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  store i32* null, i32** %145, align 8
  br label %173

146:                                              ; preds = %107
  %147 = load i32, i32* @EHCI_SCFLG_LOSTINTRBUG, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* @bhnd_ehci_post_reset, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %156 = call i32 @ehci_init(%struct.TYPE_7__* %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %146
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @device_probe_and_attach(i32 %163)
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %159, %146
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* %5, align 4
  %171 = call i32 (i32, i8*, ...) @BHND_ERROR_DEV(i32 %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  br label %173

172:                                              ; preds = %165
  store i32 0, i32* %2, align 4
  br label %177

173:                                              ; preds = %168, %140, %104, %52
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @bhnd_ehci_detach(i32 %174)
  %176 = load i32, i32* @ENXIO, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %173, %172, %87, %36
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_7__* @device_get_softc(i32) #1

declare dso_local i32 @usb_bus_mem_alloc_all(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i32 @BHND_ERROR_DEV(i32, i8*, ...) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i32 @bhnd_ehci_detach(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.TYPE_7__*, i32**) #1

declare dso_local i32 @ehci_init(%struct.TYPE_7__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
