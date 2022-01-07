; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ehci_ps3.c_ehci_ps3_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ehci_ps3.c_ehci_ps3_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i32, i32, i32*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not allocate irq\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Sony\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Could not setup error irq, %d\0A\00", align 1
@ehci_ps3_post_reset = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"USB init failed err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ehci_ps3_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_ps3_attach(i32 %0) #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  store i32 %9, i32* %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @EHCI_MAX_DEVICES, align 4
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
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @USB_GET_DMA_TAG(i32 %28)
  %30 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_8__* %27, i32 %29, i32* @ehci_iterate_hw_softc)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %154

34:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SYS_RES_MEMORY, align 4
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = call i8* @bus_alloc_resource_any(i32 %35, i32 %36, i32* %5, i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %152

48:                                               ; preds = %34
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @rman_get_bustag(i8* %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @rman_get_bushandle(i8* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @rman_get_size(i8* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  store i32 1, i32* %5, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SYS_RES_IRQ, align 4
  %69 = load i32, i32* @RF_SHAREABLE, align 4
  %70 = load i32, i32* @RF_ACTIVE, align 4
  %71 = or i32 %69, %70
  %72 = call i8* @bus_alloc_resource_any(i32 %67, i32 %68, i32* %5, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %48
  %81 = load i32, i32* %3, align 4
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %2, align 4
  br label %154

84:                                               ; preds = %48
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @device_add_child(i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %3, align 4
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %2, align 4
  br label %154

99:                                               ; preds = %84
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = call i32 @device_set_ivars(i32 %103, %struct.TYPE_8__* %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @sprintf(i32 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* @INTR_TYPE_BIO, align 4
  %116 = load i32, i32* @INTR_MPSAFE, align 4
  %117 = or i32 %115, %116
  %118 = load i64, i64* @ehci_interrupt, align 8
  %119 = inttoptr i64 %118 to i32*
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = call i32 @bus_setup_intr(i32 %111, i32* %114, i32 %117, i32* null, i32* %119, %struct.TYPE_7__* %120, i32* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %99
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 (i32, i8*, ...) @device_printf(i32 %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  br label %152

130:                                              ; preds = %99
  %131 = load i32, i32* @ehci_ps3_post_reset, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = call i32 @ehci_init(%struct.TYPE_7__* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %140)
  br label %152

142:                                              ; preds = %130
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @device_probe_and_attach(i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %154

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151, %138, %126, %45
  %153 = load i32, i32* @ENXIO, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %150, %95, %80, %32
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.TYPE_7__* @device_get_softc(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ehci_init(%struct.TYPE_7__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
