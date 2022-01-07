; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_t_command_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_t_command_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.usb_xfer = type { i32 }
%struct.cfumass_softc = type { i32, i32, %struct.TYPE_11__*, i32, i8*, i8*, i32, i8*, i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%union.ctl_io = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.cfumass_softc* }

@.str = private unnamed_addr constant [32 x i8] c"sc_ctl_io is %p, should be NULL\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"USB_ST_TRANSFERRED\00", align 1
@CBWSIGNATURE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"wrong dCBWSignature 0x%08x, should be 0x%08x\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"invalid bCDBLength %d, should be <= %zd\00", align 1
@cfumass_port_online = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"cfumass port is offline; stalling\00", align 1
@cfumass_port = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@CTL_IO_SCSI = common dso_local global i32 0, align 4
@CTL_TAG_UNTAGGED = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"ctl_queue() failed; error %d; stalling\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"USB_ST_SETUP\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"USB_ERR_CANCELLED\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"USB_ST_ERROR: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @cfumass_t_command_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfumass_t_command_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfumass_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.ctl_io*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.cfumass_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.cfumass_softc* %10, %struct.cfumass_softc** %5, align 8
  %11 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %12 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %11, i32 0, i32 9
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %17 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %16, i32 0, i32 9
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = call i32 @KASSERT(i32 %15, i8* %19)
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = call i32 @USB_GET_STATE(%struct.usb_xfer* %21)
  switch i32 %22, label %228 [
    i32 128, label %23
    i32 129, label %220
  ]

23:                                               ; preds = %2
  %24 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %25 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %27 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @UGETDW(i32 %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** @CBWSIGNATURE, align 8
  %34 = icmp ne i8* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load i8*, i8** @CBWSIGNATURE, align 8
  %40 = call i32 (%struct.cfumass_softc*, i8*, i32, ...) @CFUMASS_WARN(%struct.cfumass_softc* %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %38, i8* %39)
  br label %240

41:                                               ; preds = %23
  %42 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %43 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %50 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %54, 4
  br i1 %55, label %56, label %64

56:                                               ; preds = %48, %41
  %57 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %58 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %59 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %58, i32 0, i32 2
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.cfumass_softc*, i8*, i32, ...) @CFUMASS_WARN(%struct.cfumass_softc* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %62, i64 4)
  br label %240

64:                                               ; preds = %48
  %65 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %66 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %68 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %67, i32 0, i32 8
  store i32 0, i32* %68, align 8
  %69 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %70 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %69, i32 0, i32 2
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @UGETDW(i32 %73)
  %75 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %76 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %75, i32 0, i32 7
  store i8* %74, i8** %76, align 8
  %77 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %78 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @UGETDW(i32 %81)
  %83 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %84 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %86 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %85, i32 0, i32 2
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %91 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %93 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %96 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %98 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %99 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %98, i32 0, i32 2
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %104 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %103, i32 0, i32 2
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @cfumass_quirk(%struct.cfumass_softc* %97, i32 %102, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %64
  br label %240

111:                                              ; preds = %64
  %112 = load i32, i32* @cfumass_port_online, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %116 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %118 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %117)
  br label %240

119:                                              ; preds = %111
  %120 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %121 = call i32 @CFUMASS_UNLOCK(%struct.cfumass_softc* %120)
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cfumass_port, i32 0, i32 1), align 4
  %123 = call %union.ctl_io* @ctl_alloc_io(i32 %122)
  store %union.ctl_io* %123, %union.ctl_io** %7, align 8
  %124 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %125 = call i32 @ctl_zero_io(%union.ctl_io* %124)
  %126 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %127 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %128 = bitcast %union.ctl_io* %127 to %struct.TYPE_9__*
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store %struct.cfumass_softc* %126, %struct.cfumass_softc** %133, align 8
  %134 = load i32, i32* @CTL_IO_SCSI, align 4
  %135 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %136 = bitcast %union.ctl_io* %135 to %struct.TYPE_9__*
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  %138 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %139 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %142 = bitcast %union.ctl_io* %141 to %struct.TYPE_9__*
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  store i32 %140, i32* %144, align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cfumass_port, i32 0, i32 0), align 4
  %146 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %147 = bitcast %union.ctl_io* %146 to %struct.TYPE_9__*
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 4
  %150 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %151 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %150, i32 0, i32 2
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ctl_decode_lun(i32 %154)
  %156 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %157 = bitcast %union.ctl_io* %156 to %struct.TYPE_9__*
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i32 %155, i32* %159, align 8
  %160 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %161 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %160, i32 0, i32 2
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @UGETDW(i32 %164)
  %166 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %167 = bitcast %union.ctl_io* %166 to %struct.TYPE_10__*
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  store i8* %165, i8** %168, align 8
  %169 = load i32, i32* @CTL_TAG_UNTAGGED, align 4
  %170 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %171 = bitcast %union.ctl_io* %170 to %struct.TYPE_10__*
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 8
  %173 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %174 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %173, i32 0, i32 2
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %179 = bitcast %union.ctl_io* %178 to %struct.TYPE_10__*
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  %181 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %182 = bitcast %union.ctl_io* %181 to %struct.TYPE_10__*
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %186 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %185, i32 0, i32 2
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %191 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %190, i32 0, i32 2
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @memcpy(i32 %184, i32 %189, i32 %194)
  %196 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %197 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %196, i32 0, i32 1
  %198 = call i32 @refcount_acquire(i32* %197)
  %199 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %200 = call i32 @ctl_queue(%union.ctl_io* %199)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %119
  %205 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %206 = load i32, i32* %8, align 4
  %207 = call i32 (%struct.cfumass_softc*, i8*, i32, ...) @CFUMASS_WARN(%struct.cfumass_softc* %205, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %206)
  %208 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %209 = call i32 @ctl_free_io(%union.ctl_io* %208)
  %210 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %211 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %210, i32 0, i32 1
  %212 = call i32 @refcount_release(i32* %211)
  %213 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %214 = call i32 @CFUMASS_LOCK(%struct.cfumass_softc* %213)
  %215 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %216 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %215)
  br label %240

217:                                              ; preds = %119
  %218 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %219 = call i32 @CFUMASS_LOCK(%struct.cfumass_softc* %218)
  br label %240

220:                                              ; preds = %2
  br label %221

221:                                              ; preds = %235, %220
  %222 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %223 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %222, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %224 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %225 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %224, i32 0, i32 28)
  %226 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %227 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %226)
  br label %240

228:                                              ; preds = %2
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %234 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %233, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %240

235:                                              ; preds = %228
  %236 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %237 = load i32, i32* %4, align 4
  %238 = call i32 @usbd_errstr(i32 %237)
  %239 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %236, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %238)
  br label %221

240:                                              ; preds = %232, %221, %217, %204, %114, %110, %56, %35
  ret void
}

declare dso_local %struct.cfumass_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @CFUMASS_DEBUG(%struct.cfumass_softc*, i8*, ...) #1

declare dso_local i8* @UGETDW(i32) #1

declare dso_local i32 @CFUMASS_WARN(%struct.cfumass_softc*, i8*, i32, ...) #1

declare dso_local i32 @cfumass_quirk(%struct.cfumass_softc*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @CFUMASS_UNLOCK(%struct.cfumass_softc*) #1

declare dso_local %union.ctl_io* @ctl_alloc_io(i32) #1

declare dso_local i32 @ctl_zero_io(%union.ctl_io*) #1

declare dso_local i32 @ctl_decode_lun(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @ctl_queue(%union.ctl_io*) #1

declare dso_local i32 @ctl_free_io(%union.ctl_io*) #1

declare dso_local i32 @refcount_release(i32*) #1

declare dso_local i32 @CFUMASS_LOCK(%struct.cfumass_softc*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
