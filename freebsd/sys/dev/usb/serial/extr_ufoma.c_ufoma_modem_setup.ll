; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_modem_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_modem_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufoma_softc = type { i32, i64, i32, i32, i32, i64 }
%struct.usb_attach_arg = type { i32, %struct.TYPE_2__, %struct.usb_interface* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_config_descriptor = type { i32 }
%struct.usb_cdc_acm_descriptor = type { i32, i32 }
%struct.usb_cdc_cm_descriptor = type { i32, i32, i64 }
%struct.usb_interface_descriptor = type { i64 }

@UDESC_CS_INTERFACE = common dso_local global i32 0, align 4
@UDESCSUB_CDC_CM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UDESCSUB_CDC_ACM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"data interface %d, has %sCM over data, has %sbreak\0A\00", align 1
@USB_CDC_CM_OVER_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@USB_CDC_ACM_HAS_BREAK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"no data interface\0A\00", align 1
@ufoma_bulk_config = common dso_local global i32 0, align 4
@UFOMA_BULK_ENDPT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"allocating BULK USB transfers failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ufoma_softc*, %struct.usb_attach_arg*)* @ufoma_modem_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufoma_modem_setup(i32 %0, %struct.ufoma_softc* %1, %struct.usb_attach_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ufoma_softc*, align 8
  %7 = alloca %struct.usb_attach_arg*, align 8
  %8 = alloca %struct.usb_config_descriptor*, align 8
  %9 = alloca %struct.usb_cdc_acm_descriptor*, align 8
  %10 = alloca %struct.usb_cdc_cm_descriptor*, align 8
  %11 = alloca %struct.usb_interface_descriptor*, align 8
  %12 = alloca %struct.usb_interface*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.ufoma_softc* %1, %struct.ufoma_softc** %6, align 8
  store %struct.usb_attach_arg* %2, %struct.usb_attach_arg** %7, align 8
  %15 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %16 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.usb_config_descriptor* @usbd_get_config_descriptor(i32 %17)
  store %struct.usb_config_descriptor* %18, %struct.usb_config_descriptor** %8, align 8
  %19 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %20 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %19, i32 0, i32 2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %20, align 8
  %22 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface* %21)
  store %struct.usb_interface_descriptor* %22, %struct.usb_interface_descriptor** %11, align 8
  %23 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %8, align 8
  %24 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %11, align 8
  %25 = load i32, i32* @UDESC_CS_INTERFACE, align 4
  %26 = load i32, i32* @UDESCSUB_CDC_CM, align 4
  %27 = call i8* @ufoma_get_intconf(%struct.usb_config_descriptor* %23, %struct.usb_interface_descriptor* %24, i32 %25, i32 %26)
  %28 = bitcast i8* %27 to %struct.usb_cdc_cm_descriptor*
  store %struct.usb_cdc_cm_descriptor* %28, %struct.usb_cdc_cm_descriptor** %10, align 8
  %29 = load %struct.usb_cdc_cm_descriptor*, %struct.usb_cdc_cm_descriptor** %10, align 8
  %30 = icmp eq %struct.usb_cdc_cm_descriptor* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load %struct.usb_cdc_cm_descriptor*, %struct.usb_cdc_cm_descriptor** %10, align 8
  %33 = getelementptr inbounds %struct.usb_cdc_cm_descriptor, %struct.usb_cdc_cm_descriptor* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 16
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %3
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %158

39:                                               ; preds = %31
  %40 = load %struct.usb_cdc_cm_descriptor*, %struct.usb_cdc_cm_descriptor** %10, align 8
  %41 = getelementptr inbounds %struct.usb_cdc_cm_descriptor, %struct.usb_cdc_cm_descriptor* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %44 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.usb_cdc_cm_descriptor*, %struct.usb_cdc_cm_descriptor** %10, align 8
  %46 = getelementptr inbounds %struct.usb_cdc_cm_descriptor, %struct.usb_cdc_cm_descriptor* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %49 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %8, align 8
  %51 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %11, align 8
  %52 = load i32, i32* @UDESC_CS_INTERFACE, align 4
  %53 = load i32, i32* @UDESCSUB_CDC_ACM, align 4
  %54 = call i8* @ufoma_get_intconf(%struct.usb_config_descriptor* %50, %struct.usb_interface_descriptor* %51, i32 %52, i32 %53)
  %55 = bitcast i8* %54 to %struct.usb_cdc_acm_descriptor*
  store %struct.usb_cdc_acm_descriptor* %55, %struct.usb_cdc_acm_descriptor** %9, align 8
  %56 = load %struct.usb_cdc_acm_descriptor*, %struct.usb_cdc_acm_descriptor** %9, align 8
  %57 = icmp eq %struct.usb_cdc_acm_descriptor* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %39
  %59 = load %struct.usb_cdc_acm_descriptor*, %struct.usb_cdc_acm_descriptor** %9, align 8
  %60 = getelementptr inbounds %struct.usb_cdc_acm_descriptor, %struct.usb_cdc_acm_descriptor* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %62, 8
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %39
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %158

66:                                               ; preds = %58
  %67 = load %struct.usb_cdc_acm_descriptor*, %struct.usb_cdc_acm_descriptor** %9, align 8
  %68 = getelementptr inbounds %struct.usb_cdc_acm_descriptor, %struct.usb_cdc_acm_descriptor* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %71 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %74 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %77 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @USB_CDC_CM_OVER_DATA, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %84 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %85 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @USB_CDC_ACM_HAS_BREAK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %92 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %75, i8* %83, i8* %91)
  store i64 0, i64* %13, align 8
  br label %93

93:                                               ; preds = %133, %66
  %94 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %95 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call %struct.usb_interface* @usbd_get_iface(i32 %96, i64 %97)
  store %struct.usb_interface* %98, %struct.usb_interface** %12, align 8
  %99 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %100 = icmp ne %struct.usb_interface* %99, null
  br i1 %100, label %101, label %128

101:                                              ; preds = %93
  %102 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %103 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface* %102)
  store %struct.usb_interface_descriptor* %103, %struct.usb_interface_descriptor** %11, align 8
  %104 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %11, align 8
  %105 = icmp ne %struct.usb_interface_descriptor* %104, null
  br i1 %105, label %106, label %127

106:                                              ; preds = %101
  %107 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %11, align 8
  %108 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %111 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %106
  %115 = load i64, i64* %13, align 8
  %116 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %117 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %116, i32 0, i32 5
  store i64 %115, i64* %117, align 8
  %118 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %119 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %13, align 8
  %122 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %123 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @usbd_set_parent_iface(i32 %120, i64 %121, i32 %125)
  br label %136

127:                                              ; preds = %106, %101
  br label %132

128:                                              ; preds = %93
  %129 = load i32, i32* %5, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  store i32 %131, i32* %4, align 4
  br label %158

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %13, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %13, align 8
  br label %93

136:                                              ; preds = %114
  %137 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %138 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %141 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %140, i32 0, i32 5
  %142 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %143 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ufoma_bulk_config, align 4
  %146 = load i32, i32* @UFOMA_BULK_ENDPT_MAX, align 4
  %147 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %148 = load %struct.ufoma_softc*, %struct.ufoma_softc** %6, align 8
  %149 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %148, i32 0, i32 3
  %150 = call i64 @usbd_transfer_setup(i32 %139, i64* %141, i32 %144, i32 %145, i32 %146, %struct.ufoma_softc* %147, i32* %149)
  store i64 %150, i64* %14, align 8
  %151 = load i64, i64* %14, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %136
  %154 = load i32, i32* %5, align 4
  %155 = call i32 (i32, i8*, ...) @device_printf(i32 %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %156 = load i32, i32* @EINVAL, align 4
  store i32 %156, i32* %4, align 4
  br label %158

157:                                              ; preds = %136
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %153, %128, %64, %37
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.usb_config_descriptor* @usbd_get_config_descriptor(i32) #1

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface*) #1

declare dso_local i8* @ufoma_get_intconf(%struct.usb_config_descriptor*, %struct.usb_interface_descriptor*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(i32, i64) #1

declare dso_local i32 @usbd_set_parent_iface(i32, i64, i32) #1

declare dso_local i64 @usbd_transfer_setup(i32, i64*, i32, i32, i32, %struct.ufoma_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
