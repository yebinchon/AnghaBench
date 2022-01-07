; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_cbi_status_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_cbi_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umass_softc = type { i32, %struct.TYPE_7__, i8*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 (%struct.umass_softc.0*, %union.ccb*, i64, i32)*, %union.ccb*, i64, i64 }
%struct.umass_softc.0 = type opaque
%union.ccb = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.usb_page_cache = type { i32 }

@UMASS_PROTO_UFI = common dso_local global i32 0, align 4
@UDMASS_CBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"UFI CCI, ASC = 0x%02x, ASCQ = 0x%02x\0A\00", align 1
@STATUS_CMD_OK = common dso_local global i32 0, align 4
@STATUS_CMD_FAILED = common dso_local global i32 0, align 4
@UMASS_T_CBI_COMMAND = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"type=0x%02x, value=0x%02x\0A\00", align 1
@IDB_TYPE_CCI = common dso_local global i32 0, align 4
@IDB_VALUE_STATUS_MASK = common dso_local global i32 0, align 4
@IDB_VALUE_PASS = common dso_local global i32 0, align 4
@IDB_VALUE_FAIL = common dso_local global i32 0, align 4
@IDB_VALUE_PERSISTENT = common dso_local global i32 0, align 4
@STATUS_WIRE_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to read CSW: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umass_t_cbi_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_t_cbi_status_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umass_softc*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.umass_softc* %12, %struct.umass_softc** %5, align 8
  %13 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %14 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %union.ccb*, %union.ccb** %15, align 8
  store %union.ccb* %16, %union.ccb** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @usbd_xfer_status(%struct.usb_xfer* %17, i32* %10, i32* null, i32* null, i32* null)
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call i32 @USB_GET_STATE(%struct.usb_xfer* %19)
  switch i32 %20, label %176 [
    i32 128, label %21
    i32 129, label %168
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %169

25:                                               ; preds = %21
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %27 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %26, i32 0)
  store %struct.usb_page_cache* %27, %struct.usb_page_cache** %7, align 8
  %28 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %29 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %30 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %29, i32 0, i32 3
  %31 = call i32 @usbd_copy_out(%struct.usb_page_cache* %28, i32 0, %struct.TYPE_8__* %30, i32 16)
  %32 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %33 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %37 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %35, %39
  store i64 %40, i64* %8, align 8
  %41 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %42 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @UMASS_PROTO_UFI, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %25
  %48 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %49 = load i32, i32* @UDMASS_CBI, align 4
  %50 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %51 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %56 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.umass_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.umass_softc* %48, i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %59)
  %61 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %62 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %47
  %68 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %69 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @STATUS_CMD_OK, align 4
  br label %78

76:                                               ; preds = %67, %47
  %77 = load i32, i32* @STATUS_CMD_FAILED, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %9, align 4
  %80 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %81 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store %union.ccb* null, %union.ccb** %82, align 8
  %83 = load i8*, i8** @UMASS_T_CBI_COMMAND, align 8
  %84 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %85 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %87 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32 (%struct.umass_softc.0*, %union.ccb*, i64, i32)*, i32 (%struct.umass_softc.0*, %union.ccb*, i64, i32)** %88, align 8
  %90 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %91 = bitcast %struct.umass_softc* %90 to %struct.umass_softc.0*
  %92 = load %union.ccb*, %union.ccb** %6, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 %89(%struct.umass_softc.0* %91, %union.ccb* %92, i64 %93, i32 %94)
  br label %185

96:                                               ; preds = %25
  %97 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %98 = load i32, i32* @UDMASS_CBI, align 4
  %99 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %100 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %105 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct.umass_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.umass_softc* %97, i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %108)
  %110 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %111 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IDB_TYPE_CCI, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %166

117:                                              ; preds = %96
  %118 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %119 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IDB_VALUE_STATUS_MASK, align 4
  %124 = and i32 %122, %123
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @IDB_VALUE_PASS, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i32, i32* @STATUS_CMD_OK, align 4
  br label %148

130:                                              ; preds = %117
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @IDB_VALUE_FAIL, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @STATUS_CMD_FAILED, align 4
  br label %146

136:                                              ; preds = %130
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @IDB_VALUE_PERSISTENT, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* @STATUS_CMD_FAILED, align 4
  br label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @STATUS_WIRE_FAILED, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  br label %146

146:                                              ; preds = %144, %134
  %147 = phi i32 [ %135, %134 ], [ %145, %144 ]
  br label %148

148:                                              ; preds = %146, %128
  %149 = phi i32 [ %129, %128 ], [ %147, %146 ]
  store i32 %149, i32* %9, align 4
  %150 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %151 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store %union.ccb* null, %union.ccb** %152, align 8
  %153 = load i8*, i8** @UMASS_T_CBI_COMMAND, align 8
  %154 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %155 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %157 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32 (%struct.umass_softc.0*, %union.ccb*, i64, i32)*, i32 (%struct.umass_softc.0*, %union.ccb*, i64, i32)** %158, align 8
  %160 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %161 = bitcast %struct.umass_softc* %160 to %struct.umass_softc.0*
  %162 = load %union.ccb*, %union.ccb** %6, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 %159(%struct.umass_softc.0* %161, %union.ccb* %162, i64 %163, i32 %164)
  br label %185

166:                                              ; preds = %96
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %2, %167
  br label %169

169:                                              ; preds = %168, %24
  %170 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %171 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %172 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %171)
  %173 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %170, i32 0, i32 %172)
  %174 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %175 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %174)
  br label %185

176:                                              ; preds = %2
  %177 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %178 = load i32, i32* @UDMASS_CBI, align 4
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @usbd_errstr(i32 %179)
  %181 = call i32 (%struct.umass_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.umass_softc* %177, i32 %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %180)
  %182 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @umass_tr_error(%struct.usb_xfer* %182, i32 %183)
  br label %185

185:                                              ; preds = %176, %169, %148, %78
  ret void
}

declare dso_local %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*, i32, ...) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @umass_tr_error(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
