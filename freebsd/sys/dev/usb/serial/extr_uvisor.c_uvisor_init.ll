; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvisor.c_uvisor_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvisor.c_uvisor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvisor_softc = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_config = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i8*, i8* }
%struct.uvisor_connection_info = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.uvisor_palm_connection_info = type { i32, %struct.TYPE_2__*, i64 }

@UVISOR_FLAG_VISOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"getting connection info\0A\00", align 1
@UT_READ_VENDOR_ENDPOINT = common dso_local global i8* null, align 8
@UVISOR_GET_CONNECTION_INFORMATION = common dso_local global i8* null, align 8
@UVISOR_CONNECTION_INFO_SIZE = common dso_local global i32 0, align 4
@USB_SHORT_XFER_OK = common dso_local global i32 0, align 4
@USB_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@UVISOR_FLAG_PALM4 = common dso_local global i32 0, align 4
@UVISOR_GET_PALM_INFORMATION = common dso_local global i8* null, align 8
@UVISOR_GET_PALM_INFORMATION_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"too little data\0A\00", align 1
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@UVISOR_FLAG_PALM35 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"getting config info\0A\00", align 1
@UT_READ = common dso_local global i8* null, align 8
@UR_GET_CONFIG = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"get the interface number\0A\00", align 1
@UT_READ_DEVICE = common dso_local global i8* null, align 8
@UR_GET_INTERFACE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@UVISOR_MAX_CONN = common dso_local global i64 0, align 8
@UVISOR_REQUEST_BYTES_AVAILABLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uvisor_softc*, %struct.usb_device*, %struct.usb_config*)* @uvisor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uvisor_init(%struct.uvisor_softc* %0, %struct.usb_device* %1, %struct.usb_config* %2) #0 {
  %4 = alloca %struct.uvisor_softc*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.usb_device_request, align 8
  %9 = alloca %struct.uvisor_connection_info, align 8
  %10 = alloca %struct.uvisor_palm_connection_info, align 8
  %11 = alloca i64, align 8
  %12 = alloca [256 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.uvisor_softc* %0, %struct.uvisor_softc** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  store %struct.usb_config* %2, %struct.usb_config** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.uvisor_softc*, %struct.uvisor_softc** %4, align 8
  %15 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @UVISOR_FLAG_VISOR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** @UT_READ_VENDOR_ENDPOINT, align 8
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** @UVISOR_GET_CONNECTION_INFORMATION, align 8
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @USETW(i32 %27, i32 0)
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @USETW(i32 %30, i32 0)
  %32 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @UVISOR_CONNECTION_INFO_SIZE, align 4
  %35 = call i32 @USETW(i32 %33, i32 %34)
  %36 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %37 = bitcast %struct.uvisor_connection_info* %9 to %struct.uvisor_palm_connection_info*
  %38 = load i32, i32* @USB_SHORT_XFER_OK, align 4
  %39 = load i32, i32* @USB_DEFAULT_TIMEOUT, align 4
  %40 = call i64 @usbd_do_request_flags(%struct.usb_device* %36, i32* null, %struct.usb_device_request* %8, %struct.uvisor_palm_connection_info* %37, i32 %38, i64* %11, i32 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  br label %169

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.uvisor_softc*, %struct.uvisor_softc** %4, align 8
  %47 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @UVISOR_FLAG_PALM4, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %117

52:                                               ; preds = %45
  %53 = load i8*, i8** @UT_READ_VENDOR_ENDPOINT, align 8
  %54 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 4
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** @UVISOR_GET_PALM_INFORMATION, align 8
  %56 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 3
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @USETW(i32 %58, i32 0)
  %60 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @USETW(i32 %61, i32 0)
  %63 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @UVISOR_GET_PALM_INFORMATION_LEN, align 4
  %66 = call i32 @USETW(i32 %64, i32 %65)
  %67 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %68 = load i32, i32* @USB_SHORT_XFER_OK, align 4
  %69 = load i32, i32* @USB_DEFAULT_TIMEOUT, align 4
  %70 = call i64 @usbd_do_request_flags(%struct.usb_device* %67, i32* null, %struct.usb_device_request* %8, %struct.uvisor_palm_connection_info* %10, i32 %68, i64* %11, i32 %69)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  br label %169

74:                                               ; preds = %52
  %75 = load i64, i64* %11, align 8
  %76 = icmp slt i64 %75, 12
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %79, i64* %7, align 8
  br label %169

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.uvisor_palm_connection_info, %struct.uvisor_palm_connection_info* %10, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.uvisor_palm_connection_info, %struct.uvisor_palm_connection_info* %10, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %90, 15
  %92 = load %struct.usb_config*, %struct.usb_config** %6, align 8
  %93 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %92, i64 0
  %94 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* %13, align 4
  %96 = ashr i32 %95, 4
  %97 = load %struct.usb_config*, %struct.usb_config** %6, align 8
  %98 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %97, i64 1
  %99 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  br label %116

100:                                              ; preds = %80
  %101 = getelementptr inbounds %struct.uvisor_palm_connection_info, %struct.uvisor_palm_connection_info* %10, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = and i32 %106, 15
  %108 = load %struct.usb_config*, %struct.usb_config** %6, align 8
  %109 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %108, i64 0
  %110 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* %13, align 4
  %112 = and i32 %111, 15
  %113 = load %struct.usb_config*, %struct.usb_config** %6, align 8
  %114 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %113, i64 1
  %115 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %100, %84
  br label %117

117:                                              ; preds = %116, %45
  %118 = load %struct.uvisor_softc*, %struct.uvisor_softc** %4, align 8
  %119 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @UVISOR_FLAG_PALM35, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %167

124:                                              ; preds = %117
  %125 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i8*, i8** @UT_READ, align 8
  %127 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 4
  store i8* %126, i8** %127, align 8
  %128 = load i8*, i8** @UR_GET_CONFIG, align 8
  %129 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 3
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @USETW(i32 %131, i32 0)
  %133 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @USETW(i32 %134, i32 0)
  %136 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @USETW(i32 %137, i32 1)
  %139 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %140 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %141 = call i64 (%struct.usb_device*, %struct.usb_device_request*, ...) @usbd_do_request(%struct.usb_device* %139, %struct.usb_device_request* null, %struct.usb_device_request* %8, i32* %140)
  store i64 %141, i64* %7, align 8
  %142 = load i64, i64* %7, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %124
  br label %169

145:                                              ; preds = %124
  %146 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i8*, i8** @UT_READ_DEVICE, align 8
  %148 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 4
  store i8* %147, i8** %148, align 8
  %149 = load i8*, i8** @UR_GET_INTERFACE, align 8
  %150 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 3
  store i8* %149, i8** %150, align 8
  %151 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @USETW(i32 %152, i32 0)
  %154 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @USETW(i32 %155, i32 0)
  %157 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @USETW(i32 %158, i32 1)
  %160 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %161 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %162 = call i64 (%struct.usb_device*, %struct.usb_device_request*, ...) @usbd_do_request(%struct.usb_device* %160, %struct.usb_device_request* null, %struct.usb_device_request* %8, i32* %161)
  store i64 %162, i64* %7, align 8
  %163 = load i64, i64* %7, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %145
  br label %169

166:                                              ; preds = %145
  br label %167

167:                                              ; preds = %166, %117
  %168 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %165, %144, %77, %73, %43
  %170 = load i64, i64* %7, align 8
  ret i64 %170
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request_flags(%struct.usb_device*, i32*, %struct.usb_device_request*, %struct.uvisor_palm_connection_info*, i32, i64*, i32) #1

declare dso_local i64 @usbd_do_request(%struct.usb_device*, %struct.usb_device_request*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
