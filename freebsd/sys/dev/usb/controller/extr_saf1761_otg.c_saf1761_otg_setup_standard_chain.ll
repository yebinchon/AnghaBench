; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_setup_standard_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_setup_standard_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i64*, i32, i32, %struct.TYPE_12__*, %struct.saf1761_otg_td*, %struct.saf1761_otg_td*, i32*, %struct.TYPE_13__, %struct.TYPE_8__, %struct.TYPE_10__*, %struct.saf1761_otg_td**, %struct.saf1761_otg_td*, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.saf1761_otg_td = type { i32, i32, i32 }
%struct.saf1761_otg_std_temp = type { i64, i32, i32, i64, i32, %struct.saf1761_otg_td*, i32*, i32*, %struct.saf1761_otg_td*, i32 }
%struct.saf1761_otg_softc = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"addr=%d endpt=%d sumlen=%d speed=%d\0A\00", align 1
@USB_MODE_HOST = common dso_local global i64 0, align 8
@UE_ADDR = common dso_local global i32 0, align 4
@UE_XFERTYPE = common dso_local global i32 0, align 4
@saf1761_host_setup_tx = common dso_local global i32 0, align 4
@saf1761_device_setup_rx = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@UE_INTERRUPT = common dso_local global i32 0, align 4
@saf1761_host_intr_data_rx = common dso_local global i32 0, align 4
@UE_ISOCHRONOUS = common dso_local global i32 0, align 4
@saf1761_host_isoc_data_rx = common dso_local global i32 0, align 4
@SOTG_FRINDEX = common dso_local global i32 0, align 4
@SOTG_FRINDEX_MASK = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@saf1761_host_bulk_data_rx = common dso_local global i32 0, align 4
@saf1761_device_data_tx = common dso_local global i32 0, align 4
@saf1761_host_intr_data_tx = common dso_local global i32 0, align 4
@saf1761_host_isoc_data_tx = common dso_local global i32 0, align 4
@saf1761_host_bulk_data_tx = common dso_local global i32 0, align 4
@saf1761_device_data_rx = common dso_local global i32 0, align 4
@saf1761_device_data_tx_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @saf1761_otg_setup_standard_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_setup_standard_chain(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.saf1761_otg_std_temp, align 8
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca %struct.saf1761_otg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 15
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %17 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @UE_GET_ADDR(i32 %18)
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %21 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %20, i32 0, i32 14
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %24 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %23, i32 0, i32 10
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = call i32 @usbd_get_speed(%struct.TYPE_14__* %27)
  %29 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %22, i32 %28)
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %31 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %30, i32 0, i32 13
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 9
  store i32 %32, i32* %33, align 8
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %35 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %34, i32 0, i32 11
  %36 = load %struct.saf1761_otg_td**, %struct.saf1761_otg_td*** %35, align 8
  %37 = getelementptr inbounds %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %36, i64 0
  %38 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %37, align 8
  store %struct.saf1761_otg_td* %38, %struct.saf1761_otg_td** %5, align 8
  %39 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %41 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %40, i32 0, i32 5
  store %struct.saf1761_otg_td* %39, %struct.saf1761_otg_td** %41, align 8
  %42 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %44 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %43, i32 0, i32 12
  store %struct.saf1761_otg_td* %42, %struct.saf1761_otg_td** %44, align 8
  %45 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 7
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 5
  store %struct.saf1761_otg_td* null, %struct.saf1761_otg_td** %46, align 8
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %48 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %47, i32 0, i32 11
  %49 = load %struct.saf1761_otg_td**, %struct.saf1761_otg_td*** %48, align 8
  %50 = getelementptr inbounds %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %49, i64 0
  %51 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %50, align 8
  %52 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 8
  store %struct.saf1761_otg_td* %51, %struct.saf1761_otg_td** %52, align 8
  %53 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %55 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %1
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %61 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %60, i32 0, i32 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %59, %1
  %66 = phi i1 [ true, %1 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 1
  store i32 %67, i32* %68, align 8
  %69 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %70 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %78 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %77, i32 0, i32 10
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @USB_MODE_HOST, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %89 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %88, i32 0, i32 10
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32 %92)
  store %struct.saf1761_otg_softc* %93, %struct.saf1761_otg_softc** %4, align 8
  %94 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %95 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @UE_ADDR, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %7, align 4
  %99 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %100 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %99, i32 0, i32 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @UE_XFERTYPE, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %8, align 4
  %108 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %109 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %108, i32 0, i32 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %160

113:                                              ; preds = %65
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %115 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %159

119:                                              ; preds = %113
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_host_setup_tx, i32** %123, align 8
  br label %126

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_device_setup_rx, i32** %125, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %128 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 3
  store i64 %131, i64* %132, align 8
  %133 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %134 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %133, i32 0, i32 7
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 7
  store i32* %136, i32** %137, align 8
  %138 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 0
  %143 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 4
  store i32 %142, i32* %143, align 8
  %144 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %145 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %157

148:                                              ; preds = %126
  %149 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %150 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %149, i32 0, i32 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %155, align 8
  br label %156

156:                                              ; preds = %154, %148
  br label %157

157:                                              ; preds = %156, %126
  %158 = call i32 @saf1761_otg_setup_standard_chain_sub(%struct.saf1761_otg_std_temp* %3)
  br label %159

159:                                              ; preds = %157, %113
  store i32 1, i32* %6, align 4
  br label %161

160:                                              ; preds = %65
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %160, %159
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %164 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %162, %165
  br i1 %166, label %167, label %272

167:                                              ; preds = %161
  %168 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %169 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @UE_DIR_IN, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %219

174:                                              ; preds = %167
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %216

177:                                              ; preds = %174
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @UE_INTERRUPT, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_host_intr_data_rx, i32** %182, align 8
  br label %215

183:                                              ; preds = %177
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %212

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_host_isoc_data_rx, i32** %188, align 8
  %189 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %190 = load i32, i32* @SOTG_FRINDEX, align 4
  %191 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %189, i32 %190)
  %192 = add nsw i32 %191, 8
  %193 = load i32, i32* @SOTG_FRINDEX_MASK, align 4
  %194 = and i32 %193, -8
  %195 = and i32 %192, %194
  store i32 %195, i32* %11, align 4
  %196 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %197 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %196, i32 0, i32 10
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @USB_SPEED_HIGH, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %187
  %206 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %207 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 1, %208
  store i32 %209, i32* %12, align 4
  br label %211

210:                                              ; preds = %187
  store i32 8, i32* %12, align 4
  br label %211

211:                                              ; preds = %210, %205
  br label %214

212:                                              ; preds = %183
  %213 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_host_bulk_data_rx, i32** %213, align 8
  br label %214

214:                                              ; preds = %212, %211
  br label %215

215:                                              ; preds = %214, %181
  store i32 0, i32* %9, align 4
  br label %218

216:                                              ; preds = %174
  %217 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_device_data_tx, i32** %217, align 8
  store i32 1, i32* %9, align 4
  br label %218

218:                                              ; preds = %216, %215
  br label %264

219:                                              ; preds = %167
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %261

222:                                              ; preds = %219
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* @UE_INTERRUPT, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_host_intr_data_tx, i32** %227, align 8
  br label %260

228:                                              ; preds = %222
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %257

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_host_isoc_data_tx, i32** %233, align 8
  %234 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %235 = load i32, i32* @SOTG_FRINDEX, align 4
  %236 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %234, i32 %235)
  %237 = add nsw i32 %236, 8
  %238 = load i32, i32* @SOTG_FRINDEX_MASK, align 4
  %239 = and i32 %238, -8
  %240 = and i32 %237, %239
  store i32 %240, i32* %11, align 4
  %241 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %242 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %241, i32 0, i32 10
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @USB_SPEED_HIGH, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %232
  %251 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %252 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = shl i32 1, %253
  store i32 %254, i32* %12, align 4
  br label %256

255:                                              ; preds = %232
  store i32 8, i32* %12, align 4
  br label %256

256:                                              ; preds = %255, %250
  br label %259

257:                                              ; preds = %228
  %258 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_host_bulk_data_tx, i32** %258, align 8
  br label %259

259:                                              ; preds = %257, %256
  br label %260

260:                                              ; preds = %259, %226
  store i32 0, i32* %9, align 4
  br label %263

261:                                              ; preds = %219
  %262 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_device_data_rx, i32** %262, align 8
  store i32 0, i32* %9, align 4
  br label %263

263:                                              ; preds = %261, %260
  br label %264

264:                                              ; preds = %263, %218
  %265 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %266 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %265, i32 0, i32 7
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %6, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 7
  store i32* %270, i32** %271, align 8
  br label %273

272:                                              ; preds = %161
  store i32 0, i32* %9, align 4
  br label %273

273:                                              ; preds = %272, %264
  br label %274

274:                                              ; preds = %357, %273
  %275 = load i32, i32* %6, align 4
  %276 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %277 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %275, %278
  br i1 %279, label %280, label %358

280:                                              ; preds = %274
  %281 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %282 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %281, i32 0, i32 1
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 3
  store i64 %287, i64* %288, align 8
  %289 = load i32, i32* %6, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %6, align 4
  %291 = load i32, i32* %6, align 4
  %292 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %293 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = icmp eq i32 %291, %294
  br i1 %295, label %296, label %314

296:                                              ; preds = %280
  %297 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %298 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %297, i32 0, i32 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %296
  %303 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %304 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %303, i32 0, i32 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %302
  %309 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %309, align 8
  br label %310

310:                                              ; preds = %308, %302
  br label %313

311:                                              ; preds = %296
  %312 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %312, align 8
  br label %313

313:                                              ; preds = %311, %310
  br label %314

314:                                              ; preds = %313, %280
  %315 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 3
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 4
  store i32 0, i32* %319, align 8
  br label %329

320:                                              ; preds = %314
  %321 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %322 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %321, i32 0, i32 9
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  %326 = zext i1 %325 to i64
  %327 = select i1 %325, i32 0, i32 1
  %328 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 4
  store i32 %327, i32* %328, align 8
  br label %329

329:                                              ; preds = %320, %318
  %330 = call i32 @saf1761_otg_setup_standard_chain_sub(%struct.saf1761_otg_std_temp* %3)
  %331 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %332 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %331, i32 0, i32 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %349

336:                                              ; preds = %329
  %337 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = add nsw i64 %340, %338
  store i64 %341, i64* %339, align 8
  %342 = load i32, i32* %11, align 4
  %343 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 5
  %344 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %343, align 8
  %345 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %344, i32 0, i32 0
  store i32 %342, i32* %345, align 4
  %346 = load i32, i32* %12, align 4
  %347 = load i32, i32* %11, align 4
  %348 = add nsw i32 %347, %346
  store i32 %348, i32* %11, align 4
  br label %357

349:                                              ; preds = %329
  %350 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %351 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %350, i32 0, i32 7
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %6, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 7
  store i32* %355, i32** %356, align 8
  br label %357

357:                                              ; preds = %349, %336
  br label %274

358:                                              ; preds = %274
  %359 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %360 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %359, i32 0, i32 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %416

364:                                              ; preds = %358
  %365 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %366 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %365, i32 0, i32 7
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 0
  %369 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 7
  store i32* %368, i32** %369, align 8
  %370 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 3
  store i64 0, i64* %370, align 8
  %371 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 4
  store i32 0, i32* %371, align 8
  %372 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %372, align 8
  %373 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %374 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %373, i32 0, i32 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %415, label %378

378:                                              ; preds = %364
  %379 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %380 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @UE_DIR_IN, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %393

385:                                              ; preds = %378
  %386 = load i32, i32* %10, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_host_bulk_data_tx, i32** %389, align 8
  store i32 0, i32* %9, align 4
  br label %392

390:                                              ; preds = %385
  %391 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_device_data_rx, i32** %391, align 8
  store i32 0, i32* %9, align 4
  br label %392

392:                                              ; preds = %390, %388
  br label %401

393:                                              ; preds = %378
  %394 = load i32, i32* %10, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_host_bulk_data_rx, i32** %397, align 8
  store i32 0, i32* %9, align 4
  br label %400

398:                                              ; preds = %393
  %399 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_device_data_tx, i32** %399, align 8
  store i32 1, i32* %9, align 4
  br label %400

400:                                              ; preds = %398, %396
  br label %401

401:                                              ; preds = %400, %392
  %402 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 3
  store i64 0, i64* %402, align 8
  %403 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 4
  store i32 0, i32* %403, align 8
  %404 = call i32 @saf1761_otg_setup_standard_chain_sub(%struct.saf1761_otg_std_temp* %3)
  %405 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 5
  %406 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %405, align 8
  store %struct.saf1761_otg_td* %406, %struct.saf1761_otg_td** %5, align 8
  %407 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %408 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %407, i32 0, i32 1
  store i32 1, i32* %408, align 4
  %409 = load i32, i32* %9, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %401
  %412 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_device_data_tx_sync, i32** %412, align 8
  %413 = call i32 @saf1761_otg_setup_standard_chain_sub(%struct.saf1761_otg_std_temp* %3)
  br label %414

414:                                              ; preds = %411, %401
  br label %415

415:                                              ; preds = %414, %364
  br label %431

416:                                              ; preds = %358
  %417 = load i32, i32* %9, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %430

419:                                              ; preds = %416
  %420 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %421 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %420, i32 0, i32 7
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 0
  %424 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 7
  store i32* %423, i32** %424, align 8
  %425 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 3
  store i64 0, i64* %425, align 8
  %426 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 4
  store i32 0, i32* %426, align 8
  %427 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %427, align 8
  %428 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 6
  store i32* @saf1761_device_data_tx_sync, i32** %428, align 8
  %429 = call i32 @saf1761_otg_setup_standard_chain_sub(%struct.saf1761_otg_std_temp* %3)
  br label %430

430:                                              ; preds = %419, %416
  br label %431

431:                                              ; preds = %430, %415
  %432 = getelementptr inbounds %struct.saf1761_otg_std_temp, %struct.saf1761_otg_std_temp* %3, i32 0, i32 5
  %433 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %432, align 8
  store %struct.saf1761_otg_td* %433, %struct.saf1761_otg_td** %5, align 8
  %434 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %435 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %436 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %435, i32 0, i32 6
  store %struct.saf1761_otg_td* %434, %struct.saf1761_otg_td** %436, align 8
  %437 = load i32, i32* %10, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %453

439:                                              ; preds = %431
  %440 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %441 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %440, i32 0, i32 5
  %442 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %441, align 8
  store %struct.saf1761_otg_td* %442, %struct.saf1761_otg_td** %5, align 8
  %443 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %444 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %443, i32 0, i32 4
  %445 = load %struct.TYPE_12__*, %struct.TYPE_12__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  %449 = zext i1 %448 to i64
  %450 = select i1 %448, i32 1, i32 0
  %451 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %452 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %451, i32 0, i32 2
  store i32 %450, i32* %452, align 4
  br label %453

453:                                              ; preds = %439, %431
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @UE_GET_ADDR(i32) #1

declare dso_local i32 @usbd_get_speed(%struct.TYPE_14__*) #1

declare dso_local %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32) #1

declare dso_local i32 @saf1761_otg_setup_standard_chain_sub(%struct.saf1761_otg_std_temp*) #1

declare dso_local i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
