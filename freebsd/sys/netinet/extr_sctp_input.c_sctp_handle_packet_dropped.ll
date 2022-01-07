; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_packet_dropped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_packet_dropped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_pktdrop_chunk = type { %struct.TYPE_10__, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.sctp_tcb = type { %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i64, i64, i64, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 (%struct.sctp_tcb.0*, %struct.sctp_nets*, %struct.sctp_pktdrop_chunk.1*, i64*, i64*)* }
%struct.sctp_tcb.0 = type opaque
%struct.sctp_nets = type opaque
%struct.sctp_pktdrop_chunk.1 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.sctp_nets.2 = type { i32 }
%struct.sctp_chunk_desc = type { i64, i32, i32* }
%struct.sctp_chunkhdr = type { i64, i32 }
%struct.sctp_data_chunk = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@SCTP_FROM_MIDDLE_BOX = common dso_local global i32 0, align 4
@sctps_pdrpbwrpt = common dso_local global i32 0, align 4
@sctps_pdrpcrupt = common dso_local global i32 0, align 4
@SCTP_DATA = common dso_local global i64 0, align 8
@sctps_pdrpmbda = common dso_local global i32 0, align 4
@sctps_pdrpnedat = common dso_local global i32 0, align 4
@sctps_pdrpmbct = common dso_local global i32 0, align 4
@sctps_pdrppdbrk = common dso_local global i32 0, align 4
@sctps_pdrpfehos = common dso_local global i32 0, align 4
@sctps_pdrpfmbox = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_pktdrop_chunk*, %struct.sctp_tcb*, %struct.sctp_nets.2*, i64)* @sctp_handle_packet_dropped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_handle_packet_dropped(%struct.sctp_pktdrop_chunk* %0, %struct.sctp_tcb* %1, %struct.sctp_nets.2* %2, i64 %3) #0 {
  %5 = alloca %struct.sctp_pktdrop_chunk*, align 8
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_nets.2*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sctp_chunk_desc, align 8
  %15 = alloca %struct.sctp_chunkhdr*, align 8
  %16 = alloca %struct.sctp_data_chunk*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.sctp_pktdrop_chunk* %0, %struct.sctp_pktdrop_chunk** %5, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_nets.2* %2, %struct.sctp_nets.2** %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = zext i32 %25 to i64
  %27 = sub i64 %26, 32
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %4
  store %struct.sctp_chunkhdr* null, %struct.sctp_chunkhdr** %15, align 8
  %32 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %33 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SCTP_FROM_MIDDLE_BOX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @sctps_pdrpbwrpt, align 4
  %41 = call i32 @SCTP_STAT_INCR(i32 %40)
  br label %42

42:                                               ; preds = %39, %31
  br label %54

43:                                               ; preds = %4
  %44 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %45 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 4
  %48 = inttoptr i64 %47 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %48, %struct.sctp_chunkhdr** %15, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = sub i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = call i32 @memset(%struct.sctp_chunk_desc* %14, i32 0, i32 24)
  br label %54

54:                                               ; preds = %43, %42
  %55 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %56 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ntohs(i32 %57)
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %63, %54
  br label %66

66:                                               ; preds = %212, %65
  %67 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %15, align 8
  %68 = icmp ne %struct.sctp_chunkhdr* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = zext i32 %70 to i64
  %72 = icmp uge i64 %71, 16
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ false, %66 ], [ %72, %69 ]
  br i1 %74, label %75, label %220

75:                                               ; preds = %73
  %76 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %15, align 8
  %77 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.sctp_chunk_desc, %struct.sctp_chunk_desc* %14, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %15, align 8
  %81 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ntohs(i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = zext i32 %84 to i64
  %86 = icmp ult i64 %85, 16
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i32, i32* @sctps_pdrpcrupt, align 4
  %89 = call i32 @SCTP_STAT_INCR(i32 %88)
  br label %220

90:                                               ; preds = %75
  %91 = load i64, i64* %11, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ugt i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @sctps_pdrpcrupt, align 4
  %99 = call i32 @SCTP_STAT_INCR(i32 %98)
  br label %220

100:                                              ; preds = %93
  br label %119

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.sctp_chunk_desc, %struct.sctp_chunk_desc* %14, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SCTP_DATA, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = icmp ult i64 %108, 12
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %220

111:                                              ; preds = %106
  br label %118

112:                                              ; preds = %101
  %113 = load i32, i32* %12, align 4
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %114, 16
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %220

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117, %111
  br label %119

119:                                              ; preds = %118, %100
  %120 = getelementptr inbounds %struct.sctp_chunk_desc, %struct.sctp_chunk_desc* %14, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SCTP_DATA, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %173

124:                                              ; preds = %119
  %125 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %126 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SCTP_FROM_MIDDLE_BOX, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* @sctps_pdrpmbda, align 4
  %134 = call i32 @SCTP_STAT_INCR(i32 %133)
  br label %135

135:                                              ; preds = %132, %124
  %136 = load i32, i32* %12, align 4
  %137 = zext i32 %136 to i64
  %138 = icmp uge i64 %137, 12
  br i1 %138, label %139, label %169

139:                                              ; preds = %135
  %140 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %15, align 8
  %141 = bitcast %struct.sctp_chunkhdr* %140 to %struct.sctp_data_chunk*
  store %struct.sctp_data_chunk* %141, %struct.sctp_data_chunk** %16, align 8
  %142 = load %struct.sctp_data_chunk*, %struct.sctp_data_chunk** %16, align 8
  %143 = getelementptr inbounds %struct.sctp_data_chunk, %struct.sctp_data_chunk* %142, i64 1
  %144 = bitcast %struct.sctp_data_chunk* %143 to i32*
  store i32* %144, i32** %17, align 8
  store i32 0, i32* %18, align 4
  br label %145

145:                                              ; preds = %160, %139
  %146 = load i32, i32* %18, align 4
  %147 = zext i32 %146 to i64
  %148 = icmp ult i64 %147, 8
  br i1 %148, label %149, label %163

149:                                              ; preds = %145
  %150 = load i32*, i32** %17, align 8
  %151 = load i32, i32* %18, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.sctp_chunk_desc, %struct.sctp_chunk_desc* %14, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %18, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %154, i32* %159, align 4
  br label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %18, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %18, align 4
  br label %145

163:                                              ; preds = %145
  %164 = load %struct.sctp_data_chunk*, %struct.sctp_data_chunk** %16, align 8
  %165 = getelementptr inbounds %struct.sctp_data_chunk, %struct.sctp_data_chunk* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.sctp_chunk_desc, %struct.sctp_chunk_desc* %14, i32 0, i32 1
  store i32 %167, i32* %168, align 8
  br label %172

169:                                              ; preds = %135
  %170 = load i32, i32* @sctps_pdrpnedat, align 4
  %171 = call i32 @SCTP_STAT_INCR(i32 %170)
  br label %220

172:                                              ; preds = %163
  br label %185

173:                                              ; preds = %119
  %174 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %175 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @SCTP_FROM_MIDDLE_BOX, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %173
  %182 = load i32, i32* @sctps_pdrpmbct, align 4
  %183 = call i32 @SCTP_STAT_INCR(i32 %182)
  br label %184

184:                                              ; preds = %181, %173
  br label %185

185:                                              ; preds = %184, %172
  %186 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %187 = load %struct.sctp_nets.2*, %struct.sctp_nets.2** %7, align 8
  %188 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %189 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @process_chunk_drop(%struct.sctp_tcb* %186, %struct.sctp_chunk_desc* %14, %struct.sctp_nets.2* %187, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %185
  %195 = load i32, i32* @sctps_pdrppdbrk, align 4
  %196 = call i32 @SCTP_STAT_INCR(i32 %195)
  br label %220

197:                                              ; preds = %185
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @SCTP_SIZE32(i32 %198)
  %200 = load i32, i32* %12, align 4
  %201 = icmp ugt i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %220

203:                                              ; preds = %197
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @SCTP_SIZE32(i32 %204)
  %206 = load i32, i32* %12, align 4
  %207 = sub i32 %206, %205
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %12, align 4
  %209 = zext i32 %208 to i64
  %210 = icmp ult i64 %209, 16
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  br label %220

212:                                              ; preds = %203
  %213 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %15, align 8
  %214 = ptrtoint %struct.sctp_chunkhdr* %213 to i64
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @SCTP_SIZE32(i32 %215)
  %217 = zext i32 %216 to i64
  %218 = add nsw i64 %214, %217
  %219 = inttoptr i64 %218 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %219, %struct.sctp_chunkhdr** %15, align 8
  br label %66

220:                                              ; preds = %211, %202, %194, %169, %116, %110, %97, %87, %73
  %221 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %222 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @SCTP_FROM_MIDDLE_BOX, align 4
  %226 = and i32 %224, %225
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %300

228:                                              ; preds = %220
  %229 = load i32, i32* @sctps_pdrpfehos, align 4
  %230 = call i32 @SCTP_STAT_INCR(i32 %229)
  %231 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %232 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @ntohl(i32 %233)
  store i64 %234, i64* %9, align 8
  %235 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %236 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i64 @ntohl(i32 %237)
  store i64 %238, i64* %10, align 8
  %239 = load i64, i64* %9, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %299

241:                                              ; preds = %228
  %242 = load i64, i64* %10, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %299

244:                                              ; preds = %241
  %245 = load i64, i64* %9, align 8
  %246 = load i64, i64* %10, align 8
  %247 = icmp sgt i64 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %244
  %249 = load i64, i64* %9, align 8
  %250 = load i64, i64* %10, align 8
  %251 = sub nsw i64 %249, %250
  store i64 %251, i64* %19, align 8
  br label %253

252:                                              ; preds = %244
  store i64 0, i64* %19, align 8
  br label %253

253:                                              ; preds = %252, %248
  %254 = load i64, i64* %19, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %258 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  store i64 0, i64* %259, align 8
  br label %298

260:                                              ; preds = %253
  %261 = load i64, i64* %19, align 8
  %262 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %263 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp sgt i64 %261, %265
  br i1 %266, label %267, label %277

267:                                              ; preds = %260
  %268 = load i64, i64* %19, align 8
  %269 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %270 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = sub nsw i64 %268, %272
  %274 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %275 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  store i64 %273, i64* %276, align 8
  br label %281

277:                                              ; preds = %260
  %278 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %279 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  store i64 0, i64* %280, align 8
  br label %281

281:                                              ; preds = %277, %267
  %282 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %283 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %287 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %286, i32 0, i32 1
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp slt i64 %285, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %281
  %294 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %295 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  store i64 0, i64* %296, align 8
  br label %297

297:                                              ; preds = %293, %281
  br label %298

298:                                              ; preds = %297, %256
  br label %299

299:                                              ; preds = %298, %241, %228
  br label %303

300:                                              ; preds = %220
  %301 = load i32, i32* @sctps_pdrpfmbox, align 4
  %302 = call i32 @SCTP_STAT_INCR(i32 %301)
  br label %303

303:                                              ; preds = %300, %299
  %304 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %305 = getelementptr inbounds %struct.sctp_pktdrop_chunk, %struct.sctp_pktdrop_chunk* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @SCTP_FROM_MIDDLE_BOX, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %336

311:                                              ; preds = %303
  %312 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %313 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %336

317:                                              ; preds = %311
  %318 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %319 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 4
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %336

323:                                              ; preds = %317
  %324 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %325 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load i32 (%struct.sctp_tcb.0*, %struct.sctp_nets*, %struct.sctp_pktdrop_chunk.1*, i64*, i64*)*, i32 (%struct.sctp_tcb.0*, %struct.sctp_nets*, %struct.sctp_pktdrop_chunk.1*, i64*, i64*)** %327, align 8
  %329 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %330 = bitcast %struct.sctp_tcb* %329 to %struct.sctp_tcb.0*
  %331 = load %struct.sctp_nets.2*, %struct.sctp_nets.2** %7, align 8
  %332 = bitcast %struct.sctp_nets.2* %331 to %struct.sctp_nets*
  %333 = load %struct.sctp_pktdrop_chunk*, %struct.sctp_pktdrop_chunk** %5, align 8
  %334 = bitcast %struct.sctp_pktdrop_chunk* %333 to %struct.sctp_pktdrop_chunk.1*
  %335 = call i32 %328(%struct.sctp_tcb.0* %330, %struct.sctp_nets* %332, %struct.sctp_pktdrop_chunk.1* %334, i64* %9, i64* %10)
  br label %336

336:                                              ; preds = %323, %317, %311, %303
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @SCTP_STAT_INCR(i32) #1

declare dso_local i32 @memset(%struct.sctp_chunk_desc*, i32, i32) #1

declare dso_local i64 @process_chunk_drop(%struct.sctp_tcb*, %struct.sctp_chunk_desc*, %struct.sctp_nets.2*, i32) #1

declare dso_local i32 @SCTP_SIZE32(i32) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
