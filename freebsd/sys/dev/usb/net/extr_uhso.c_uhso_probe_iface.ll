; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_probe_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_probe_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhso_softc = type { %struct.usb_device*, i64, i32, i32, i32, i32, i32*, i32 }
%struct.usb_device = type opaque
%struct.usb_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Probing for interface %d, probe_func=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Probe result %x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@UHSO_PORT_TYPE_NETWORK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"uhso_attach_ifnet failed\00", align 1
@UHSO_IF_MUX = common dso_local global i32 0, align 4
@UHSO_PORT_SERIAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Trying to attach mux. serial\0A\00", align 1
@uhso_ucom_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ucom_attach failed\0A\00", align 1
@UHSO_MUX_ENDPT_INTR = common dso_local global i64 0, align 8
@UHSO_IF_BULK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Unknown type %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhso_softc*, i32, i32 (%struct.usb_device*, i32)*)* @uhso_probe_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhso_probe_iface(%struct.uhso_softc* %0, i32 %1, i32 (%struct.usb_device*, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhso_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.usb_device*, i32)*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uhso_softc* %0, %struct.uhso_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.usb_device*, i32)* %2, i32 (%struct.usb_device*, i32)** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32 (%struct.usb_device*, i32)*, i32 (%struct.usb_device*, i32)** %7, align 8
  %13 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %11, i32 (%struct.usb_device*, i32)* %12)
  %14 = load i32 (%struct.usb_device*, i32)*, i32 (%struct.usb_device*, i32)** %7, align 8
  %15 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %16 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %15, i32 0, i32 0
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 %14(%struct.usb_device* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %4, align 4
  br label %182

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %29 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %31 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %30, i32 0, i32 0
  %32 = load %struct.usb_device*, %struct.usb_device** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %32, i32 %33)
  store %struct.usb_interface* %34, %struct.usb_interface** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @UHSO_IFACE_PORT_TYPE(i32 %35)
  %37 = load i64, i64* @UHSO_PORT_TYPE_NETWORK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %127

39:                                               ; preds = %26
  %40 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %41 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @uhso_attach_ifnet(%struct.uhso_softc* %40, %struct.usb_interface* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %4, align 4
  br label %182

49:                                               ; preds = %39
  %50 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %51 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @UHSO_IFACE_USB_TYPE(i32 %57)
  %59 = load i32, i32* @UHSO_IF_MUX, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @UHSO_IFACE_PORT(i32 %62)
  %64 = load i32, i32* @UHSO_PORT_SERIAL, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @UHSO_IFACE_PORT_TYPE(i32 %67)
  %69 = call i32 @UHSO_IFACE_SPEC(i32 %61, i32 %66, i64 %68)
  %70 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %71 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %4, align 4
  br label %182

72:                                               ; preds = %49
  %73 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %75 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @uhso_attach_muxserial(%struct.uhso_softc* %74, %struct.usb_interface* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %126

80:                                               ; preds = %72
  %81 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %82 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %126

85:                                               ; preds = %80
  %86 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %87 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %86, i32 0, i32 3
  %88 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %89 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %92 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %95 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %96 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %95, i32 0, i32 4
  %97 = call i32 @ucom_attach(i32* %87, i32 %90, i64 %93, %struct.uhso_softc* %94, i32* @uhso_ucom_callback, i32* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %85
  %101 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %102 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %4, align 4
  br label %182

106:                                              ; preds = %85
  %107 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %108 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %107, i32 0, i32 3
  %109 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %110 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ucom_set_pnpinfo_usb(i32* %108, i32 %111)
  %113 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %114 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %113, i32 0, i32 4
  %115 = call i32 @mtx_lock(i32* %114)
  %116 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %117 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @UHSO_MUX_ENDPT_INTR, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @usbd_transfer_start(i32 %121)
  %123 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %124 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %123, i32 0, i32 4
  %125 = call i32 @mtx_unlock(i32* %124)
  br label %126

126:                                              ; preds = %106, %80, %72
  br label %181

127:                                              ; preds = %26
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @UHSO_IFACE_USB_TYPE(i32 %128)
  %130 = load i32, i32* @UHSO_IF_BULK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %176

133:                                              ; preds = %127
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @UHSO_IFACE_PORT(i32 %134)
  %136 = load i32, i32* @UHSO_PORT_SERIAL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %176

139:                                              ; preds = %133
  %140 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %141 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @uhso_attach_bulkserial(%struct.uhso_softc* %140, %struct.usb_interface* %141, i32 %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @ENXIO, align 4
  store i32 %147, i32* %4, align 4
  br label %182

148:                                              ; preds = %139
  %149 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %150 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %149, i32 0, i32 3
  %151 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %152 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %155 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %158 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %159 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %158, i32 0, i32 4
  %160 = call i32 @ucom_attach(i32* %150, i32 %153, i64 %156, %struct.uhso_softc* %157, i32* @uhso_ucom_callback, i32* %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %148
  %164 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %165 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @device_printf(i32 %166, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %168 = load i32, i32* @ENXIO, align 4
  store i32 %168, i32* %4, align 4
  br label %182

169:                                              ; preds = %148
  %170 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %171 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %170, i32 0, i32 3
  %172 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %173 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @ucom_set_pnpinfo_usb(i32* %171, i32 %174)
  br label %180

176:                                              ; preds = %133, %127
  %177 = load i32, i32* %9, align 4
  %178 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @ENXIO, align 4
  store i32 %179, i32* %4, align 4
  br label %182

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %126
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %176, %163, %146, %100, %56, %46, %24
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, ...) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i32) #1

declare dso_local i64 @UHSO_IFACE_PORT_TYPE(i32) #1

declare dso_local i32 @uhso_attach_ifnet(%struct.uhso_softc*, %struct.usb_interface*, i32) #1

declare dso_local i32 @UHSO_IFACE_SPEC(i32, i32, i64) #1

declare dso_local i32 @UHSO_IFACE_USB_TYPE(i32) #1

declare dso_local i32 @UHSO_IFACE_PORT(i32) #1

declare dso_local i32 @uhso_attach_muxserial(%struct.uhso_softc*, %struct.usb_interface*, i32) #1

declare dso_local i32 @ucom_attach(i32*, i32, i64, %struct.uhso_softc*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @uhso_attach_bulkserial(%struct.uhso_softc*, %struct.usb_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
