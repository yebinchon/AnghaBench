; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_fetch_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_fetch_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dcons_ch, %struct.dcons_ch }
%struct.dcons_ch = type { i32, i64, i32, i32 }
%struct.dcons_buf = type { i64, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@DCONS_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"read header failed\00", align 1
@DCONS_MAGIC = common dso_local global i32 0, align 4
@F_USE_CROM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"wrong magic 0x%08x\00", align 1
@DCONS_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"wrong version %ld,%d\00", align 1
@DCONS_NPORT = common dso_local global i32 0, align 4
@DCONS_GEN_SHIFT = common dso_local global i32 0, align 4
@DCONS_POS_MASK = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"port %d   size offset   gen   pos\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"output: %5d %6ld %5d %5d\0Ainput : %5d %6ld %5d %5d\0A\00", align 1
@F_REPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcons_state*)* @dconschat_fetch_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dconschat_fetch_header(%struct.dcons_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dcons_state*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.dcons_buf, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcons_ch*, align 8
  %8 = alloca %struct.dcons_ch*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dcons_state* %0, %struct.dcons_state** %3, align 8
  %11 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %12 = load i32, i32* @DCONS_HEADER_SIZE, align 4
  %13 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %14 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @dread(%struct.dcons_state* %11, %struct.dcons_buf* %5, i32 %12, i64 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %20 = call i32 @dconschat_ready(%struct.dcons_state* %19, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %260

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @DCONS_MAGIC, align 4
  %25 = call i64 @htonl(i32 %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %29 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @F_USE_CROM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %36 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %27
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %39 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %38, i32 64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %45 = call i32 @dconschat_ready(%struct.dcons_state* %43, i32 0, i8* %44)
  store i32 -1, i32* %2, align 4
  br label %260

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ntohl(i32 %48)
  %50 = load i32, i32* @DCONS_VERSION, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %54 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ntohl(i32 %55)
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load i32, i32* @DCONS_VERSION, align 4
  %60 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %53, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %58, i32 %59)
  %61 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %63 = call i32 @dconschat_ready(%struct.dcons_state* %61, i32 0, i8* %62)
  store i32 -1, i32* %2, align 4
  br label %260

64:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %254, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @DCONS_NPORT, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %257

69:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  %70 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %71 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store %struct.dcons_ch* %76, %struct.dcons_ch** %7, align 8
  %77 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %78 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ntohl(i32 %85)
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %79, %87
  store i64 %88, i64* %9, align 8
  %89 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ntohl(i32 %94)
  %96 = load %struct.dcons_ch*, %struct.dcons_ch** %7, align 8
  %97 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.dcons_ch*, %struct.dcons_ch** %7, align 8
  %100 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %103, label %129

103:                                              ; preds = %69
  store i32 1, i32* %10, align 4
  %104 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ntohl(i32 %109)
  %111 = load i32, i32* @DCONS_GEN_SHIFT, align 4
  %112 = ashr i32 %110, %111
  %113 = load %struct.dcons_ch*, %struct.dcons_ch** %7, align 8
  %114 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ntohl(i32 %120)
  %122 = load i32, i32* @DCONS_POS_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load %struct.dcons_ch*, %struct.dcons_ch** %7, align 8
  %125 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.dcons_ch*, %struct.dcons_ch** %7, align 8
  %128 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %103, %69
  %130 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %131 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store %struct.dcons_ch* %136, %struct.dcons_ch** %8, align 8
  %137 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ntohl(i32 %142)
  %144 = load %struct.dcons_ch*, %struct.dcons_ch** %8, align 8
  %145 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ntohl(i32 %151)
  %153 = load i32, i32* @DCONS_GEN_SHIFT, align 4
  %154 = ashr i32 %152, %153
  %155 = load %struct.dcons_ch*, %struct.dcons_ch** %8, align 8
  %156 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ntohl(i32 %162)
  %164 = load i32, i32* @DCONS_POS_MASK, align 4
  %165 = and i32 %163, %164
  %166 = load %struct.dcons_ch*, %struct.dcons_ch** %8, align 8
  %167 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %169 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ntohl(i32 %176)
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %170, %178
  %180 = load %struct.dcons_ch*, %struct.dcons_ch** %8, align 8
  %181 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %180, i32 0, i32 1
  store i64 %179, i64* %181, align 8
  %182 = load i64, i64* @verbose, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %220

184:                                              ; preds = %129
  %185 = load i32, i32* %6, align 4
  %186 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %185)
  %187 = load %struct.dcons_ch*, %struct.dcons_ch** %7, align 8
  %188 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @ntohl(i32 %195)
  %197 = load %struct.dcons_ch*, %struct.dcons_ch** %7, align 8
  %198 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.dcons_ch*, %struct.dcons_ch** %7, align 8
  %201 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.dcons_ch*, %struct.dcons_ch** %8, align 8
  %204 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %5, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ntohl(i32 %211)
  %213 = load %struct.dcons_ch*, %struct.dcons_ch** %8, align 8
  %214 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.dcons_ch*, %struct.dcons_ch** %8, align 8
  %217 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %189, i32 %196, i32 %199, i32 %202, i32 %205, i32 %212, i32 %215, i32 %218)
  br label %220

220:                                              ; preds = %184, %129
  %221 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %222 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %221, i32 0, i32 2
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i64 %225
  %227 = call i64 @IS_CONSOLE(%struct.TYPE_2__* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %253

229:                                              ; preds = %220
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %229
  %233 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %234 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @F_REPLAY, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %232
  %240 = load %struct.dcons_ch*, %struct.dcons_ch** %7, align 8
  %241 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load %struct.dcons_ch*, %struct.dcons_ch** %7, align 8
  %246 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %246, align 8
  br label %252

249:                                              ; preds = %239
  %250 = load %struct.dcons_ch*, %struct.dcons_ch** %7, align 8
  %251 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %250, i32 0, i32 3
  store i32 0, i32* %251, align 4
  br label %252

252:                                              ; preds = %249, %244
  br label %253

253:                                              ; preds = %252, %232, %229, %220
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  br label %65

257:                                              ; preds = %65
  %258 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %259 = call i32 @dconschat_ready(%struct.dcons_state* %258, i32 1, i8* null)
  store i32 0, i32* %2, align 4
  br label %260

260:                                              ; preds = %257, %52, %37, %18
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local i64 @dread(%struct.dcons_state*, %struct.dcons_buf*, i32, i64) #1

declare dso_local i32 @dconschat_ready(%struct.dcons_state*, i32, i8*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @IS_CONSOLE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
