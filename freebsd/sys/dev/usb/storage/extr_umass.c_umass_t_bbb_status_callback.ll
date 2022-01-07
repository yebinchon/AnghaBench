; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_bbb_status_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_bbb_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umass_softc = type { i32, i32, %struct.TYPE_7__, i8*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)*, %union.ccb* }
%struct.umass_softc.0 = type opaque
%union.ccb = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_page_cache = type { i32 }

@UDMASS_BBB = common dso_local global i32 0, align 4
@IGNORE_RESIDUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"truncating residue from %d to %d bytes\0A\00", align 1
@WRONG_CSWSIG = common dso_local global i32 0, align 4
@CSWSIGNATURE_OLYMPUS_C1 = common dso_local global i32 0, align 4
@CSWSIGNATURE_IMAGINATION_DBX1 = common dso_local global i32 0, align 4
@CSWSIGNATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"bad CSW signature 0x%08x != 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Invalid CSW: tag 0x%08x should be 0x%08x\0A\00", align 1
@CSWSTATUS_PHASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid CSW: status %d > %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Phase error, residue = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Buffer overrun %d > %d\0A\00", align 1
@CSWSTATUS_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Command failed, residue = %d\0A\00", align 1
@UMASS_T_BBB_COMMAND = common dso_local global i8* null, align 8
@STATUS_CMD_FAILED = common dso_local global i32 0, align 4
@STATUS_CMD_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to read CSW: %s, try %d\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@UMASS_T_BBB_DATA_RD_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umass_t_bbb_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_t_bbb_status_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umass_softc*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.umass_softc* %12, %struct.umass_softc** %5, align 8
  %13 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %14 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load %union.ccb*, %union.ccb** %15, align 8
  store %union.ccb* %16, %union.ccb** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @usbd_xfer_status(%struct.usb_xfer* %17, i32* %9, i32* null, i32* null, i32* null)
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call i32 @USB_GET_STATE(%struct.usb_xfer* %19)
  switch i32 %20, label %268 [
    i32 128, label %21
    i32 129, label %261
  ]

21:                                               ; preds = %2
  %22 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %23 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %28 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %27, i32 0, i32 4
  %29 = call i32 @memset(%struct.TYPE_8__* %28, i32 0, i32 16)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %32 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %31, i32 0)
  store %struct.usb_page_cache* %32, %struct.usb_page_cache** %7, align 8
  %33 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %34 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %35 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %34, i32 0, i32 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @usbd_copy_out(%struct.usb_page_cache* %33, i32 0, %struct.TYPE_8__* %35, i32 %36)
  %38 = load i32, i32* @UDMASS_BBB, align 4
  %39 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %40 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %41 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %40, i32 0, i32 4
  %42 = call i32 @umass_bbb_dump_csw(%struct.umass_softc* %39, %struct.TYPE_8__* %41)
  %43 = call i32 @DIF(i32 %38, i32 %42)
  %44 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %45 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @UGETDW(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %30
  %52 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %53 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IGNORE_RESIDUE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %51, %30
  %59 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %60 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %64 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %62, %66
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %58, %51
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %71 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %69, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %77 = load i32, i32* @UDMASS_BBB, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %80 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.umass_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.umass_softc* %76, i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %82)
  %84 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %85 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %75, %68
  %89 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %90 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @WRONG_CSWSIG, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %88
  %96 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %97 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @UGETDW(i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @CSWSIGNATURE_OLYMPUS_C1, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @CSWSIGNATURE_IMAGINATION_DBX1, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104, %95
  %109 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %110 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CSWSIGNATURE, align 4
  %114 = call i32 @USETDW(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %104
  br label %116

116:                                              ; preds = %115, %88
  %117 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %118 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @UGETDW(i32 %120)
  %122 = load i32, i32* @CSWSIGNATURE, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %116
  %125 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %126 = load i32, i32* @UDMASS_BBB, align 4
  %127 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %128 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @UGETDW(i32 %130)
  %132 = load i32, i32* @CSWSIGNATURE, align 4
  %133 = call i32 (%struct.umass_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.umass_softc* %125, i32 %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132)
  br label %269

134:                                              ; preds = %116
  %135 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %136 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @UGETDW(i32 %138)
  %140 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %141 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @UGETDW(i32 %143)
  %145 = icmp ne i32 %139, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %134
  %147 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %148 = load i32, i32* @UDMASS_BBB, align 4
  %149 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %150 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @UGETDW(i32 %152)
  %154 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %155 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @UGETDW(i32 %157)
  %159 = call i32 (%struct.umass_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.umass_softc* %147, i32 %148, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %158)
  br label %269

160:                                              ; preds = %134
  %161 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %162 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @CSWSTATUS_PHASE, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %160
  %168 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %169 = load i32, i32* @UDMASS_BBB, align 4
  %170 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %171 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @CSWSTATUS_PHASE, align 4
  %175 = call i32 (%struct.umass_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.umass_softc* %168, i32 %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %173, i32 %174)
  br label %269

176:                                              ; preds = %160
  %177 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %178 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @CSWSTATUS_PHASE, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %176
  %184 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %185 = load i32, i32* @UDMASS_BBB, align 4
  %186 = load i32, i32* %8, align 4
  %187 = call i32 (%struct.umass_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.umass_softc* %184, i32 %185, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %186)
  br label %269

188:                                              ; preds = %176
  %189 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %190 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %194 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp sgt i32 %192, %196
  br i1 %197, label %198, label %210

198:                                              ; preds = %188
  %199 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %200 = load i32, i32* @UDMASS_BBB, align 4
  %201 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %202 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %206 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (%struct.umass_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.umass_softc* %199, i32 %200, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %204, i32 %208)
  br label %269

210:                                              ; preds = %188
  %211 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %212 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @CSWSTATUS_FAILED, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %238

217:                                              ; preds = %210
  %218 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %219 = load i32, i32* @UDMASS_BBB, align 4
  %220 = load i32, i32* %8, align 4
  %221 = call i32 (%struct.umass_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.umass_softc* %218, i32 %219, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %220)
  %222 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %223 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 3
  store %union.ccb* null, %union.ccb** %224, align 8
  %225 = load i8*, i8** @UMASS_T_BBB_COMMAND, align 8
  %226 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %227 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %226, i32 0, i32 3
  store i8* %225, i8** %227, align 8
  %228 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %229 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 2
  %231 = load i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)*, i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)** %230, align 8
  %232 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %233 = bitcast %struct.umass_softc* %232 to %struct.umass_softc.0*
  %234 = load %union.ccb*, %union.ccb** %6, align 8
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* @STATUS_CMD_FAILED, align 4
  %237 = call i32 %231(%struct.umass_softc.0* %233, %union.ccb* %234, i32 %235, i32 %236)
  br label %255

238:                                              ; preds = %210
  %239 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %240 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  store %union.ccb* null, %union.ccb** %241, align 8
  %242 = load i8*, i8** @UMASS_T_BBB_COMMAND, align 8
  %243 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %244 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %243, i32 0, i32 3
  store i8* %242, i8** %244, align 8
  %245 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %246 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  %248 = load i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)*, i32 (%struct.umass_softc.0*, %union.ccb*, i32, i32)** %247, align 8
  %249 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %250 = bitcast %struct.umass_softc* %249 to %struct.umass_softc.0*
  %251 = load %union.ccb*, %union.ccb** %6, align 8
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* @STATUS_CMD_OK, align 4
  %254 = call i32 %248(%struct.umass_softc.0* %250, %union.ccb* %251, i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %238, %217
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259
  br label %297

261:                                              ; preds = %2
  %262 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %263 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %264 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %263)
  %265 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %262, i32 0, i32 %264)
  %266 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %267 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %266)
  br label %297

268:                                              ; preds = %2
  br label %269

269:                                              ; preds = %268, %198, %183, %167, %146, %124
  %270 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %271 = load i32, i32* @UDMASS_BBB, align 4
  %272 = load i32, i32* %4, align 4
  %273 = call i32 @usbd_errstr(i32 %272)
  %274 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %275 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 (%struct.umass_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.umass_softc* %270, i32 %271, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %273, i32 %276)
  %278 = load i32, i32* %4, align 4
  %279 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %286, label %281

281:                                              ; preds = %269
  %282 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %283 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %281, %269
  %287 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %288 = load i32, i32* %4, align 4
  %289 = call i32 @umass_tr_error(%struct.usb_xfer* %287, i32 %288)
  br label %296

290:                                              ; preds = %281
  %291 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %292 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %291, i32 0, i32 0
  store i32 1, i32* %292, align 8
  %293 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %294 = load i32, i32* @UMASS_T_BBB_DATA_RD_CS, align 4
  %295 = call i32 @umass_transfer_start(%struct.umass_softc* %293, i32 %294)
  br label %296

296:                                              ; preds = %290, %286
  br label %297

297:                                              ; preds = %296, %261, %260
  ret void
}

declare dso_local %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @DIF(i32, i32) #1

declare dso_local i32 @umass_bbb_dump_csw(%struct.umass_softc*, %struct.TYPE_8__*) #1

declare dso_local i32 @UGETDW(i32) #1

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*, i32, ...) #1

declare dso_local i32 @USETDW(i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @umass_tr_error(%struct.usb_xfer*, i32) #1

declare dso_local i32 @umass_transfer_start(%struct.umass_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
