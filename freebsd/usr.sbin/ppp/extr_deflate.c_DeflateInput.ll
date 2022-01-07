; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_deflate.c_DeflateInput.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_deflate.c_DeflateInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp = type { i32, i32, i32 }
%struct.mbuf = type { i32, i32, %struct.mbuf* }
%struct.deflate_state = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32, i8*, i8* }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DeflateInput: Decompress packet:\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"DeflateInput: Seq %d\0A\00", align 1
@LogCCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"DeflateInput: Seq error: Got %d, expected %d\0A\00", align 1
@DEFLATE_CHUNK_LEN = common dso_local global i32 0, align 4
@MB_CCPIN = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"DeflateInput: inflate returned %d (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"DeflateInput: Length error\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"DeflateInput: %d => %d bytes, proto 0x%04x\0A\00", align 1
@garbage = common dso_local global i32* null, align 8
@EMPTY_BLOCK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i8*, %struct.ccp*, i32*, %struct.mbuf*)* @DeflateInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @DeflateInput(i8* %0, %struct.ccp* %1, i32* %2, %struct.mbuf* %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ccp*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.deflate_state*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [2 x i32], align 4
  store i8* %0, i8** %6, align 8
  store %struct.ccp* %1, %struct.ccp** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.mbuf* %3, %struct.mbuf** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.deflate_state*
  store %struct.deflate_state* %23, %struct.deflate_state** %10, align 8
  %24 = load i32, i32* @LogDEBUG, align 4
  %25 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %26 = call i32 @log_DumpBp(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %29 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %27, i32* %28, i32 2)
  store %struct.mbuf* %29, %struct.mbuf** %9, align 8
  store %struct.mbuf* %29, %struct.mbuf** %13, align 8
  store i32 2, i32* %15, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* @LogDEBUG, align 4
  %37 = load i32, i32* %17, align 4
  %38 = call i32 (i32, i8*, ...) @log_Printf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %17, align 4
  %40 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %41 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %4
  %45 = load i32, i32* %17, align 4
  %46 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %47 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sle i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %53 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %66

54:                                               ; preds = %44
  %55 = load i32, i32* @LogCCP, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %58 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @log_Printf(i32 %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %62 = call i32 @m_freem(%struct.mbuf* %61)
  %63 = load %struct.ccp*, %struct.ccp** %7, align 8
  %64 = getelementptr inbounds %struct.ccp, %struct.ccp* %63, i32 0, i32 2
  %65 = call i32 @ccp_SendResetReq(i32* %64)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %345

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66, %4
  %68 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %69 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %73 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* @DEFLATE_CHUNK_LEN, align 4
  %75 = load i32, i32* @MB_CCPIN, align 4
  %76 = call i8* @m_get(i32 %74, i32 %75)
  %77 = bitcast i8* %76 to %struct.mbuf*
  store %struct.mbuf* %77, %struct.mbuf** %11, align 8
  store %struct.mbuf* %77, %struct.mbuf** %12, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %79 = call i8* @MBUF_CTOP(%struct.mbuf* %78)
  %80 = bitcast i8* %79 to i32*
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %84 = call i8* @MBUF_CTOP(%struct.mbuf* %83)
  %85 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %86 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  store i8* %84, i8** %87, align 8
  %88 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %92 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %97 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32* %95, i32** %98, align 8
  %99 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %100 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i32 1, i32* %101, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %103 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %15, align 4
  %107 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %108 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %107, i32 0, i32 2
  %109 = load %struct.mbuf*, %struct.mbuf** %108, align 8
  %110 = icmp ne %struct.mbuf* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %67
  %112 = load i32, i32* @Z_NO_FLUSH, align 4
  br label %115

113:                                              ; preds = %67
  %114 = load i32, i32* @Z_SYNC_FLUSH, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  store i32 %116, i32* %18, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %16, align 4
  br label %117

117:                                              ; preds = %115, %262
  %118 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %119 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %118, i32 0, i32 2
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @inflate(%struct.TYPE_2__* %119, i32 %120)
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* @Z_OK, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %153

124:                                              ; preds = %117
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @Z_STREAM_END, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %263

129:                                              ; preds = %124
  %130 = load i32, i32* @LogCCP, align 4
  %131 = load i32, i32* %19, align 4
  %132 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %133 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %129
  %138 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %139 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  br label %143

142:                                              ; preds = %129
  br label %143

143:                                              ; preds = %142, %137
  %144 = phi i8* [ %141, %137 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %142 ]
  %145 = call i32 (i32, i8*, ...) @log_Printf(i32 %130, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %131, i8* %144)
  %146 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %147 = call i32 @m_freem(%struct.mbuf* %146)
  %148 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %149 = call i32 @m_freem(%struct.mbuf* %148)
  %150 = load %struct.ccp*, %struct.ccp** %7, align 8
  %151 = getelementptr inbounds %struct.ccp, %struct.ccp* %150, i32 0, i32 2
  %152 = call i32 @ccp_SendResetReq(i32* %151)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %345

153:                                              ; preds = %117
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %159 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %263

164:                                              ; preds = %157, %153
  %165 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %166 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %164
  %171 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %172 = icmp ne %struct.mbuf* %171, null
  br i1 %172, label %173, label %198

173:                                              ; preds = %170
  %174 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %175 = call %struct.mbuf* @m_free(%struct.mbuf* %174)
  store %struct.mbuf* %175, %struct.mbuf** %9, align 8
  %176 = icmp ne %struct.mbuf* %175, null
  br i1 %176, label %177, label %198

177:                                              ; preds = %173
  %178 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %179 = call i8* @MBUF_CTOP(%struct.mbuf* %178)
  %180 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %181 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 4
  store i8* %179, i8** %182, align 8
  %183 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %184 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %187 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, %185
  store i32 %190, i32* %15, align 4
  %191 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %192 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %191, i32 0, i32 2
  %193 = load %struct.mbuf*, %struct.mbuf** %192, align 8
  %194 = icmp eq %struct.mbuf* %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %177
  %196 = load i32, i32* @Z_SYNC_FLUSH, align 4
  store i32 %196, i32* %18, align 4
  br label %197

197:                                              ; preds = %195, %177
  br label %198

198:                                              ; preds = %197, %173, %170, %164
  %199 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %200 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %262

204:                                              ; preds = %198
  %205 = load i32, i32* %20, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %236

207:                                              ; preds = %204
  %208 = load i32*, i32** %14, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 1
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %229, label %213

213:                                              ; preds = %207
  %214 = load i32*, i32** %14, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %14, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 %216, i32* %218, align 4
  %219 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %220 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i32 -1
  store i32* %223, i32** %221, align 8
  %224 = load i32, i32* @DEFLATE_CHUNK_LEN, align 4
  %225 = sub nsw i32 %224, 1
  %226 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %227 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 2
  store i32 %225, i32* %228, align 8
  br label %235

229:                                              ; preds = %207
  %230 = load i32, i32* @DEFLATE_CHUNK_LEN, align 4
  %231 = sub nsw i32 %230, 2
  %232 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %233 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 2
  store i32 %231, i32* %234, align 8
  br label %235

235:                                              ; preds = %229, %213
  store i32 0, i32* %20, align 4
  br label %261

236:                                              ; preds = %204
  %237 = load i32, i32* @DEFLATE_CHUNK_LEN, align 4
  %238 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %239 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load i32, i32* %16, align 4
  %241 = add nsw i32 %240, %237
  store i32 %241, i32* %16, align 4
  %242 = load i32, i32* @DEFLATE_CHUNK_LEN, align 4
  %243 = load i32, i32* @MB_CCPIN, align 4
  %244 = call i8* @m_get(i32 %242, i32 %243)
  %245 = bitcast i8* %244 to %struct.mbuf*
  %246 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %247 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %246, i32 0, i32 2
  store %struct.mbuf* %245, %struct.mbuf** %247, align 8
  %248 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %249 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %248, i32 0, i32 2
  %250 = load %struct.mbuf*, %struct.mbuf** %249, align 8
  store %struct.mbuf* %250, %struct.mbuf** %11, align 8
  %251 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %252 = call i8* @MBUF_CTOP(%struct.mbuf* %251)
  %253 = bitcast i8* %252 to i32*
  %254 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %255 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 1
  store i32* %253, i32** %256, align 8
  %257 = load i32, i32* @DEFLATE_CHUNK_LEN, align 4
  %258 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %259 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 2
  store i32 %257, i32* %260, align 8
  br label %261

261:                                              ; preds = %236, %235
  br label %262

262:                                              ; preds = %261, %198
  br label %117

263:                                              ; preds = %163, %128
  %264 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %265 = icmp ne %struct.mbuf* %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %268 = call i32 @m_freem(%struct.mbuf* %267)
  br label %269

269:                                              ; preds = %266, %263
  %270 = load i32, i32* %20, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %269
  %273 = load i32, i32* @LogCCP, align 4
  %274 = call i32 (i32, i8*, ...) @log_Printf(i32 %273, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %275 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %276 = call i32 @m_freem(%struct.mbuf* %275)
  %277 = load %struct.ccp*, %struct.ccp** %7, align 8
  %278 = getelementptr inbounds %struct.ccp, %struct.ccp* %277, i32 0, i32 2
  %279 = call i32 @ccp_SendResetReq(i32* %278)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %345

280:                                              ; preds = %269
  %281 = load i32, i32* @DEFLATE_CHUNK_LEN, align 4
  %282 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %283 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = sub nsw i32 %281, %285
  %287 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %288 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 8
  %289 = load i32, i32* %16, align 4
  %290 = add nsw i32 %289, %286
  store i32 %290, i32* %16, align 4
  %291 = load i32*, i32** %14, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = shl i32 %293, 8
  %295 = load i32*, i32** %14, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %294, %297
  %299 = load i32*, i32** %8, align 8
  store i32 %298, i32* %299, align 4
  %300 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %301 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, 2
  store i32 %303, i32* %301, align 4
  %304 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %305 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = sub nsw i32 %306, 2
  store i32 %307, i32* %305, align 8
  %308 = load i32, i32* %16, align 4
  %309 = sub nsw i32 %308, 2
  store i32 %309, i32* %16, align 4
  %310 = load i32, i32* %15, align 4
  %311 = load %struct.ccp*, %struct.ccp** %7, align 8
  %312 = getelementptr inbounds %struct.ccp, %struct.ccp* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, %310
  store i32 %314, i32* %312, align 4
  %315 = load i32, i32* %16, align 4
  %316 = load %struct.ccp*, %struct.ccp** %7, align 8
  %317 = getelementptr inbounds %struct.ccp, %struct.ccp* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, %315
  store i32 %319, i32* %317, align 4
  %320 = load i32, i32* @LogDEBUG, align 4
  %321 = load i32, i32* %15, align 4
  %322 = load i32, i32* %16, align 4
  %323 = load i32*, i32** %8, align 8
  %324 = load i32, i32* %323, align 4
  %325 = call i32 (i32, i8*, ...) @log_Printf(i32 %320, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %321, i32 %322, i32 %324)
  %326 = load i32*, i32** @garbage, align 8
  %327 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %328 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 1
  store i32* %326, i32** %329, align 8
  %330 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %331 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 2
  store i32 8, i32* %332, align 8
  %333 = load i8*, i8** @EMPTY_BLOCK, align 8
  %334 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %335 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 4
  store i8* %333, i8** %336, align 8
  %337 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %338 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 0
  store i32 8, i32* %339, align 8
  %340 = load %struct.deflate_state*, %struct.deflate_state** %10, align 8
  %341 = getelementptr inbounds %struct.deflate_state, %struct.deflate_state* %340, i32 0, i32 2
  %342 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %343 = call i32 @inflate(%struct.TYPE_2__* %341, i32 %342)
  %344 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %344, %struct.mbuf** %5, align 8
  br label %345

345:                                              ; preds = %280, %272, %143, %54
  %346 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %346
}

declare dso_local i32 @log_DumpBp(i32, i8*, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @mbuf_Read(%struct.mbuf*, i32*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @ccp_SendResetReq(i32*) #1

declare dso_local i8* @m_get(i32, i32) #1

declare dso_local i8* @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @inflate(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.mbuf* @m_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
