; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_parse_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_parse_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32 }
%struct.mfi_command = type { i32, i32, i32, %struct.mfi_evt_list*, i32, i32*, %struct.TYPE_6__* }
%struct.mfi_evt_list = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.mfi_dcmd_frame }
%struct.mfi_dcmd_frame = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i32 }
%union.mfi_evt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@mfi_event_locale = common dso_local global i32 0, align 4
@mfi_event_class = common dso_local global i32 0, align 4
@MAX_EVENTS = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_DCMD_CTRL_EVENT_GET = common dso_local global i32 0, align 4
@MFI_DCMD_FRAME_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to get controller entries\0A\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MFI_STAT_NOT_FOUND = common dso_local global i64 0, align 8
@MFI_STAT_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Error %d fetching controller entries\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*, i32, i32)* @mfi_parse_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_parse_entries(%struct.mfi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mfi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mfi_command*, align 8
  %9 = alloca %struct.mfi_dcmd_frame*, align 8
  %10 = alloca %struct.mfi_evt_list*, align 8
  %11 = alloca %union.mfi_evt, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %17 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %16, i32 0, i32 2
  %18 = load i32, i32* @MA_OWNED, align 4
  %19 = call i32 @mtx_assert(i32* %17, i32 %18)
  %20 = bitcast %union.mfi_evt* %11 to %struct.TYPE_5__*
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @mfi_event_locale, align 4
  %23 = bitcast %union.mfi_evt* %11 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @mfi_event_class, align 4
  %26 = bitcast %union.mfi_evt* %11 to %struct.TYPE_5__*
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @MAX_EVENTS, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = add i64 16, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @M_MFIBUF, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.mfi_evt_list* @malloc(i32 %34, i32 %35, i32 %38)
  store %struct.mfi_evt_list* %39, %struct.mfi_evt_list** %10, align 8
  %40 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %10, align 8
  %41 = icmp eq %struct.mfi_evt_list* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %4, align 4
  br label %230

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %212, %44
  %47 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %48 = call %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc* %47)
  store %struct.mfi_command* %48, %struct.mfi_command** %8, align 8
  %49 = icmp eq %struct.mfi_command* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %10, align 8
  %52 = load i32, i32* @M_MFIBUF, align 4
  %53 = call i32 @free(%struct.mfi_evt_list* %51, i32 %52)
  %54 = load i32, i32* @EBUSY, align 4
  store i32 %54, i32* %4, align 4
  br label %230

55:                                               ; preds = %46
  %56 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %57 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %56, i32 0, i32 6
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store %struct.mfi_dcmd_frame* %59, %struct.mfi_dcmd_frame** %9, align 8
  %60 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %61 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %64 = call i32 @bzero(i32 %62, i32 %63)
  %65 = load i32, i32* @MFI_CMD_DCMD, align 4
  %66 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %67 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 8
  %69 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %70 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %74 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @MFI_DCMD_CTRL_EVENT_GET, align 4
  %77 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %78 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %81 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %80, i32 0, i32 2
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %79, i32* %82, align 4
  %83 = bitcast %union.mfi_evt* %11 to i32*
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %86 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %85, i32 0, i32 2
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %89 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %88, i32 0, i32 1
  %90 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %91 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %90, i32 0, i32 5
  store i32* %89, i32** %91, align 8
  %92 = load i32, i32* @MFI_DCMD_FRAME_SIZE, align 4
  %93 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %94 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %96 = load i32, i32* @MFI_CMD_POLLED, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %99 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %10, align 8
  %101 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %102 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %101, i32 0, i32 3
  store %struct.mfi_evt_list* %100, %struct.mfi_evt_list** %102, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %105 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %107 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %108 = call i32 @mfi_mapcmd(%struct.mfi_softc* %106, %struct.mfi_command* %107)
  store i32 %108, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %55
  %111 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %112 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %115 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %116 = call i32 @mfi_release_command(%struct.mfi_command* %115)
  br label %225

117:                                              ; preds = %55
  %118 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %119 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %122 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %125 = call i32 @bus_dmamap_sync(i32 %120, i32 %123, i32 %124)
  %126 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %127 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %130 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @bus_dmamap_unload(i32 %128, i32 %131)
  %133 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %134 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @MFI_STAT_NOT_FOUND, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %117
  %140 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %141 = call i32 @mfi_release_command(%struct.mfi_command* %140)
  br label %225

142:                                              ; preds = %117
  %143 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %144 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @MFI_STAT_OK, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %142
  %150 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %151 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %154 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (i32, i8*, ...) @device_printf(i32 %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %156)
  %158 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %159 = call i32 @mfi_release_command(%struct.mfi_command* %158)
  %160 = load i32, i32* @EIO, align 4
  store i32 %160, i32* %12, align 4
  br label %225

161:                                              ; preds = %142
  %162 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %163 = call i32 @mfi_release_command(%struct.mfi_command* %162)
  store i32 0, i32* %13, align 4
  br label %164

164:                                              ; preds = %209, %161
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %10, align 8
  %167 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %212

170:                                              ; preds = %164
  %171 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %10, align 8
  %172 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %171, i32 0, i32 1
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp sge i32 %178, %179
  br i1 %180, label %181, label %200

181:                                              ; preds = %170
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %212

186:                                              ; preds = %181
  %187 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %10, align 8
  %188 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %187, i32 0, i32 1
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %186
  br label %212

198:                                              ; preds = %186
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %170
  %201 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %202 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %10, align 8
  %203 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %202, i32 0, i32 1
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 %206
  %208 = call i32 @mfi_queue_evt(%struct.mfi_softc* %201, %struct.TYPE_8__* %207)
  br label %209

209:                                              ; preds = %200
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %164

212:                                              ; preds = %197, %185, %164
  %213 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %10, align 8
  %214 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %213, i32 0, i32 1
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %10, align 8
  %217 = getelementptr inbounds %struct.mfi_evt_list, %struct.mfi_evt_list* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %14, align 4
  br label %46

225:                                              ; preds = %149, %139, %110
  %226 = load %struct.mfi_evt_list*, %struct.mfi_evt_list** %10, align 8
  %227 = load i32, i32* @M_MFIBUF, align 4
  %228 = call i32 @free(%struct.mfi_evt_list* %226, i32 %227)
  %229 = load i32, i32* %12, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %225, %50, %42
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.mfi_evt_list* @malloc(i32, i32, i32) #1

declare dso_local %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc*) #1

declare dso_local i32 @free(%struct.mfi_evt_list*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @mfi_mapcmd(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @mfi_queue_evt(%struct.mfi_softc*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
