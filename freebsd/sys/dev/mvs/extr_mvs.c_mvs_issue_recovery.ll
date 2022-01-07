; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_issue_recovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_issue_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i32, i32, %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i64, i8*, i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32, i32, %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i64, i64, i64, i32 }
%struct.ccb_ataio = type { i32, %struct.TYPE_8__, i32* }

@MVS_MAX_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate recovery command\0A\00", align 1
@CAM_STATUS_MASK = common dso_local global i64 0, align 8
@CAM_RESRC_UNAVAIL = common dso_local global i64 0, align 8
@XPT_ATA_IO = common dso_local global i64 0, align 8
@RECOVERY_READ_LOG = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i8* null, align 8
@M_MVS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to allocate memory for READ LOG command\0A\00", align 1
@CAM_ATAIO_48BIT = common dso_local global i32 0, align 4
@RECOVERY_REQUEST_SENSE = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mvs_issue_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_issue_recovery(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ccb_ataio*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.mvs_channel* @device_get_softc(i32 %8)
  store %struct.mvs_channel* %9, %struct.mvs_channel** %3, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %16 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %17, i64 %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %28

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %10

28:                                               ; preds = %23, %10
  %29 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %29, %union.ccb** %4, align 8
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = icmp eq %union.ccb* %30, null
  br i1 %31, label %32, label %100

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %146, %32
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %94, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %36
  %41 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %42 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %43, i64 %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = icmp eq %struct.TYPE_7__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %94

50:                                               ; preds = %40
  %51 = load i64, i64* @CAM_STATUS_MASK, align 8
  %52 = xor i64 %51, -1
  %53 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %54 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %55, i64 %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %62, %52
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* @CAM_RESRC_UNAVAIL, align 8
  %65 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %66 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %67, i64 %69
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %64
  store i64 %75, i64* %73, align 8
  %76 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %77 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = call i32 @xpt_done(%struct.TYPE_7__* %82)
  %84 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %85 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %86, i64 %88
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %89, align 8
  %90 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %91 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %50, %49
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %36

97:                                               ; preds = %36
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @mvs_reset(i32 %98)
  br label %256

100:                                              ; preds = %28
  %101 = load %union.ccb*, %union.ccb** %4, align 8
  %102 = bitcast %union.ccb* %101 to %struct.TYPE_5__*
  %103 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %104 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %103, i32 0, i32 2
  %105 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %105, i64 %107
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = bitcast %struct.TYPE_5__* %102 to i8*
  %112 = bitcast %struct.TYPE_5__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 40, i1 false)
  %113 = load %union.ccb*, %union.ccb** %4, align 8
  %114 = bitcast %union.ccb* %113 to %struct.TYPE_5__*
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @XPT_ATA_IO, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %179

119:                                              ; preds = %100
  %120 = load i32, i32* @RECOVERY_READ_LOG, align 4
  %121 = load %union.ccb*, %union.ccb** %4, align 8
  %122 = bitcast %union.ccb* %121 to %struct.TYPE_5__*
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 5
  store i32 %120, i32* %123, align 8
  %124 = load i64, i64* @XPT_ATA_IO, align 8
  %125 = load %union.ccb*, %union.ccb** %4, align 8
  %126 = bitcast %union.ccb* %125 to %struct.TYPE_5__*
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  %128 = load i8*, i8** @CAM_DIR_IN, align 8
  %129 = load %union.ccb*, %union.ccb** %4, align 8
  %130 = bitcast %union.ccb* %129 to %struct.TYPE_5__*
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  store i8* %128, i8** %131, align 8
  %132 = load %union.ccb*, %union.ccb** %4, align 8
  %133 = bitcast %union.ccb* %132 to %struct.TYPE_5__*
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 1000, i32* %134, align 8
  %135 = load %union.ccb*, %union.ccb** %4, align 8
  %136 = bitcast %union.ccb* %135 to %struct.ccb_ataio*
  store %struct.ccb_ataio* %136, %struct.ccb_ataio** %5, align 8
  %137 = load i32, i32* @M_MVS, align 4
  %138 = load i32, i32* @M_NOWAIT, align 4
  %139 = call i32* @malloc(i32 512, i32 %137, i32 %138)
  %140 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %141 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %140, i32 0, i32 2
  store i32* %139, i32** %141, align 8
  %142 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %143 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %119
  %147 = load %union.ccb*, %union.ccb** %4, align 8
  %148 = call i32 @xpt_free_ccb(%union.ccb* %147)
  %149 = load i32, i32* %2, align 4
  %150 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %35

151:                                              ; preds = %119
  %152 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %153 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %152, i32 0, i32 0
  store i32 512, i32* %153, align 8
  %154 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %155 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %154, i32 0, i32 1
  %156 = call i32 @bzero(%struct.TYPE_8__* %155, i32 56)
  %157 = load i32, i32* @CAM_ATAIO_48BIT, align 4
  %158 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %159 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 7
  store i32 %157, i32* %160, align 8
  %161 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %162 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32 47, i32* %163, align 8
  %164 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %165 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  %167 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %168 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 6
  store i64 0, i64* %169, align 8
  %170 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %171 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  store i32 16, i32* %172, align 8
  %173 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %174 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 5
  store i64 0, i64* %175, align 8
  %176 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %177 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 4
  store i64 0, i64* %178, align 8
  br label %246

179:                                              ; preds = %100
  %180 = load i32, i32* @RECOVERY_REQUEST_SENSE, align 4
  %181 = load %union.ccb*, %union.ccb** %4, align 8
  %182 = bitcast %union.ccb* %181 to %struct.TYPE_5__*
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 5
  store i32 %180, i32* %183, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load %union.ccb*, %union.ccb** %4, align 8
  %186 = bitcast %union.ccb* %185 to %struct.TYPE_5__*
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  store i32 %184, i32* %187, align 4
  %188 = load i64, i64* @XPT_SCSI_IO, align 8
  %189 = load %union.ccb*, %union.ccb** %4, align 8
  %190 = bitcast %union.ccb* %189 to %struct.TYPE_5__*
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  store i64 %188, i64* %191, align 8
  %192 = load i8*, i8** @CAM_DIR_IN, align 8
  %193 = load %union.ccb*, %union.ccb** %4, align 8
  %194 = bitcast %union.ccb* %193 to %struct.TYPE_5__*
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 4
  store i8* %192, i8** %195, align 8
  %196 = load %union.ccb*, %union.ccb** %4, align 8
  %197 = bitcast %union.ccb* %196 to %struct.TYPE_5__*
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 3
  store i64 0, i64* %198, align 8
  %199 = load %union.ccb*, %union.ccb** %4, align 8
  %200 = bitcast %union.ccb* %199 to %struct.TYPE_5__*
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  store i32 1000, i32* %201, align 8
  %202 = load %union.ccb*, %union.ccb** %4, align 8
  %203 = bitcast %union.ccb* %202 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %203, %struct.ccb_scsiio** %6, align 8
  %204 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %205 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %204, i32 0, i32 2
  %206 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %206, i64 %208
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = bitcast i32* %212 to i8*
  %214 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %215 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %214, i32 0, i32 3
  store i8* %213, i8** %215, align 8
  %216 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %217 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %216, i32 0, i32 2
  %218 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %217, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %218, i64 %220
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %227 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  %228 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %229 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %228, i32 0, i32 1
  store i32 6, i32* %229, align 4
  %230 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %231 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %230, i32 0, i32 2
  %232 = call i32 @bzero(%struct.TYPE_8__* %231, i32 56)
  %233 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %234 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  store i32 3, i32* %237, align 4
  %238 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %239 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %242 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 4
  store i32 %240, i32* %245, align 4
  br label %246

246:                                              ; preds = %179, %151
  %247 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %248 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %247, i32 0, i32 0
  store i32 1, i32* %248, align 8
  %249 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %250 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @xpt_freeze_simq(i32 %251, i32 1)
  %253 = load i32, i32* %2, align 4
  %254 = load %union.ccb*, %union.ccb** %4, align 8
  %255 = call i32 @mvs_begin_transaction(i32 %253, %union.ccb* %254)
  br label %256

256:                                              ; preds = %246, %97
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @xpt_done(%struct.TYPE_7__*) #1

declare dso_local i32 @mvs_reset(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @mvs_begin_transaction(i32, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
