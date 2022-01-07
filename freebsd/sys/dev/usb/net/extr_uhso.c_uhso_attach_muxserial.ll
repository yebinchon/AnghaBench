; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_attach_muxserial.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_attach_muxserial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhso_softc = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_descriptor = type { i32 }

@UDESC_CS_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to find UDESC_CS_INTERFACE\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Mux port mask %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Found mux port %x (%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@uhso_ctrl_config = common dso_local global i32 0, align 4
@UHSO_CTRL_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to setup control pipe: %s\0A\00", align 1
@uhso_mux_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhso_softc*, %struct.usb_interface*, i32)* @uhso_attach_muxserial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhso_attach_muxserial(%struct.uhso_softc* %0, %struct.usb_interface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhso_softc*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.uhso_softc* %0, %struct.uhso_softc** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %14 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UDESC_CS_INTERFACE, align 4
  %22 = call %struct.usb_descriptor* @usbd_find_descriptor(i32 %15, i32* null, i32 %20, i32 %21, i32 255, i32 0, i32 0)
  store %struct.usb_descriptor* %22, %struct.usb_descriptor** %8, align 8
  %23 = load %struct.usb_descriptor*, %struct.usb_descriptor** %8, align 8
  %24 = icmp eq %struct.usb_descriptor* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %4, align 4
  br label %127

28:                                               ; preds = %3
  %29 = load %struct.usb_descriptor*, %struct.usb_descriptor** %8, align 8
  %30 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.usb_descriptor*, %struct.usb_descriptor** %8, align 8
  %34 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %4, align 4
  br label %127

39:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %103, %39
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %106

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 1, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.usb_descriptor*, %struct.usb_descriptor** %8, align 8
  %48 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %102

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %58 = call i32 @uhso_alloc_tty(%struct.uhso_softc* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %4, align 4
  br label %127

63:                                               ; preds = %53
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %66 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %65, i32 0, i32 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 4
  %72 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %73 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %76 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %75, i32 0, i32 5
  %77 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %78 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %77, i32 0, i32 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @uhso_ctrl_config, align 4
  %86 = load i32, i32* @UHSO_CTRL_MAX, align 4
  %87 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %88 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %89 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %88, i32 0, i32 0
  %90 = call i64 @usbd_transfer_setup(i32 %74, i32* %76, i32 %84, i32 %85, i32 %86, %struct.uhso_softc* %87, i32* %89)
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %12, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %63
  %94 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %95 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @usbd_errstr(i64 %97)
  %99 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %4, align 4
  br label %127

101:                                              ; preds = %63
  br label %102

102:                                              ; preds = %101, %43
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %40

106:                                              ; preds = %40
  %107 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %108 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %111 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %115 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @uhso_mux_config, align 4
  %118 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %119 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %120 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %119, i32 0, i32 0
  %121 = call i64 @usbd_transfer_setup(i32 %109, i32* %113, i32 %116, i32 %117, i32 1, %struct.uhso_softc* %118, i32* %120)
  store i64 %121, i64* %12, align 8
  %122 = load i64, i64* %12, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %106
  %125 = load i32, i32* @ENXIO, align 4
  store i32 %125, i32* %4, align 4
  br label %127

126:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %124, %93, %61, %37, %25
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.usb_descriptor* @usbd_find_descriptor(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, ...) #1

declare dso_local i32 @uhso_alloc_tty(%struct.uhso_softc*) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.uhso_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
