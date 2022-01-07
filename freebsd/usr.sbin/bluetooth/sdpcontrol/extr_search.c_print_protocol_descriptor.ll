; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_search.c_print_protocol_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_search.c_print_protocol_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\09%s (%#4.4x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\09%#8.8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\09%#8.8x-%4.4x-%4.4x-%4.4x-%4.4x%8.8x\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Invalid Protocol Descriptor. Not a UUID, type=%#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\09\09Protocol specific parameter #%d: \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"nil\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"u/int8/bool %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"u/int/uuid16 %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"u/int/uuid32 %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"u/int64 %ju\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"u/int128 %#8.8x%8.8x%8.8x%8.8x\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"uuid128 %#8.8x-%4.4x-%4.4x-%4.4x-%4.4x%8.8x\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%#2.2x \00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"Invalid Protocol Descriptor. Unknown data type: %#02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @print_protocol_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_protocol_descriptor(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %union.anon, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @SDP_GET8(i32 %9, i32* %10)
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %76 [
    i32 129, label %13
    i32 128, label %25
    i32 130, label %34
  ]

13:                                               ; preds = %2
  %14 = bitcast %union.anon* %5 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @SDP_GET16(i32 %15, i32* %16)
  %18 = load i32, i32* @stdout, align 4
  %19 = bitcast %union.anon* %5 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @sdp_uuid2desc(i32 %20)
  %22 = bitcast %union.anon* %5 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %23)
  br label %80

25:                                               ; preds = %2
  %26 = bitcast %union.anon* %5 to i32*
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @SDP_GET32(i32 %27, i32* %28)
  %30 = load i32, i32* @stdout, align 4
  %31 = bitcast %union.anon* %5 to i32*
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %80

34:                                               ; preds = %2
  %35 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @SDP_GET_UUID128(%struct.TYPE_4__* %35, i32* %36)
  %38 = load i32, i32* @stdout, align 4
  %39 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohl(i32 %43)
  %45 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ntohs(i32 %55)
  %57 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ntohs(i32 %61)
  %63 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 10
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  %69 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 12
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohl(i32 %73)
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %50, i32 %56, i32 %62, i32 %68, i32 %74)
  br label %80

76:                                               ; preds = %2
  %77 = load i32, i32* @stderr, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %364

80:                                               ; preds = %34, %25, %13
  store i32 1, i32* %8, align 4
  br label %81

81:                                               ; preds = %361, %80
  %82 = load i32*, i32** %3, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = icmp ult i32* %82, %83
  br i1 %84, label %85, label %364

85:                                               ; preds = %81
  %86 = load i32, i32* @stdout, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @SDP_GET8(i32 %89, i32* %90)
  %92 = load i32, i32* %6, align 4
  switch i32 %92, label %356 [
    i32 145, label %93
    i32 134, label %96
    i32 146, label %96
    i32 151, label %96
    i32 137, label %105
    i32 149, label %105
    i32 129, label %105
    i32 136, label %114
    i32 148, label %114
    i32 128, label %114
    i32 135, label %123
    i32 147, label %123
    i32 138, label %132
    i32 150, label %132
    i32 130, label %158
    i32 139, label %200
    i32 131, label %200
    i32 141, label %226
    i32 133, label %226
    i32 140, label %252
    i32 132, label %252
    i32 142, label %278
    i32 152, label %278
    i32 144, label %304
    i32 154, label %304
    i32 143, label %330
    i32 153, label %330
  ]

93:                                               ; preds = %85
  %94 = load i32, i32* @stdout, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %360

96:                                               ; preds = %85, %85, %85
  %97 = bitcast %union.anon* %5 to i32*
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @SDP_GET8(i32 %98, i32* %99)
  %101 = load i32, i32* @stdout, align 4
  %102 = bitcast %union.anon* %5 to i32*
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  br label %360

105:                                              ; preds = %85, %85, %85
  %106 = bitcast %union.anon* %5 to i32*
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @SDP_GET16(i32 %107, i32* %108)
  %110 = load i32, i32* @stdout, align 4
  %111 = bitcast %union.anon* %5 to i32*
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  br label %360

114:                                              ; preds = %85, %85, %85
  %115 = bitcast %union.anon* %5 to i32*
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @SDP_GET32(i32 %116, i32* %117)
  %119 = load i32, i32* @stdout, align 4
  %120 = bitcast %union.anon* %5 to i32*
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  br label %360

123:                                              ; preds = %85, %85
  %124 = bitcast %union.anon* %5 to i32*
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 @SDP_GET64(i32 %125, i32* %126)
  %128 = load i32, i32* @stdout, align 4
  %129 = bitcast %union.anon* %5 to i32*
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %130)
  br label %360

132:                                              ; preds = %85, %85
  %133 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @SDP_GET128(%struct.TYPE_4__* %133, i32* %134)
  %136 = load i32, i32* @stdout, align 4
  %137 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  %146 = load i32, i32* %145, align 4
  %147 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 8
  %151 = load i32, i32* %150, align 4
  %152 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 12
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %141, i32 %146, i32 %151, i32 %156)
  br label %360

158:                                              ; preds = %85
  %159 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @SDP_GET_UUID128(%struct.TYPE_4__* %159, i32* %160)
  %162 = load i32, i32* @stdout, align 4
  %163 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ntohl(i32 %167)
  %169 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 4
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ntohs(i32 %173)
  %175 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 6
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ntohs(i32 %179)
  %181 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 8
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @ntohs(i32 %185)
  %187 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 10
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ntohs(i32 %191)
  %193 = bitcast %union.anon* %5 to %struct.TYPE_4__*
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 12
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ntohl(i32 %197)
  %199 = call i32 (i32, i8*, ...) @fprintf(i32 %162, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %168, i32 %174, i32 %180, i32 %186, i32 %192, i32 %198)
  br label %360

200:                                              ; preds = %85, %85
  %201 = load i32, i32* %7, align 4
  %202 = load i32*, i32** %3, align 8
  %203 = call i32 @SDP_GET8(i32 %201, i32* %202)
  br label %204

204:                                              ; preds = %218, %200
  %205 = load i32*, i32** %3, align 8
  %206 = load i32*, i32** %4, align 8
  %207 = icmp ult i32* %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i32, i32* %7, align 4
  %210 = icmp sgt i32 %209, 0
  br label %211

211:                                              ; preds = %208, %204
  %212 = phi i1 [ false, %204 ], [ %210, %208 ]
  br i1 %212, label %213, label %223

213:                                              ; preds = %211
  %214 = load i32, i32* @stdout, align 4
  %215 = load i32*, i32** %3, align 8
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %213
  %219 = load i32*, i32** %3, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %3, align 8
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %7, align 4
  br label %204

223:                                              ; preds = %211
  %224 = load i32, i32* @stdout, align 4
  %225 = call i32 (i32, i8*, ...) @fprintf(i32 %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %360

226:                                              ; preds = %85, %85
  %227 = load i32, i32* %7, align 4
  %228 = load i32*, i32** %3, align 8
  %229 = call i32 @SDP_GET16(i32 %227, i32* %228)
  br label %230

230:                                              ; preds = %244, %226
  %231 = load i32*, i32** %3, align 8
  %232 = load i32*, i32** %4, align 8
  %233 = icmp ult i32* %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i32, i32* %7, align 4
  %236 = icmp sgt i32 %235, 0
  br label %237

237:                                              ; preds = %234, %230
  %238 = phi i1 [ false, %230 ], [ %236, %234 ]
  br i1 %238, label %239, label %249

239:                                              ; preds = %237
  %240 = load i32, i32* @stdout, align 4
  %241 = load i32*, i32** %3, align 8
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i32, i8*, ...) @fprintf(i32 %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %239
  %245 = load i32*, i32** %3, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %3, align 8
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %7, align 4
  br label %230

249:                                              ; preds = %237
  %250 = load i32, i32* @stdout, align 4
  %251 = call i32 (i32, i8*, ...) @fprintf(i32 %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %360

252:                                              ; preds = %85, %85
  %253 = load i32, i32* %7, align 4
  %254 = load i32*, i32** %3, align 8
  %255 = call i32 @SDP_GET32(i32 %253, i32* %254)
  br label %256

256:                                              ; preds = %270, %252
  %257 = load i32*, i32** %3, align 8
  %258 = load i32*, i32** %4, align 8
  %259 = icmp ult i32* %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load i32, i32* %7, align 4
  %262 = icmp sgt i32 %261, 0
  br label %263

263:                                              ; preds = %260, %256
  %264 = phi i1 [ false, %256 ], [ %262, %260 ]
  br i1 %264, label %265, label %275

265:                                              ; preds = %263
  %266 = load i32, i32* @stdout, align 4
  %267 = load i32*, i32** %3, align 8
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %266, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %265
  %271 = load i32*, i32** %3, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %3, align 8
  %273 = load i32, i32* %7, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %7, align 4
  br label %256

275:                                              ; preds = %263
  %276 = load i32, i32* @stdout, align 4
  %277 = call i32 (i32, i8*, ...) @fprintf(i32 %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %360

278:                                              ; preds = %85, %85
  %279 = load i32, i32* %7, align 4
  %280 = load i32*, i32** %3, align 8
  %281 = call i32 @SDP_GET8(i32 %279, i32* %280)
  br label %282

282:                                              ; preds = %296, %278
  %283 = load i32*, i32** %3, align 8
  %284 = load i32*, i32** %4, align 8
  %285 = icmp ult i32* %283, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load i32, i32* %7, align 4
  %288 = icmp sgt i32 %287, 0
  br label %289

289:                                              ; preds = %286, %282
  %290 = phi i1 [ false, %282 ], [ %288, %286 ]
  br i1 %290, label %291, label %301

291:                                              ; preds = %289
  %292 = load i32, i32* @stdout, align 4
  %293 = load i32*, i32** %3, align 8
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i32, i8*, ...) @fprintf(i32 %292, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %294)
  br label %296

296:                                              ; preds = %291
  %297 = load i32*, i32** %3, align 8
  %298 = getelementptr inbounds i32, i32* %297, i32 1
  store i32* %298, i32** %3, align 8
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, -1
  store i32 %300, i32* %7, align 4
  br label %282

301:                                              ; preds = %289
  %302 = load i32, i32* @stdout, align 4
  %303 = call i32 (i32, i8*, ...) @fprintf(i32 %302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %360

304:                                              ; preds = %85, %85
  %305 = load i32, i32* %7, align 4
  %306 = load i32*, i32** %3, align 8
  %307 = call i32 @SDP_GET16(i32 %305, i32* %306)
  br label %308

308:                                              ; preds = %322, %304
  %309 = load i32*, i32** %3, align 8
  %310 = load i32*, i32** %4, align 8
  %311 = icmp ult i32* %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = load i32, i32* %7, align 4
  %314 = icmp sgt i32 %313, 0
  br label %315

315:                                              ; preds = %312, %308
  %316 = phi i1 [ false, %308 ], [ %314, %312 ]
  br i1 %316, label %317, label %327

317:                                              ; preds = %315
  %318 = load i32, i32* @stdout, align 4
  %319 = load i32*, i32** %3, align 8
  %320 = load i32, i32* %319, align 4
  %321 = call i32 (i32, i8*, ...) @fprintf(i32 %318, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %320)
  br label %322

322:                                              ; preds = %317
  %323 = load i32*, i32** %3, align 8
  %324 = getelementptr inbounds i32, i32* %323, i32 1
  store i32* %324, i32** %3, align 8
  %325 = load i32, i32* %7, align 4
  %326 = add nsw i32 %325, -1
  store i32 %326, i32* %7, align 4
  br label %308

327:                                              ; preds = %315
  %328 = load i32, i32* @stdout, align 4
  %329 = call i32 (i32, i8*, ...) @fprintf(i32 %328, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %360

330:                                              ; preds = %85, %85
  %331 = load i32, i32* %7, align 4
  %332 = load i32*, i32** %3, align 8
  %333 = call i32 @SDP_GET32(i32 %331, i32* %332)
  br label %334

334:                                              ; preds = %348, %330
  %335 = load i32*, i32** %3, align 8
  %336 = load i32*, i32** %4, align 8
  %337 = icmp ult i32* %335, %336
  br i1 %337, label %338, label %341

338:                                              ; preds = %334
  %339 = load i32, i32* %7, align 4
  %340 = icmp sgt i32 %339, 0
  br label %341

341:                                              ; preds = %338, %334
  %342 = phi i1 [ false, %334 ], [ %340, %338 ]
  br i1 %342, label %343, label %353

343:                                              ; preds = %341
  %344 = load i32, i32* @stdout, align 4
  %345 = load i32*, i32** %3, align 8
  %346 = load i32, i32* %345, align 4
  %347 = call i32 (i32, i8*, ...) @fprintf(i32 %344, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %346)
  br label %348

348:                                              ; preds = %343
  %349 = load i32*, i32** %3, align 8
  %350 = getelementptr inbounds i32, i32* %349, i32 1
  store i32* %350, i32** %3, align 8
  %351 = load i32, i32* %7, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %7, align 4
  br label %334

353:                                              ; preds = %341
  %354 = load i32, i32* @stdout, align 4
  %355 = call i32 (i32, i8*, ...) @fprintf(i32 %354, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %360

356:                                              ; preds = %85
  %357 = load i32, i32* @stderr, align 4
  %358 = load i32, i32* %6, align 4
  %359 = call i32 (i32, i8*, ...) @fprintf(i32 %357, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0), i32 %358)
  br label %364

360:                                              ; preds = %353, %327, %301, %275, %249, %223, %158, %132, %123, %114, %105, %96, %93
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %8, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %8, align 4
  br label %81

364:                                              ; preds = %76, %356, %81
  ret void
}

declare dso_local i32 @SDP_GET8(i32, i32*) #1

declare dso_local i32 @SDP_GET16(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @sdp_uuid2desc(i32) #1

declare dso_local i32 @SDP_GET32(i32, i32*) #1

declare dso_local i32 @SDP_GET_UUID128(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @SDP_GET64(i32, i32*) #1

declare dso_local i32 @SDP_GET128(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
