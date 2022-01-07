; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_transfer_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_transfer_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, %struct.TYPE_7__, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.xhci_td*, %struct.xhci_td* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64* }
%struct.xhci_td = type { i32, i64, i32, %struct.xhci_trb* }
%struct.xhci_trb = type { i8*, i8*, i8* }
%struct.xhci_endpoint_ext = type { i64, i64*, i64, i32, i64, i64*, %struct.usb_xfer**, i32, %struct.xhci_trb* }
%struct.xhci_softc = type { i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Already in schedule\0A\00", align 1
@UE_XFERTYPE = common dso_local global i32 0, align 4
@XHCI_MAX_TRANSFERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Too many TDs queued.\0A\00", align 1
@USB_ERR_NOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Reconfigure control endpoint\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Not running\0A\00", align 1
@XHCI_TRB_3_IOC_BIT = common dso_local global i32 0, align 4
@XHCI_TRB_3_CYCLE_BIT = common dso_local global i32 0, align 4
@XHCI_TRB_TYPE_LINK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"qh_pos = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @xhci_transfer_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_transfer_insert(%struct.usb_xfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca %struct.xhci_td*, align 8
  %5 = alloca %struct.xhci_td*, align 8
  %6 = alloca %struct.xhci_trb*, align 8
  %7 = alloca %struct.xhci_endpoint_ext*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.xhci_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  %14 = call i32 @DPRINTFN(i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @DPRINTFN(i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %268

25:                                               ; preds = %1
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %27 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %32 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %31, i32 0, i32 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = call %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(i32 %30, %struct.TYPE_8__* %35)
  store %struct.xhci_endpoint_ext* %36, %struct.xhci_endpoint_ext** %7, align 8
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %38 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %37, i32 0, i32 6
  %39 = load %struct.xhci_td*, %struct.xhci_td** %38, align 8
  store %struct.xhci_td* %39, %struct.xhci_td** %4, align 8
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %41 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %40, i32 0, i32 5
  %42 = load %struct.xhci_td*, %struct.xhci_td** %41, align 8
  store %struct.xhci_td* %42, %struct.xhci_td** %5, align 8
  %43 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %44 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %47 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %46, i32 0, i32 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @UE_XFERTYPE, align 4
  %54 = and i32 %52, %53
  switch i32 %54, label %56 [
    i32 129, label %55
    i32 128, label %55
  ]

55:                                               ; preds = %25, %25
  store i64 1, i64* %12, align 8
  br label %60

56:                                               ; preds = %25
  %57 = load i32, i32* @XHCI_MAX_TRANSFERS, align 4
  %58 = sub nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %56, %55
  %61 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %62 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = call i32 @DPRINTFN(i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @USB_ERR_NOMEM, align 4
  store i32 %71, i32* %2, align 4
  br label %268

72:                                               ; preds = %60
  %73 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %74 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %72
  %79 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %80 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %83 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %82, i32 0, i32 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %81, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %78
  %93 = call i32 @DPRINTFN(i32 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %95 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %94, i32 0, i32 3
  store i32 1, i32* %95, align 8
  %96 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %97 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %92, %78, %72
  %99 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %100 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %98
  %104 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %105 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %104, i32 0, i32 3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %108)
  store %struct.xhci_softc* %109, %struct.xhci_softc** %13, align 8
  %110 = call i32 @DPRINTFN(i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %111 = load %struct.xhci_softc*, %struct.xhci_softc** %13, align 8
  %112 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %111, i32 0, i32 1
  %113 = call i32 @USB_BUS_CONTROL_XFER_PROC(i32* %112)
  %114 = load %struct.xhci_softc*, %struct.xhci_softc** %13, align 8
  %115 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load %struct.xhci_softc*, %struct.xhci_softc** %13, align 8
  %119 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = call i32 @usb_proc_msignal(i32 %113, i32* %117, i32* %121)
  store i32 0, i32* %2, align 4
  br label %268

123:                                              ; preds = %98
  %124 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %125 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %132 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %131, i32 0, i32 5
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %10, align 8
  %137 = load i64, i64* %10, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %11, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load i32, i32* @XHCI_MAX_TRANSFERS, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = icmp sge i64 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %123
  store i64 0, i64* %11, align 8
  br label %145

145:                                              ; preds = %144, %123
  %146 = load i64, i64* %11, align 8
  %147 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %148 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %147, i32 0, i32 5
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  store i64 %146, i64* %151, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i32, i32* @XHCI_MAX_TRANSFERS, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %152, %154
  %156 = load i64, i64* %10, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %10, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load i32, i32* @XHCI_MAX_TRANSFERS, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %158, %160
  %162 = load i64, i64* %11, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %11, align 8
  %164 = load i64, i64* %11, align 8
  %165 = mul i64 %164, 24
  %166 = load i64, i64* %8, align 8
  %167 = add i64 %166, %165
  store i64 %167, i64* %8, align 8
  %168 = load %struct.xhci_td*, %struct.xhci_td** %5, align 8
  %169 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %168, i32 0, i32 3
  %170 = load %struct.xhci_trb*, %struct.xhci_trb** %169, align 8
  %171 = load %struct.xhci_td*, %struct.xhci_td** %5, align 8
  %172 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %170, i64 %174
  store %struct.xhci_trb* %175, %struct.xhci_trb** %6, align 8
  %176 = load i64, i64* %8, align 8
  %177 = call i8* @htole64(i64 %176)
  %178 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %179 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  %180 = call i32 @XHCI_TRB_2_IRQ_SET(i32 0)
  %181 = call i8* @htole32(i32 %180)
  %182 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %183 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* @XHCI_TRB_3_IOC_BIT, align 4
  %185 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @XHCI_TRB_TYPE_LINK, align 4
  %188 = call i32 @XHCI_TRB_3_TYPE_SET(i32 %187)
  %189 = or i32 %186, %188
  %190 = call i8* @htole32(i32 %189)
  %191 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %192 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %191, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  %193 = load %struct.xhci_td*, %struct.xhci_td** %5, align 8
  %194 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @usb_pc_cpu_flush(i32 %195)
  %197 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %198 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %197, i32 0, i32 8
  %199 = load %struct.xhci_trb*, %struct.xhci_trb** %198, align 8
  %200 = load i64, i64* %11, align 8
  %201 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %199, i64 %200
  %202 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %201, i32 0, i32 2
  store i8* null, i8** %202, align 8
  %203 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %204 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %203, i32 0, i32 8
  %205 = load %struct.xhci_trb*, %struct.xhci_trb** %204, align 8
  %206 = load i64, i64* %11, align 8
  %207 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %205, i64 %206
  %208 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %207, i32 0, i32 1
  store i8* null, i8** %208, align 8
  %209 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %210 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %209, i32 0, i32 8
  %211 = load %struct.xhci_trb*, %struct.xhci_trb** %210, align 8
  %212 = load i64, i64* %11, align 8
  %213 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %211, i64 %212
  %214 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %213, i32 0, i32 0
  store i8* null, i8** %214, align 8
  %215 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %216 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i8* @htole64(i64 %217)
  %219 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %220 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %219, i32 0, i32 8
  %221 = load %struct.xhci_trb*, %struct.xhci_trb** %220, align 8
  %222 = load i64, i64* %10, align 8
  %223 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %221, i64 %222
  %224 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %223, i32 0, i32 2
  store i8* %218, i8** %224, align 8
  %225 = call i32 @XHCI_TRB_2_IRQ_SET(i32 0)
  %226 = call i8* @htole32(i32 %225)
  %227 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %228 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %227, i32 0, i32 8
  %229 = load %struct.xhci_trb*, %struct.xhci_trb** %228, align 8
  %230 = load i64, i64* %10, align 8
  %231 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %229, i64 %230
  %232 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %231, i32 0, i32 1
  store i8* %226, i8** %232, align 8
  %233 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %234 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @usb_pc_cpu_flush(i32 %235)
  %237 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %238 = load i32, i32* @XHCI_TRB_TYPE_LINK, align 4
  %239 = call i32 @XHCI_TRB_3_TYPE_SET(i32 %238)
  %240 = or i32 %237, %239
  %241 = call i8* @htole32(i32 %240)
  %242 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %243 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %242, i32 0, i32 8
  %244 = load %struct.xhci_trb*, %struct.xhci_trb** %243, align 8
  %245 = load i64, i64* %10, align 8
  %246 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %244, i64 %245
  %247 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %246, i32 0, i32 0
  store i8* %241, i8** %247, align 8
  %248 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %249 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @usb_pc_cpu_flush(i32 %250)
  %252 = load i64, i64* %10, align 8
  %253 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %252)
  %254 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %255 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %256 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %255, i32 0, i32 6
  %257 = load %struct.usb_xfer**, %struct.usb_xfer*** %256, align 8
  %258 = load i64, i64* %10, align 8
  %259 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %257, i64 %258
  store %struct.usb_xfer* %254, %struct.usb_xfer** %259, align 8
  %260 = load i64, i64* %10, align 8
  %261 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %262 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %261, i32 0, i32 2
  store i64 %260, i64* %262, align 8
  %263 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %264 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  store i32 1, i32* %265, align 8
  %266 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %267 = call i32 @xhci_endpoint_doorbell(%struct.usb_xfer* %266)
  store i32 0, i32* %2, align 4
  br label %268

268:                                              ; preds = %145, %103, %69, %23
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local i32 @usb_proc_msignal(i32, i32*, i32*) #1

declare dso_local i32 @USB_BUS_CONTROL_XFER_PROC(i32*) #1

declare dso_local i8* @htole64(i64) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @XHCI_TRB_2_IRQ_SET(i32) #1

declare dso_local i32 @XHCI_TRB_3_TYPE_SET(i32) #1

declare dso_local i32 @usb_pc_cpu_flush(i32) #1

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i32 @xhci_endpoint_doorbell(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
