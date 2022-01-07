; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i64, i64, i32, i64, %struct.mfi_command*, i32, %struct.mfi_cmd_tbolt**, i32 }
%struct.mfi_command = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mfi_cmd_tbolt = type { i64, %struct.mfi_mpi2_request_raid_scsi_io* }
%struct.mfi_mpi2_request_raid_scsi_io = type { i32 }
%struct.mfi_mpi2_reply_header = type { i32, i32 }
%union.desc_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%union.mfi_mpi2_reply_descriptor = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"reply desc is NULL!!\0A\00", align 1
@MPI2_RPY_DESCRIPT_FLAGS_TYPE_MASK = common dso_local global i32 0, align 4
@MPI2_RPY_DESCRIPT_FLAGS_UNUSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"smid is %d cannot proceed - skipping\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"cmd_tbolt %p has invalid sync_cmd_idx=%d - skipping\0A\00", align 1
@MFI_CMD_SCSI = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@MFI_STAT_OK = common dso_local global i32 0, align 4
@MFI_ON_MFIQ_BUSY = common dso_local global i32 0, align 4
@MFI_RPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfi_tbolt_complete_cmd(%struct.mfi_softc* %0) #0 {
  %2 = alloca %struct.mfi_softc*, align 8
  %3 = alloca %struct.mfi_mpi2_reply_header*, align 8
  %4 = alloca %struct.mfi_mpi2_reply_header*, align 8
  %5 = alloca %struct.mfi_command*, align 8
  %6 = alloca %struct.mfi_cmd_tbolt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mfi_mpi2_request_raid_scsi_io*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.desc_value, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %2, align 8
  %14 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %14, i32 0, i32 7
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @mtx_assert(i32* %15, i32 %16)
  %18 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %22 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %23, %26
  %28 = add i64 %20, %27
  %29 = inttoptr i64 %28 to %struct.mfi_mpi2_reply_header*
  store %struct.mfi_mpi2_reply_header* %29, %struct.mfi_mpi2_reply_header** %3, align 8
  %30 = load %struct.mfi_mpi2_reply_header*, %struct.mfi_mpi2_reply_header** %3, align 8
  store %struct.mfi_mpi2_reply_header* %30, %struct.mfi_mpi2_reply_header** %4, align 8
  %31 = load %struct.mfi_mpi2_reply_header*, %struct.mfi_mpi2_reply_header** %4, align 8
  %32 = icmp eq %struct.mfi_mpi2_reply_header* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %35 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %247

38:                                               ; preds = %1
  %39 = load %struct.mfi_mpi2_reply_header*, %struct.mfi_mpi2_reply_header** %4, align 8
  %40 = getelementptr inbounds %struct.mfi_mpi2_reply_header, %struct.mfi_mpi2_reply_header* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MPI2_RPY_DESCRIPT_FLAGS_TYPE_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MPI2_RPY_DESCRIPT_FLAGS_UNUSED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %247

48:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  %49 = load %struct.mfi_mpi2_reply_header*, %struct.mfi_mpi2_reply_header** %3, align 8
  %50 = bitcast %struct.mfi_mpi2_reply_header* %49 to %union.mfi_mpi2_reply_descriptor*
  %51 = bitcast %union.mfi_mpi2_reply_descriptor* %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %union.desc_value* %13 to i32*
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %229, %48
  %55 = bitcast %union.desc_value* %13 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = bitcast %union.desc_value* %13 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, -1
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ false, %54 ], [ %63, %59 ]
  br i1 %65, label %66, label %230

66:                                               ; preds = %64
  %67 = load %struct.mfi_mpi2_reply_header*, %struct.mfi_mpi2_reply_header** %4, align 8
  %68 = getelementptr inbounds %struct.mfi_mpi2_reply_header, %struct.mfi_mpi2_reply_header* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %75 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72, %66
  %79 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %80 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %174

84:                                               ; preds = %72
  %85 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %86 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %85, i32 0, i32 6
  %87 = load %struct.mfi_cmd_tbolt**, %struct.mfi_cmd_tbolt*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %87, i64 %90
  %92 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %91, align 8
  store %struct.mfi_cmd_tbolt* %92, %struct.mfi_cmd_tbolt** %6, align 8
  %93 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %94 = getelementptr inbounds %struct.mfi_cmd_tbolt, %struct.mfi_cmd_tbolt* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %97 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = icmp eq i64 %95, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %84
  %102 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %103 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %106 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %107 = getelementptr inbounds %struct.mfi_cmd_tbolt, %struct.mfi_cmd_tbolt* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), %struct.mfi_cmd_tbolt* %105, i64 %108)
  br label %174

110:                                              ; preds = %84
  %111 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %112 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %111, i32 0, i32 4
  %113 = load %struct.mfi_command*, %struct.mfi_command** %112, align 8
  %114 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %115 = getelementptr inbounds %struct.mfi_cmd_tbolt, %struct.mfi_cmd_tbolt* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %113, i64 %116
  store %struct.mfi_command* %117, %struct.mfi_command** %5, align 8
  %118 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %119 = getelementptr inbounds %struct.mfi_cmd_tbolt, %struct.mfi_cmd_tbolt* %118, i32 0, i32 1
  %120 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %119, align 8
  store %struct.mfi_mpi2_request_raid_scsi_io* %120, %struct.mfi_mpi2_request_raid_scsi_io** %9, align 8
  %121 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %122 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %10, align 4
  %128 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %129 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %11, align 4
  %135 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @map_tbolt_cmd_status(%struct.mfi_command* %135, i32 %136, i32 %137)
  %139 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %140 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MFI_CMD_SCSI, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %110
  %146 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %147 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @MFI_CMD_POLLED, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i32, i32* @MFI_STAT_OK, align 4
  %154 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %155 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %154, i32 0, i32 1
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 %153, i32* %158, align 4
  br label %173

159:                                              ; preds = %145, %110
  %160 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %161 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @MFI_ON_MFIQ_BUSY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %168 = call i32 @mfi_remove_busy(%struct.mfi_command* %167)
  br label %169

169:                                              ; preds = %166, %159
  %170 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %171 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %172 = call i32 @mfi_complete(%struct.mfi_softc* %170, %struct.mfi_command* %171)
  br label %173

173:                                              ; preds = %169, %152
  br label %174

174:                                              ; preds = %173, %101, %78
  %175 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %176 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %176, align 8
  %179 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %180 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %183 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = icmp uge i64 %181, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %174
  %188 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %189 = load i32, i32* @MFI_RPI, align 4
  %190 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %191 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @MFI_WRITE4(%struct.mfi_softc* %188, i32 %189, i64 %192)
  %194 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %195 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %194, i32 0, i32 0
  store i64 0, i64* %195, align 8
  br label %196

196:                                              ; preds = %187, %174
  %197 = load %struct.mfi_mpi2_reply_header*, %struct.mfi_mpi2_reply_header** %3, align 8
  %198 = bitcast %struct.mfi_mpi2_reply_header* %197 to %union.mfi_mpi2_reply_descriptor*
  %199 = bitcast %union.mfi_mpi2_reply_descriptor* %198 to i32*
  store i32 -1, i32* %199, align 4
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  %202 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %203 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %206 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %209 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = mul i64 %207, %210
  %212 = add i64 %204, %211
  %213 = inttoptr i64 %212 to %struct.mfi_mpi2_reply_header*
  store %struct.mfi_mpi2_reply_header* %213, %struct.mfi_mpi2_reply_header** %3, align 8
  %214 = load %struct.mfi_mpi2_reply_header*, %struct.mfi_mpi2_reply_header** %3, align 8
  store %struct.mfi_mpi2_reply_header* %214, %struct.mfi_mpi2_reply_header** %4, align 8
  %215 = load %struct.mfi_mpi2_reply_header*, %struct.mfi_mpi2_reply_header** %3, align 8
  %216 = bitcast %struct.mfi_mpi2_reply_header* %215 to %union.mfi_mpi2_reply_descriptor*
  %217 = bitcast %union.mfi_mpi2_reply_descriptor* %216 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = bitcast %union.desc_value* %13 to i32*
  store i32 %218, i32* %219, align 4
  %220 = load %struct.mfi_mpi2_reply_header*, %struct.mfi_mpi2_reply_header** %4, align 8
  %221 = getelementptr inbounds %struct.mfi_mpi2_reply_header, %struct.mfi_mpi2_reply_header* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @MPI2_RPY_DESCRIPT_FLAGS_TYPE_MASK, align 4
  %224 = and i32 %222, %223
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @MPI2_RPY_DESCRIPT_FLAGS_UNUSED, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %196
  br label %230

229:                                              ; preds = %196
  br label %54

230:                                              ; preds = %228, %64
  %231 = load i32, i32* %12, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %230
  br label %247

234:                                              ; preds = %230
  %235 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %236 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %234
  %240 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %241 = load i32, i32* @MFI_RPI, align 4
  %242 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %243 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @MFI_WRITE4(%struct.mfi_softc* %240, i32 %241, i64 %244)
  br label %246

246:                                              ; preds = %239, %234
  br label %247

247:                                              ; preds = %246, %233, %47, %33
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @map_tbolt_cmd_status(%struct.mfi_command*, i32, i32) #1

declare dso_local i32 @mfi_remove_busy(%struct.mfi_command*) #1

declare dso_local i32 @mfi_complete(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @MFI_WRITE4(%struct.mfi_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
