; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_process_read_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_process_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, i32, %struct.TYPE_10__**, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.ata_res }
%struct.ata_res = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error while READ LOG EXT\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Non-queued command error in READ LOG EXT\0A\00", align 1
@M_AHCI = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*, %union.ccb*)* @ahci_process_read_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_process_read_log(%struct.ahci_channel* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ata_res*, align 8
  %7 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %8 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %9 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %union.ccb*, %union.ccb** %4, align 8
  %11 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %union.ccb*, %union.ccb** %4, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_7__*
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CAM_STATUS_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @CAM_REQ_CMP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %181

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %181

28:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %177, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %180

35:                                               ; preds = %29
  %36 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %37 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %36, i32 0, i32 3
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %38, i64 %40
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %177

45:                                               ; preds = %35
  %46 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %47 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %46, i32 0, i32 3
  %48 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %48, i64 %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @XPT_ATA_IO, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %177

59:                                               ; preds = %45
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 31
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %131

66:                                               ; preds = %59
  %67 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %68 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %67, i32 0, i32 3
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %69, i64 %71
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store %struct.ata_res* %75, %struct.ata_res** %6, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %80 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %85 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %90 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %95 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 6
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %100 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 7
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %105 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 8
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %110 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 9
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %115 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 10
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %120 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 12
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %125 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 13
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %130 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %129, i32 0, i32 10
  store i32 %128, i32* %130, align 4
  br label %157

131:                                              ; preds = %59
  %132 = load i32, i32* @CAM_STATUS_MASK, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %135 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %134, i32 0, i32 3
  %136 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %136, i64 %138
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, %133
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %146 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %147 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %146, i32 0, i32 3
  %148 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %148, i64 %150
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %145
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %131, %66
  %158 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %159 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %160 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %159, i32 0, i32 3
  %161 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %161, i64 %163
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = call i32 @ahci_done(%struct.ahci_channel* %158, %struct.TYPE_10__* %165)
  %167 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %168 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %167, i32 0, i32 3
  %169 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %169, i64 %171
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %172, align 8
  %173 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %174 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %157, %58, %44
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %29

180:                                              ; preds = %29
  br label %262

181:                                              ; preds = %22, %2
  %182 = load %union.ccb*, %union.ccb** %4, align 8
  %183 = bitcast %union.ccb* %182 to %struct.TYPE_7__*
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @CAM_STATUS_MASK, align 4
  %187 = and i32 %185, %186
  %188 = load i32, i32* @CAM_REQ_CMP, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %181
  %191 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %192 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @device_printf(i32 %193, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %207

195:                                              ; preds = %181
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 128
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %203 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @device_printf(i32 %204, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %206

206:                                              ; preds = %201, %195
  br label %207

207:                                              ; preds = %206, %190
  store i32 0, i32* %7, align 4
  br label %208

208:                                              ; preds = %258, %207
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %211 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %261

214:                                              ; preds = %208
  %215 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %216 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %215, i32 0, i32 3
  %217 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %217, i64 %219
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = icmp ne %struct.TYPE_10__* %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %214
  br label %258

224:                                              ; preds = %214
  %225 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %226 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %225, i32 0, i32 3
  %227 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %227, i64 %229
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @XPT_ATA_IO, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %224
  br label %258

238:                                              ; preds = %224
  %239 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %240 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %241 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %240, i32 0, i32 3
  %242 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %242, i64 %244
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %245, align 8
  %247 = call i32 @ahci_done(%struct.ahci_channel* %239, %struct.TYPE_10__* %246)
  %248 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %249 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %248, i32 0, i32 3
  %250 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %250, i64 %252
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %253, align 8
  %254 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %255 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %255, align 8
  br label %258

258:                                              ; preds = %238, %237, %223
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  br label %208

261:                                              ; preds = %208
  br label %262

262:                                              ; preds = %261, %180
  %263 = load %union.ccb*, %union.ccb** %4, align 8
  %264 = bitcast %union.ccb* %263 to %struct.TYPE_9__*
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* @M_AHCI, align 4
  %268 = call i32 @free(i32* %266, i32 %267)
  %269 = load %union.ccb*, %union.ccb** %4, align 8
  %270 = call i32 @xpt_free_ccb(%union.ccb* %269)
  %271 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %272 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @TRUE, align 4
  %275 = call i32 @xpt_release_simq(i32 %273, i32 %274)
  ret void
}

declare dso_local i32 @ahci_done(%struct.ahci_channel*, %struct.TYPE_10__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
