; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_issue_recovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_issue_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32, i32, %struct.TYPE_7__**, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i64, i8*, i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32, i32, %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i64, i64, i64, i32 }
%struct.ccb_ataio = type { i32, %struct.TYPE_8__, i32* }

@FSL_SATA_MAX_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate recovery command\0A\00", align 1
@CAM_STATUS_MASK = common dso_local global i64 0, align 8
@CAM_RESRC_UNAVAIL = common dso_local global i64 0, align 8
@XPT_ATA_IO = common dso_local global i64 0, align 8
@RECOVERY_READ_LOG = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i8* null, align 8
@M_FSL_SATA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to allocate memory for READ LOG command\0A\00", align 1
@CAM_ATAIO_48BIT = common dso_local global i32 0, align 4
@RECOVERY_REQUEST_SENSE = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_channel*)* @fsl_sata_issue_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_issue_recovery(%struct.fsl_sata_channel* %0) #0 {
  %2 = alloca %struct.fsl_sata_channel*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.ccb_ataio*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca i32, align 4
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %13 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %14, i64 %16
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %25

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %7

25:                                               ; preds = %20, %7
  %26 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %26, %union.ccb** %3, align 8
  %27 = load %union.ccb*, %union.ccb** %3, align 8
  %28 = icmp eq %union.ccb* %27, null
  br i1 %28, label %29, label %100

29:                                               ; preds = %25
  %30 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %31 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %146, %29
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %94, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %35
  %40 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %41 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = icmp eq %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %94

49:                                               ; preds = %39
  %50 = load i64, i64* @CAM_STATUS_MASK, align 8
  %51 = xor i64 %50, -1
  %52 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %53 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %54, i64 %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = and i64 %61, %51
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* @CAM_RESRC_UNAVAIL, align 8
  %64 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %65 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %66, i64 %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = or i64 %73, %63
  store i64 %74, i64* %72, align 8
  %75 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %76 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %77 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %75, %struct.TYPE_7__* %82)
  %84 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %85 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %86, i64 %88
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %89, align 8
  %90 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %91 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %49, %48
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %35

97:                                               ; preds = %35
  %98 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %99 = call i32 @fsl_sata_reset(%struct.fsl_sata_channel* %98)
  br label %258

100:                                              ; preds = %25
  %101 = load %union.ccb*, %union.ccb** %3, align 8
  %102 = bitcast %union.ccb* %101 to %struct.TYPE_5__*
  %103 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %104 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %103, i32 0, i32 2
  %105 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %105, i64 %107
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = bitcast %struct.TYPE_5__* %102 to i8*
  %112 = bitcast %struct.TYPE_5__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 40, i1 false)
  %113 = load %union.ccb*, %union.ccb** %3, align 8
  %114 = bitcast %union.ccb* %113 to %struct.TYPE_5__*
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @XPT_ATA_IO, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %181

119:                                              ; preds = %100
  %120 = load i32, i32* @RECOVERY_READ_LOG, align 4
  %121 = load %union.ccb*, %union.ccb** %3, align 8
  %122 = bitcast %union.ccb* %121 to %struct.TYPE_5__*
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 5
  store i32 %120, i32* %123, align 8
  %124 = load i64, i64* @XPT_ATA_IO, align 8
  %125 = load %union.ccb*, %union.ccb** %3, align 8
  %126 = bitcast %union.ccb* %125 to %struct.TYPE_5__*
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  %128 = load i8*, i8** @CAM_DIR_IN, align 8
  %129 = load %union.ccb*, %union.ccb** %3, align 8
  %130 = bitcast %union.ccb* %129 to %struct.TYPE_5__*
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  store i8* %128, i8** %131, align 8
  %132 = load %union.ccb*, %union.ccb** %3, align 8
  %133 = bitcast %union.ccb* %132 to %struct.TYPE_5__*
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 1000, i32* %134, align 8
  %135 = load %union.ccb*, %union.ccb** %3, align 8
  %136 = bitcast %union.ccb* %135 to %struct.ccb_ataio*
  store %struct.ccb_ataio* %136, %struct.ccb_ataio** %4, align 8
  %137 = load i32, i32* @M_FSL_SATA, align 4
  %138 = load i32, i32* @M_NOWAIT, align 4
  %139 = call i32* @malloc(i32 512, i32 %137, i32 %138)
  %140 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %141 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %140, i32 0, i32 2
  store i32* %139, i32** %141, align 8
  %142 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %143 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %119
  %147 = load %union.ccb*, %union.ccb** %3, align 8
  %148 = call i32 @xpt_free_ccb(%union.ccb* %147)
  %149 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %150 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @device_printf(i32 %151, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %34

153:                                              ; preds = %119
  %154 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %155 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %154, i32 0, i32 0
  store i32 512, i32* %155, align 8
  %156 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %157 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %156, i32 0, i32 1
  %158 = call i32 @bzero(%struct.TYPE_8__* %157, i32 56)
  %159 = load i32, i32* @CAM_ATAIO_48BIT, align 4
  %160 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %161 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 7
  store i32 %159, i32* %162, align 8
  %163 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %164 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  store i32 47, i32* %165, align 8
  %166 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %167 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  store i32 1, i32* %168, align 4
  %169 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %170 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 6
  store i64 0, i64* %171, align 8
  %172 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %173 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  store i32 16, i32* %174, align 8
  %175 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %176 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 5
  store i64 0, i64* %177, align 8
  %178 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %179 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 4
  store i64 0, i64* %180, align 8
  br label %248

181:                                              ; preds = %100
  %182 = load i32, i32* @RECOVERY_REQUEST_SENSE, align 4
  %183 = load %union.ccb*, %union.ccb** %3, align 8
  %184 = bitcast %union.ccb* %183 to %struct.TYPE_5__*
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 5
  store i32 %182, i32* %185, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load %union.ccb*, %union.ccb** %3, align 8
  %188 = bitcast %union.ccb* %187 to %struct.TYPE_5__*
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  store i32 %186, i32* %189, align 4
  %190 = load i64, i64* @XPT_SCSI_IO, align 8
  %191 = load %union.ccb*, %union.ccb** %3, align 8
  %192 = bitcast %union.ccb* %191 to %struct.TYPE_5__*
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  store i64 %190, i64* %193, align 8
  %194 = load i8*, i8** @CAM_DIR_IN, align 8
  %195 = load %union.ccb*, %union.ccb** %3, align 8
  %196 = bitcast %union.ccb* %195 to %struct.TYPE_5__*
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 4
  store i8* %194, i8** %197, align 8
  %198 = load %union.ccb*, %union.ccb** %3, align 8
  %199 = bitcast %union.ccb* %198 to %struct.TYPE_5__*
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 3
  store i64 0, i64* %200, align 8
  %201 = load %union.ccb*, %union.ccb** %3, align 8
  %202 = bitcast %union.ccb* %201 to %struct.TYPE_5__*
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  store i32 1000, i32* %203, align 8
  %204 = load %union.ccb*, %union.ccb** %3, align 8
  %205 = bitcast %union.ccb* %204 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %205, %struct.ccb_scsiio** %5, align 8
  %206 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %207 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %206, i32 0, i32 2
  %208 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %208, i64 %210
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = bitcast i32* %214 to i8*
  %216 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %217 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  %218 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %219 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %218, i32 0, i32 2
  %220 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %220, i64 %222
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %229 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %231 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %230, i32 0, i32 1
  store i32 6, i32* %231, align 4
  %232 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %233 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %232, i32 0, i32 2
  %234 = call i32 @bzero(%struct.TYPE_8__* %233, i32 56)
  %235 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %236 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  store i32 3, i32* %239, align 4
  %240 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %241 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %244 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 4
  store i32 %242, i32* %247, align 4
  br label %248

248:                                              ; preds = %181, %153
  %249 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %250 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %249, i32 0, i32 0
  store i32 1, i32* %250, align 8
  %251 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %252 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @xpt_freeze_simq(i32 %253, i32 1)
  %255 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %256 = load %union.ccb*, %union.ccb** %3, align 8
  %257 = call i32 @fsl_sata_begin_transaction(%struct.fsl_sata_channel* %255, %union.ccb* %256)
  br label %258

258:                                              ; preds = %248, %97
  ret void
}

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @fsl_sata_done(%struct.fsl_sata_channel*, %struct.TYPE_7__*) #1

declare dso_local i32 @fsl_sata_reset(%struct.fsl_sata_channel*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @fsl_sata_begin_transaction(%struct.fsl_sata_channel*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
