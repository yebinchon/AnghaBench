; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_genkbd_commonioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_genkbd_commonioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32, i64, %struct.TYPE_26__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32, i32, i32, %struct.TYPE_29__*, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_29__*, i32, i32, i32*, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { i32, i32, i32* }
%struct.TYPE_32__ = type { i32, %struct.TYPE_29__ }
%struct.TYPE_33__ = type { i64, i32, %struct.TYPE_29__* }
%struct.TYPE_31__ = type { i32, i32, i32, i32, %struct.TYPE_29__*, i32 }

@NUM_KEYS = common dso_local global i32 0, align 4
@NUM_STATES = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAXFK = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genkbd_commonioctl(%struct.TYPE_30__* %0, i32 %1, %struct.TYPE_29__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %7, align 8
  %16 = call i32 (...) @spltty()
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %520 [
    i32 135, label %18
    i32 134, label %64
    i32 136, label %70
    i32 138, label %83
    i32 133, label %94
    i32 130, label %176
    i32 132, label %176
    i32 137, label %306
    i32 129, label %332
    i32 139, label %379
    i32 131, label %385
    i32 140, label %405
    i32 128, label %453
  ]

18:                                               ; preds = %3
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %23 = bitcast %struct.TYPE_29__* %22 to %struct.TYPE_31__*
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 10
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %28 = call i32 @strlen(%struct.TYPE_29__* %27)
  %29 = add nsw i32 %28, 1
  %30 = call i32 @imin(i32 %29, i32 8)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 10
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %32, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %35 = bitcast %struct.TYPE_29__* %34 to %struct.TYPE_31__*
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @bcopy(%struct.TYPE_29__* %33, %struct.TYPE_29__* %37, i32 %38)
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %44 = bitcast %struct.TYPE_29__* %43 to %struct.TYPE_31__*
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %50 = bitcast %struct.TYPE_29__* %49 to %struct.TYPE_31__*
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %56 = bitcast %struct.TYPE_29__* %55 to %struct.TYPE_31__*
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %62 = bitcast %struct.TYPE_29__* %61 to %struct.TYPE_31__*
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  br label %524

64:                                               ; preds = %3
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %69 = bitcast %struct.TYPE_29__* %68 to i32*
  store i32 %67, i32* %69, align 4
  br label %524

70:                                               ; preds = %3
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %75 = bitcast %struct.TYPE_29__* %74 to i32*
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %81 = bitcast %struct.TYPE_29__* %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %79, i32* %82, align 4
  br label %524

83:                                               ; preds = %3
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %85, align 8
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %88 = bitcast %struct.TYPE_29__* %87 to i8**
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @copyout(%struct.TYPE_29__* %86, i8* %89, i32 32)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @splx(i32 %91)
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %4, align 4
  br label %527

94:                                               ; preds = %3
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %96, align 8
  store %struct.TYPE_29__* %97, %struct.TYPE_29__** %8, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %99 = bitcast %struct.TYPE_29__* %98 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %99, %struct.TYPE_28__** %9, align 8
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %172, %94
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @NUM_KEYS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %175

109:                                              ; preds = %105
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %138, %109
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @NUM_STATES, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %110
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %126, i32* %137, align 4
  br label %138

138:                                              ; preds = %114
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %14, align 4
  br label %110

141:                                              ; preds = %110
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  store i32 %149, i32* %156, align 4
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %170, i32 0, i32 0
  store i32 %164, i32* %171, align 8
  br label %172

172:                                              ; preds = %141
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  br label %105

175:                                              ; preds = %105
  br label %524

176:                                              ; preds = %3, %3
  %177 = load i32, i32* @M_TEMP, align 4
  %178 = load i32, i32* @M_WAITOK, align 4
  %179 = call %struct.TYPE_29__* @malloc(i32 32, i32 %177, i32 %178)
  store %struct.TYPE_29__* %179, %struct.TYPE_29__** %8, align 8
  %180 = load i32, i32* %6, align 4
  %181 = icmp eq i32 %180, 132
  br i1 %181, label %182, label %261

182:                                              ; preds = %176
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %184 = bitcast %struct.TYPE_29__* %183 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %184, %struct.TYPE_28__** %9, align 8
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  store i32 0, i32* %13, align 4
  br label %190

190:                                              ; preds = %257, %182
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @NUM_KEYS, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %260

194:                                              ; preds = %190
  store i32 0, i32* %14, align 4
  br label %195

195:                                              ; preds = %223, %194
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* @NUM_STATES, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %226

199:                                              ; preds = %195
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %14, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %213, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %211, i32* %222, align 4
  br label %223

223:                                              ; preds = %199
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %14, align 4
  br label %195

226:                                              ; preds = %195
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %228, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i32 0, i32 2
  store i32 %234, i32* %241, align 4
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %251, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %255, i32 0, i32 1
  store i32 %249, i32* %256, align 8
  br label %257

257:                                              ; preds = %226
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %13, align 4
  br label %190

260:                                              ; preds = %190
  br label %277

261:                                              ; preds = %176
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %263 = bitcast %struct.TYPE_29__* %262 to i8**
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %266 = call i32 @copyin(i8* %264, %struct.TYPE_29__* %265, i32 32)
  store i32 %266, i32* %15, align 4
  %267 = load i32, i32* %15, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %261
  %270 = load i32, i32* %12, align 4
  %271 = call i32 @splx(i32 %270)
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %273 = load i32, i32* @M_TEMP, align 4
  %274 = call i32 @free(%struct.TYPE_29__* %272, i32 %273)
  %275 = load i32, i32* %15, align 4
  store i32 %275, i32* %4, align 4
  br label %527

276:                                              ; preds = %261
  br label %277

277:                                              ; preds = %276, %260
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 6
  %280 = load %struct.TYPE_29__*, %struct.TYPE_29__** %279, align 8
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %282 = load i32, i32* @curthread, align 4
  %283 = call i32 @keymap_change_ok(%struct.TYPE_29__* %280, %struct.TYPE_29__* %281, i32 %282)
  store i32 %283, i32* %15, align 4
  %284 = load i32, i32* %15, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %277
  %287 = load i32, i32* %12, align 4
  %288 = call i32 @splx(i32 %287)
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %290 = load i32, i32* @M_TEMP, align 4
  %291 = call i32 @free(%struct.TYPE_29__* %289, i32 %290)
  %292 = load i32, i32* %15, align 4
  store i32 %292, i32* %4, align 4
  br label %527

293:                                              ; preds = %277
  %294 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %294, i32 0, i32 5
  %296 = load %struct.TYPE_29__*, %struct.TYPE_29__** %295, align 8
  %297 = call i32 @bzero(%struct.TYPE_29__* %296, i32 32)
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %299 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %299, i32 0, i32 6
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %300, align 8
  %302 = call i32 @bcopy(%struct.TYPE_29__* %298, %struct.TYPE_29__* %301, i32 32)
  %303 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %304 = load i32, i32* @M_TEMP, align 4
  %305 = call i32 @free(%struct.TYPE_29__* %303, i32 %304)
  br label %524

306:                                              ; preds = %3
  %307 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %308 = bitcast %struct.TYPE_29__* %307 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %308, %struct.TYPE_32__** %10, align 8
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = icmp uge i64 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %306
  %315 = load i32, i32* %12, align 4
  %316 = call i32 @splx(i32 %315)
  %317 = load i32, i32* @EINVAL, align 4
  store i32 %317, i32* %4, align 4
  br label %527

318:                                              ; preds = %306
  %319 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %319, i32 0, i32 6
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %322, align 8
  %324 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %323, i64 %327
  %329 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %329, i32 0, i32 1
  %331 = call i32 @bcopy(%struct.TYPE_29__* %328, %struct.TYPE_29__* %330, i32 32)
  br label %524

332:                                              ; preds = %3
  %333 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %334 = bitcast %struct.TYPE_29__* %333 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %334, %struct.TYPE_32__** %10, align 8
  %335 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = sext i32 %337 to i64
  %339 = icmp uge i64 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %332
  %341 = load i32, i32* %12, align 4
  %342 = call i32 @splx(i32 %341)
  %343 = load i32, i32* @EINVAL, align 4
  store i32 %343, i32* %4, align 4
  br label %527

344:                                              ; preds = %332
  %345 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %345, i32 0, i32 6
  %347 = load %struct.TYPE_29__*, %struct.TYPE_29__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_29__*, %struct.TYPE_29__** %348, align 8
  %350 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %349, i64 %353
  %355 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %356 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %355, i32 0, i32 1
  %357 = load i32, i32* @curthread, align 4
  %358 = call i32 @key_change_ok(%struct.TYPE_29__* %354, %struct.TYPE_29__* %356, i32 %357)
  store i32 %358, i32* %15, align 4
  %359 = load i32, i32* %15, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %344
  %362 = load i32, i32* %12, align 4
  %363 = call i32 @splx(i32 %362)
  %364 = load i32, i32* %15, align 4
  store i32 %364, i32* %4, align 4
  br label %527

365:                                              ; preds = %344
  %366 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %368, i32 0, i32 6
  %370 = load %struct.TYPE_29__*, %struct.TYPE_29__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_29__*, %struct.TYPE_29__** %371, align 8
  %373 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %372, i64 %376
  %378 = call i32 @bcopy(%struct.TYPE_29__* %367, %struct.TYPE_29__* %377, i32 32)
  br label %524

379:                                              ; preds = %3
  %380 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %380, i32 0, i32 5
  %382 = load %struct.TYPE_29__*, %struct.TYPE_29__** %381, align 8
  %383 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %384 = call i32 @bcopy(%struct.TYPE_29__* %382, %struct.TYPE_29__* %383, i32 32)
  br label %524

385:                                              ; preds = %3
  %386 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %386, i32 0, i32 5
  %388 = load %struct.TYPE_29__*, %struct.TYPE_29__** %387, align 8
  %389 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %390 = bitcast %struct.TYPE_29__* %389 to i32*
  %391 = load i32, i32* @curthread, align 4
  %392 = call i32 @accent_change_ok(%struct.TYPE_29__* %388, i32* %390, i32 %391)
  store i32 %392, i32* %15, align 4
  %393 = load i32, i32* %15, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %385
  %396 = load i32, i32* %12, align 4
  %397 = call i32 @splx(i32 %396)
  %398 = load i32, i32* %15, align 4
  store i32 %398, i32* %4, align 4
  br label %527

399:                                              ; preds = %385
  %400 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %401 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %401, i32 0, i32 5
  %403 = load %struct.TYPE_29__*, %struct.TYPE_29__** %402, align 8
  %404 = call i32 @bcopy(%struct.TYPE_29__* %400, %struct.TYPE_29__* %403, i32 32)
  br label %524

405:                                              ; preds = %3
  %406 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %407 = bitcast %struct.TYPE_29__* %406 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %407, %struct.TYPE_33__** %11, align 8
  %408 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %409 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %411, i32 0, i32 3
  %413 = load i64, i64* %412, align 8
  %414 = icmp uge i64 %410, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %405
  %416 = load i32, i32* %12, align 4
  %417 = call i32 @splx(i32 %416)
  %418 = load i32, i32* @EINVAL, align 4
  store i32 %418, i32* %4, align 4
  br label %527

419:                                              ; preds = %405
  %420 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %420, i32 0, i32 4
  %422 = load %struct.TYPE_26__*, %struct.TYPE_26__** %421, align 8
  %423 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %424 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %422, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %426, i32 0, i32 1
  %428 = load %struct.TYPE_29__*, %struct.TYPE_29__** %427, align 8
  %429 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %430 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %429, i32 0, i32 2
  %431 = load %struct.TYPE_29__*, %struct.TYPE_29__** %430, align 8
  %432 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %432, i32 0, i32 4
  %434 = load %struct.TYPE_26__*, %struct.TYPE_26__** %433, align 8
  %435 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %436 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %434, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = call i32 @bcopy(%struct.TYPE_29__* %428, %struct.TYPE_29__* %431, i32 %440)
  %442 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %442, i32 0, i32 4
  %444 = load %struct.TYPE_26__*, %struct.TYPE_26__** %443, align 8
  %445 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %446 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %444, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %452 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %451, i32 0, i32 1
  store i32 %450, i32* %452, align 8
  br label %524

453:                                              ; preds = %3
  %454 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %455 = bitcast %struct.TYPE_29__* %454 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %455, %struct.TYPE_33__** %11, align 8
  %456 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %457 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %459, i32 0, i32 3
  %461 = load i64, i64* %460, align 8
  %462 = icmp uge i64 %458, %461
  br i1 %462, label %463, label %467

463:                                              ; preds = %453
  %464 = load i32, i32* %12, align 4
  %465 = call i32 @splx(i32 %464)
  %466 = load i32, i32* @EINVAL, align 4
  store i32 %466, i32* %4, align 4
  br label %527

467:                                              ; preds = %453
  %468 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %468, i32 0, i32 4
  %470 = load %struct.TYPE_26__*, %struct.TYPE_26__** %469, align 8
  %471 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %472 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %470, i64 %473
  %475 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %476 = load i32, i32* @curthread, align 4
  %477 = call i32 @fkey_change_ok(%struct.TYPE_26__* %474, %struct.TYPE_33__* %475, i32 %476)
  store i32 %477, i32* %15, align 4
  %478 = load i32, i32* %15, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %484

480:                                              ; preds = %467
  %481 = load i32, i32* %12, align 4
  %482 = call i32 @splx(i32 %481)
  %483 = load i32, i32* %15, align 4
  store i32 %483, i32* %4, align 4
  br label %527

484:                                              ; preds = %467
  %485 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %486 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @MAXFK, align 4
  %489 = call i32 @min(i32 %487, i32 %488)
  %490 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %490, i32 0, i32 4
  %492 = load %struct.TYPE_26__*, %struct.TYPE_26__** %491, align 8
  %493 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %494 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %493, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %492, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %496, i32 0, i32 0
  store i32 %489, i32* %497, align 8
  %498 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %499 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %498, i32 0, i32 2
  %500 = load %struct.TYPE_29__*, %struct.TYPE_29__** %499, align 8
  %501 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %502 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %501, i32 0, i32 4
  %503 = load %struct.TYPE_26__*, %struct.TYPE_26__** %502, align 8
  %504 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %505 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %503, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %507, i32 0, i32 1
  %509 = load %struct.TYPE_29__*, %struct.TYPE_29__** %508, align 8
  %510 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %511 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %510, i32 0, i32 4
  %512 = load %struct.TYPE_26__*, %struct.TYPE_26__** %511, align 8
  %513 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %514 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %512, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = call i32 @bcopy(%struct.TYPE_29__* %500, %struct.TYPE_29__* %509, i32 %518)
  br label %524

520:                                              ; preds = %3
  %521 = load i32, i32* %12, align 4
  %522 = call i32 @splx(i32 %521)
  %523 = load i32, i32* @ENOIOCTL, align 4
  store i32 %523, i32* %4, align 4
  br label %527

524:                                              ; preds = %484, %419, %399, %379, %365, %318, %293, %175, %70, %64, %18
  %525 = load i32, i32* %12, align 4
  %526 = call i32 @splx(i32 %525)
  store i32 0, i32* %4, align 4
  br label %527

527:                                              ; preds = %524, %520, %480, %463, %415, %395, %361, %340, %314, %286, %269, %83
  %528 = load i32, i32* %4, align 4
  ret i32 %528
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @strlen(%struct.TYPE_29__*) #1

declare dso_local i32 @bcopy(%struct.TYPE_29__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @copyout(%struct.TYPE_29__*, i8*, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local %struct.TYPE_29__* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i8*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @keymap_change_ok(%struct.TYPE_29__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @key_change_ok(%struct.TYPE_29__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @accent_change_ok(%struct.TYPE_29__*, i32*, i32) #1

declare dso_local i32 @fkey_change_ok(%struct.TYPE_26__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
