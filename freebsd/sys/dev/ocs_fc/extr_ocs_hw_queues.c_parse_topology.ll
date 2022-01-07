; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_parse_topology.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_parse_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8*, i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i32*, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TOK_COLON = common dso_local global i32 0, align 4
@TOK_EQUALS = common dso_local global i32 0, align 4
@TOK_NUMBER_LIST = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TOK_LPAREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_12__*)* @parse_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_topology(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i64 %23
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %8, align 8
  br label %25

25:                                               ; preds = %417, %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 %40
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %9, align 8
  %42 = icmp ne %struct.TYPE_11__* %41, null
  br label %43

43:                                               ; preds = %33, %25
  %44 = phi i1 [ false, %25 ], [ %42, %33 ]
  br i1 %44, label %45, label %418

45:                                               ; preds = %43
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %419

55:                                               ; preds = %45
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 %62
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %8, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %413 [
    i32 133, label %68
    i32 136, label %250
    i32 135, label %346
    i32 134, label %346
    i32 132, label %408
  ]

68:                                               ; preds = %55
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @subtype2qtop(i32 %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  store i32 0, i32* %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  store i32 0, i32* %83, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %239, %68
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sle i32 %96, %99
  br i1 %100, label %101, label %240

101:                                              ; preds = %92
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %108
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %9, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TOK_COLON, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %238

116:                                              ; preds = %101
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 136
  br i1 %121, label %122, label %238

122:                                              ; preds = %116
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 2
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @TOK_EQUALS, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %238

129:                                              ; preds = %122
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 3
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 135
  br i1 %134, label %148, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 3
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 134
  br i1 %140, label %148, label %141

141:                                              ; preds = %135
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i64 3
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @TOK_NUMBER_LIST, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %238

148:                                              ; preds = %141, %135, %129
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i64 1
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  switch i32 %152, label %232 [
    i32 129, label %153
    i32 131, label %161
    i32 128, label %169
    i32 130, label %177
  ]

153:                                              ; preds = %148
  %154 = load i32*, i32** %5, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i64 3
  %158 = call i32 @tok_getnumber(i32* %154, %struct.TYPE_12__* %155, %struct.TYPE_11__* %157)
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  br label %233

161:                                              ; preds = %148
  %162 = load i32*, i32** %5, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 3
  %166 = call i32 @tok_getnumber(i32* %162, %struct.TYPE_12__* %163, %struct.TYPE_11__* %165)
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 4
  br label %233

169:                                              ; preds = %148
  %170 = load i32*, i32** %5, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i64 3
  %174 = call i32 @tok_getnumber(i32* %170, %struct.TYPE_12__* %171, %struct.TYPE_11__* %173)
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  br label %233

177:                                              ; preds = %148
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 3
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @TOK_NUMBER_LIST, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %222

184:                                              ; preds = %177
  store i32 0, i32* %10, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i64 3
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %11, align 8
  br label %189

189:                                              ; preds = %217, %184
  %190 = load i8*, i8** %11, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i8*, i8** %11, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 0
  br label %197

197:                                              ; preds = %192, %189
  %198 = phi i1 [ false, %189 ], [ %196, %192 ]
  br i1 %198, label %199, label %218

199:                                              ; preds = %197
  %200 = load i8*, i8** %11, align 8
  %201 = call i32 @ocs_strtoul(i8* %200, i32 0, i32 0)
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp slt i32 %202, 32
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load i32, i32* %12, align 4
  %206 = shl i32 1, %205
  %207 = load i32, i32* %10, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %204, %199
  %210 = load i8*, i8** %11, align 8
  %211 = call i8* @ocs_strchr(i8* %210, i8 signext 44)
  store i8* %211, i8** %11, align 8
  %212 = load i8*, i8** %11, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i8*, i8** %11, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %11, align 8
  br label %217

217:                                              ; preds = %214, %209
  br label %189

218:                                              ; preds = %197
  %219 = load i32, i32* %10, align 4
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 4
  br label %231

222:                                              ; preds = %177
  %223 = load i32*, i32** %5, align 8
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i64 3
  %227 = call i32 @tok_getnumber(i32* %223, %struct.TYPE_12__* %224, %struct.TYPE_11__* %226)
  %228 = shl i32 1, %227
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 4
  store i32 %228, i32* %230, align 4
  br label %231

231:                                              ; preds = %222, %218
  br label %233

232:                                              ; preds = %148
  br label %233

233:                                              ; preds = %232, %231, %169, %161, %153
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 4
  store i32 %237, i32* %235, align 8
  br label %239

238:                                              ; preds = %141, %122, %116, %101
  br label %240

239:                                              ; preds = %233
  br label %92

240:                                              ; preds = %238, %92
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 4
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  br label %417

250:                                              ; preds = %55
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, 5
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp sle i32 %254, %257
  br i1 %258, label %259, label %341

259:                                              ; preds = %250
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i64 1
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @TOK_COLON, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %341

266:                                              ; preds = %259
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i64 2
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 133
  br i1 %271, label %272, label %341

272:                                              ; preds = %266
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i64 3
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @TOK_EQUALS, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %341

279:                                              ; preds = %272
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i64 4
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp eq i32 %283, 135
  br i1 %284, label %291, label %285

285:                                              ; preds = %279
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i64 4
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = icmp eq i32 %289, 134
  br i1 %290, label %291, label %341

291:                                              ; preds = %285, %279
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i64 2
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = call i8* @subtype2qtop(i32 %295)
  %297 = ptrtoint i8* %296 to i64
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 0
  store i64 %297, i64* %299, align 8
  %300 = load i32, i32* @TRUE, align 4
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 5
  store i32 %300, i32* %302, align 8
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i64 0
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  switch i32 %306, label %331 [
    i32 129, label %307
    i32 131, label %315
    i32 128, label %323
  ]

307:                                              ; preds = %291
  %308 = load i32*, i32** %5, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i64 4
  %312 = call i32 @tok_getnumber(i32* %308, %struct.TYPE_12__* %309, %struct.TYPE_11__* %311)
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 1
  store i32 %312, i32* %314, align 8
  br label %332

315:                                              ; preds = %291
  %316 = load i32*, i32** %5, align 8
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i64 4
  %320 = call i32 @tok_getnumber(i32* %316, %struct.TYPE_12__* %317, %struct.TYPE_11__* %319)
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 2
  store i32 %320, i32* %322, align 4
  br label %332

323:                                              ; preds = %291
  %324 = load i32*, i32** %5, align 8
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i64 4
  %328 = call i32 @tok_getnumber(i32* %324, %struct.TYPE_12__* %325, %struct.TYPE_11__* %327)
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 3
  store i32 %328, i32* %330, align 8
  br label %332

331:                                              ; preds = %291
  br label %332

332:                                              ; preds = %331, %323, %315, %307
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 8
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %339, 5
  store i32 %340, i32* %338, align 8
  br label %345

341:                                              ; preds = %285, %272, %266, %259, %250
  %342 = load i32*, i32** %5, align 8
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %344 = call i32 @tok_syntax(i32* %342, %struct.TYPE_10__* %343)
  store i32 -1, i32* %4, align 4
  br label %419

345:                                              ; preds = %332
  br label %417

346:                                              ; preds = %55, %55
  store i32 1, i32* %13, align 4
  %347 = load i32*, i32** %5, align 8
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %350 = call i32 @tok_getnumber(i32* %347, %struct.TYPE_12__* %348, %struct.TYPE_11__* %349)
  store i32 %350, i32* %13, align 4
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i64 1
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @TOK_LPAREN, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %407

357:                                              ; preds = %346
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = add nsw i32 %360, 2
  store i32 %361, i32* %359, align 8
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  store i32 %364, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %365

365:                                              ; preds = %403, %357
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* %13, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %406

369:                                              ; preds = %365
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  store i32 %372, i32* %16, align 4
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 3
  %378 = load i32*, i32** %377, align 8
  %379 = call i32 @ARRAY_SIZE(i32* %378)
  %380 = icmp slt i32 %375, %379
  br i1 %380, label %381, label %392

381:                                              ; preds = %369
  %382 = load i32, i32* %14, align 4
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 3
  %385 = load i32*, i32** %384, align 8
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %387, align 8
  %390 = sext i32 %388 to i64
  %391 = getelementptr inbounds i32, i32* %385, i64 %390
  store i32 %382, i32* %391, align 4
  br label %392

392:                                              ; preds = %381, %369
  %393 = load i32, i32* %15, align 4
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 0
  store i32 %393, i32* %395, align 8
  %396 = load i32*, i32** %5, align 8
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %398 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %399 = call i32 @parse_topology(i32* %396, %struct.TYPE_10__* %397, %struct.TYPE_12__* %398)
  %400 = load i32, i32* %16, align 4
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 2
  store i32 %400, i32* %402, align 8
  br label %403

403:                                              ; preds = %392
  %404 = load i32, i32* %14, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %14, align 4
  br label %365

406:                                              ; preds = %365
  br label %407

407:                                              ; preds = %406, %346
  br label %417

408:                                              ; preds = %55
  %409 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %410, align 8
  store i32 0, i32* %4, align 4
  br label %419

413:                                              ; preds = %55
  %414 = load i32*, i32** %5, align 8
  %415 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %416 = call i32 @tok_syntax(i32* %414, %struct.TYPE_10__* %415)
  store i32 -1, i32* %4, align 4
  br label %419

417:                                              ; preds = %407, %345, %240
  br label %25

418:                                              ; preds = %43
  store i32 0, i32* %4, align 4
  br label %419

419:                                              ; preds = %418, %413, %408, %341, %54
  %420 = load i32, i32* %4, align 4
  ret i32 %420
}

declare dso_local i8* @subtype2qtop(i32) #1

declare dso_local i32 @tok_getnumber(i32*, %struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ocs_strtoul(i8*, i32, i32) #1

declare dso_local i8* @ocs_strchr(i8*, i8 signext) #1

declare dso_local i32 @tok_syntax(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
