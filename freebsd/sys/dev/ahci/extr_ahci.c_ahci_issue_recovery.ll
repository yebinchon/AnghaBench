; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_issue_recovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_issue_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, i32, %struct.TYPE_8__**, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i64, i8*, i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32, i32, %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32*, i64, i64, i64, i32 }
%struct.ccb_ataio = type { i32, %struct.TYPE_7__, i32* }

@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate recovery command\0A\00", align 1
@CAM_STATUS_MASK = common dso_local global i64 0, align 8
@CAM_RESRC_UNAVAIL = common dso_local global i64 0, align 8
@XPT_ATA_IO = common dso_local global i64 0, align 8
@RECOVERY_READ_LOG = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i8* null, align 8
@M_AHCI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to allocate memory for READ LOG command\0A\00", align 1
@CAM_ATAIO_48BIT = common dso_local global i32 0, align 4
@RECOVERY_REQUEST_SENSE = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*)* @ahci_issue_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_issue_recovery(%struct.ahci_channel* %0) #0 {
  %2 = alloca %struct.ahci_channel*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.ccb_ataio*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %10 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %15 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %14, i32 0, i32 3
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %18
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %27

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %7

27:                                               ; preds = %22, %7
  %28 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %28, %union.ccb** %3, align 8
  %29 = load %union.ccb*, %union.ccb** %3, align 8
  %30 = icmp eq %union.ccb* %29, null
  br i1 %30, label %31, label %104

31:                                               ; preds = %27
  %32 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %33 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %150, %31
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %98, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %40 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %101

43:                                               ; preds = %37
  %44 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %45 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %44, i32 0, i32 3
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %46, i64 %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = icmp eq %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %98

53:                                               ; preds = %43
  %54 = load i64, i64* @CAM_STATUS_MASK, align 8
  %55 = xor i64 %54, -1
  %56 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %57 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %56, i32 0, i32 3
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %58, i64 %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = and i64 %65, %55
  store i64 %66, i64* %64, align 8
  %67 = load i64, i64* @CAM_RESRC_UNAVAIL, align 8
  %68 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %69 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %68, i32 0, i32 3
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %70, i64 %72
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = or i64 %77, %67
  store i64 %78, i64* %76, align 8
  %79 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %80 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %81 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %80, i32 0, i32 3
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %82, i64 %84
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = call i32 @ahci_done(%struct.ahci_channel* %79, %struct.TYPE_8__* %86)
  %88 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %89 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %90, i64 %92
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %93, align 8
  %94 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %95 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %53, %52
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %37

101:                                              ; preds = %37
  %102 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %103 = call i32 @ahci_reset(%struct.ahci_channel* %102)
  br label %262

104:                                              ; preds = %27
  %105 = load %union.ccb*, %union.ccb** %3, align 8
  %106 = bitcast %union.ccb* %105 to %struct.TYPE_5__*
  %107 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %108 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %107, i32 0, i32 3
  %109 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %109, i64 %111
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = bitcast %struct.TYPE_5__* %106 to i8*
  %116 = bitcast %struct.TYPE_5__* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 %116, i64 40, i1 false)
  %117 = load %union.ccb*, %union.ccb** %3, align 8
  %118 = bitcast %union.ccb* %117 to %struct.TYPE_5__*
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @XPT_ATA_IO, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %185

123:                                              ; preds = %104
  %124 = load i32, i32* @RECOVERY_READ_LOG, align 4
  %125 = load %union.ccb*, %union.ccb** %3, align 8
  %126 = bitcast %union.ccb* %125 to %struct.TYPE_5__*
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 5
  store i32 %124, i32* %127, align 8
  %128 = load i64, i64* @XPT_ATA_IO, align 8
  %129 = load %union.ccb*, %union.ccb** %3, align 8
  %130 = bitcast %union.ccb* %129 to %struct.TYPE_5__*
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  %132 = load i8*, i8** @CAM_DIR_IN, align 8
  %133 = load %union.ccb*, %union.ccb** %3, align 8
  %134 = bitcast %union.ccb* %133 to %struct.TYPE_5__*
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 4
  store i8* %132, i8** %135, align 8
  %136 = load %union.ccb*, %union.ccb** %3, align 8
  %137 = bitcast %union.ccb* %136 to %struct.TYPE_5__*
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  store i32 1000, i32* %138, align 8
  %139 = load %union.ccb*, %union.ccb** %3, align 8
  %140 = bitcast %union.ccb* %139 to %struct.ccb_ataio*
  store %struct.ccb_ataio* %140, %struct.ccb_ataio** %4, align 8
  %141 = load i32, i32* @M_AHCI, align 4
  %142 = load i32, i32* @M_NOWAIT, align 4
  %143 = call i32* @malloc(i32 512, i32 %141, i32 %142)
  %144 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %145 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %144, i32 0, i32 2
  store i32* %143, i32** %145, align 8
  %146 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %147 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %123
  %151 = load %union.ccb*, %union.ccb** %3, align 8
  %152 = call i32 @xpt_free_ccb(%union.ccb* %151)
  %153 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %154 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @device_printf(i32 %155, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %36

157:                                              ; preds = %123
  %158 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %159 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %158, i32 0, i32 0
  store i32 512, i32* %159, align 8
  %160 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %161 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %160, i32 0, i32 1
  %162 = call i32 @bzero(%struct.TYPE_7__* %161, i32 56)
  %163 = load i32, i32* @CAM_ATAIO_48BIT, align 4
  %164 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %165 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 7
  store i32 %163, i32* %166, align 8
  %167 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %168 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  store i32 47, i32* %169, align 8
  %170 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %171 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  %173 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %174 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 6
  store i64 0, i64* %175, align 8
  %176 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %177 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  store i32 16, i32* %178, align 8
  %179 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %180 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 5
  store i64 0, i64* %181, align 8
  %182 = load %struct.ccb_ataio*, %struct.ccb_ataio** %4, align 8
  %183 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 4
  store i64 0, i64* %184, align 8
  br label %252

185:                                              ; preds = %104
  %186 = load i32, i32* @RECOVERY_REQUEST_SENSE, align 4
  %187 = load %union.ccb*, %union.ccb** %3, align 8
  %188 = bitcast %union.ccb* %187 to %struct.TYPE_5__*
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 5
  store i32 %186, i32* %189, align 8
  %190 = load i32, i32* %6, align 4
  %191 = load %union.ccb*, %union.ccb** %3, align 8
  %192 = bitcast %union.ccb* %191 to %struct.TYPE_5__*
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  store i32 %190, i32* %193, align 4
  %194 = load i64, i64* @XPT_SCSI_IO, align 8
  %195 = load %union.ccb*, %union.ccb** %3, align 8
  %196 = bitcast %union.ccb* %195 to %struct.TYPE_5__*
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  store i64 %194, i64* %197, align 8
  %198 = load i8*, i8** @CAM_DIR_IN, align 8
  %199 = load %union.ccb*, %union.ccb** %3, align 8
  %200 = bitcast %union.ccb* %199 to %struct.TYPE_5__*
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 4
  store i8* %198, i8** %201, align 8
  %202 = load %union.ccb*, %union.ccb** %3, align 8
  %203 = bitcast %union.ccb* %202 to %struct.TYPE_5__*
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 3
  store i64 0, i64* %204, align 8
  %205 = load %union.ccb*, %union.ccb** %3, align 8
  %206 = bitcast %union.ccb* %205 to %struct.TYPE_5__*
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  store i32 1000, i32* %207, align 8
  %208 = load %union.ccb*, %union.ccb** %3, align 8
  %209 = bitcast %union.ccb* %208 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %209, %struct.ccb_scsiio** %5, align 8
  %210 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %211 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %210, i32 0, i32 3
  %212 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %212, i64 %214
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = bitcast i32* %218 to i8*
  %220 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %221 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %220, i32 0, i32 3
  store i8* %219, i8** %221, align 8
  %222 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %223 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %222, i32 0, i32 3
  %224 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %224, i64 %226
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %233 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %235 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %234, i32 0, i32 1
  store i32 6, i32* %235, align 4
  %236 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %237 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %236, i32 0, i32 2
  %238 = call i32 @bzero(%struct.TYPE_7__* %237, i32 56)
  %239 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %240 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  store i32 3, i32* %243, align 4
  %244 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %245 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %248 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 4
  store i32 %246, i32* %251, align 4
  br label %252

252:                                              ; preds = %185, %157
  %253 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %254 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %253, i32 0, i32 1
  store i32 1, i32* %254, align 4
  %255 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %256 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @xpt_freeze_simq(i32 %257, i32 1)
  %259 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %260 = load %union.ccb*, %union.ccb** %3, align 8
  %261 = call i32 @ahci_begin_transaction(%struct.ahci_channel* %259, %union.ccb* %260)
  br label %262

262:                                              ; preds = %252, %101
  ret void
}

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ahci_done(%struct.ahci_channel*, %struct.TYPE_8__*) #1

declare dso_local i32 @ahci_reset(%struct.ahci_channel*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @ahci_begin_transaction(%struct.ahci_channel*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
