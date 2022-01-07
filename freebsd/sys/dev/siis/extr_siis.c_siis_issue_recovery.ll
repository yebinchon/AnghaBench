; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_issue_recovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_issue_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_channel = type { i32, %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i64, i8*, i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32, i32, %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i64, i64, i64, i32 }
%struct.ccb_ataio = type { i32, %struct.TYPE_8__, i32* }

@SIIS_MAX_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate recovery command\0A\00", align 1
@CAM_STATUS_MASK = common dso_local global i64 0, align 8
@CAM_RESRC_UNAVAIL = common dso_local global i64 0, align 8
@XPT_ATA_IO = common dso_local global i64 0, align 8
@RECOVERY_READ_LOG = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i8* null, align 8
@M_SIIS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to allocate memory for READ LOG command\0A\00", align 1
@CAM_ATAIO_48BIT = common dso_local global i32 0, align 4
@RECOVERY_REQUEST_SENSE = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @siis_issue_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_issue_recovery(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siis_channel*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ccb_ataio*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.siis_channel* @device_get_softc(i32 %8)
  store %struct.siis_channel* %9, %struct.siis_channel** %3, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %16 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %15, i32 0, i32 1
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
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %257

33:                                               ; preds = %28
  %34 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %34, %union.ccb** %4, align 8
  %35 = load %union.ccb*, %union.ccb** %4, align 8
  %36 = icmp eq %union.ccb* %35, null
  br i1 %36, label %37, label %105

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %151, %37
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %99, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %102

45:                                               ; preds = %41
  %46 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %47 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = icmp eq %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %99

55:                                               ; preds = %45
  %56 = load i64, i64* @CAM_STATUS_MASK, align 8
  %57 = xor i64 %56, -1
  %58 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %59 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, %57
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* @CAM_RESRC_UNAVAIL, align 8
  %70 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %71 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %72, i64 %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = or i64 %79, %69
  store i64 %80, i64* %78, align 8
  %81 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %82 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %83, i64 %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = call i32 @xpt_done(%struct.TYPE_7__* %87)
  %89 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %90 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 %93
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %94, align 8
  %95 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %96 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %55, %54
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %41

102:                                              ; preds = %41
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @siis_reset(i32 %103)
  br label %257

105:                                              ; preds = %33
  %106 = load %union.ccb*, %union.ccb** %4, align 8
  %107 = bitcast %union.ccb* %106 to %struct.TYPE_5__*
  %108 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %109 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %110, i64 %112
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = bitcast %struct.TYPE_5__* %107 to i8*
  %117 = bitcast %struct.TYPE_5__* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 40, i1 false)
  %118 = load %union.ccb*, %union.ccb** %4, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_5__*
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @XPT_ATA_IO, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %184

124:                                              ; preds = %105
  %125 = load i32, i32* @RECOVERY_READ_LOG, align 4
  %126 = load %union.ccb*, %union.ccb** %4, align 8
  %127 = bitcast %union.ccb* %126 to %struct.TYPE_5__*
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 5
  store i32 %125, i32* %128, align 8
  %129 = load i64, i64* @XPT_ATA_IO, align 8
  %130 = load %union.ccb*, %union.ccb** %4, align 8
  %131 = bitcast %union.ccb* %130 to %struct.TYPE_5__*
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  %133 = load i8*, i8** @CAM_DIR_IN, align 8
  %134 = load %union.ccb*, %union.ccb** %4, align 8
  %135 = bitcast %union.ccb* %134 to %struct.TYPE_5__*
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  store i8* %133, i8** %136, align 8
  %137 = load %union.ccb*, %union.ccb** %4, align 8
  %138 = bitcast %union.ccb* %137 to %struct.TYPE_5__*
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store i32 1000, i32* %139, align 8
  %140 = load %union.ccb*, %union.ccb** %4, align 8
  %141 = bitcast %union.ccb* %140 to %struct.ccb_ataio*
  store %struct.ccb_ataio* %141, %struct.ccb_ataio** %5, align 8
  %142 = load i32, i32* @M_SIIS, align 4
  %143 = load i32, i32* @M_NOWAIT, align 4
  %144 = call i32* @malloc(i32 512, i32 %142, i32 %143)
  %145 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %146 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %145, i32 0, i32 2
  store i32* %144, i32** %146, align 8
  %147 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %148 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %124
  %152 = load %union.ccb*, %union.ccb** %4, align 8
  %153 = call i32 @xpt_free_ccb(%union.ccb* %152)
  %154 = load i32, i32* %2, align 4
  %155 = call i32 @device_printf(i32 %154, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %40

156:                                              ; preds = %124
  %157 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %158 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %157, i32 0, i32 0
  store i32 512, i32* %158, align 8
  %159 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %160 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %159, i32 0, i32 1
  %161 = call i32 @bzero(%struct.TYPE_8__* %160, i32 56)
  %162 = load i32, i32* @CAM_ATAIO_48BIT, align 4
  %163 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %164 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 7
  store i32 %162, i32* %165, align 8
  %166 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %167 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  store i32 47, i32* %168, align 8
  %169 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %170 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  store i32 1, i32* %171, align 4
  %172 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %173 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 6
  store i64 0, i64* %174, align 8
  %175 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %176 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  store i32 16, i32* %177, align 8
  %178 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %179 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 5
  store i64 0, i64* %180, align 8
  %181 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %182 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 4
  store i64 0, i64* %183, align 8
  br label %251

184:                                              ; preds = %105
  %185 = load i32, i32* @RECOVERY_REQUEST_SENSE, align 4
  %186 = load %union.ccb*, %union.ccb** %4, align 8
  %187 = bitcast %union.ccb* %186 to %struct.TYPE_5__*
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 5
  store i32 %185, i32* %188, align 8
  %189 = load i32, i32* %7, align 4
  %190 = load %union.ccb*, %union.ccb** %4, align 8
  %191 = bitcast %union.ccb* %190 to %struct.TYPE_5__*
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 2
  store i32 %189, i32* %192, align 4
  %193 = load i64, i64* @XPT_SCSI_IO, align 8
  %194 = load %union.ccb*, %union.ccb** %4, align 8
  %195 = bitcast %union.ccb* %194 to %struct.TYPE_5__*
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  store i64 %193, i64* %196, align 8
  %197 = load i8*, i8** @CAM_DIR_IN, align 8
  %198 = load %union.ccb*, %union.ccb** %4, align 8
  %199 = bitcast %union.ccb* %198 to %struct.TYPE_5__*
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 4
  store i8* %197, i8** %200, align 8
  %201 = load %union.ccb*, %union.ccb** %4, align 8
  %202 = bitcast %union.ccb* %201 to %struct.TYPE_5__*
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 3
  store i64 0, i64* %203, align 8
  %204 = load %union.ccb*, %union.ccb** %4, align 8
  %205 = bitcast %union.ccb* %204 to %struct.TYPE_5__*
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  store i32 1000, i32* %206, align 8
  %207 = load %union.ccb*, %union.ccb** %4, align 8
  %208 = bitcast %union.ccb* %207 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %208, %struct.ccb_scsiio** %6, align 8
  %209 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %210 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %209, i32 0, i32 1
  %211 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %211, i64 %213
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = bitcast i32* %217 to i8*
  %219 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %220 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %219, i32 0, i32 3
  store i8* %218, i8** %220, align 8
  %221 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %222 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %221, i32 0, i32 1
  %223 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %223, i64 %225
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %232 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %234 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %233, i32 0, i32 1
  store i32 6, i32* %234, align 4
  %235 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %236 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %235, i32 0, i32 2
  %237 = call i32 @bzero(%struct.TYPE_8__* %236, i32 56)
  %238 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %239 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 3, i32* %242, align 4
  %243 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %244 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %247 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 3
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 4
  store i32 %245, i32* %250, align 4
  br label %251

251:                                              ; preds = %184, %156
  %252 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %253 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %252, i32 0, i32 0
  store i32 1, i32* %253, align 8
  %254 = load i32, i32* %2, align 4
  %255 = load %union.ccb*, %union.ccb** %4, align 8
  %256 = call i32 @siis_begin_transaction(i32 %254, %union.ccb* %255)
  br label %257

257:                                              ; preds = %251, %102, %32
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @xpt_done(%struct.TYPE_7__*) #1

declare dso_local i32 @siis_reset(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @siis_begin_transaction(i32, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
