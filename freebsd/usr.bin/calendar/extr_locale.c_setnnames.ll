; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_locale.c_setnnames.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_locale.c_setnnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32* }
%struct.TYPE_8__ = type { i8*, i32* }
%struct.TYPE_5__ = type { i8*, i32* }
%struct.TYPE_7__ = type { i8*, i32* }
%struct.tm = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@ndays = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%A\00", align 1
@fndays = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%b\00", align 1
@nmonths = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%B\00", align 1
@fnmonths = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setnnames() #0 {
  %1 = alloca [80 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm, align 4
  %5 = call i32 @memset(%struct.tm* %4, i32 0, i32 8)
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %134, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 7
  br i1 %8, label %9, label %137

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %13 = call i32 @strftime(i8* %12, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.tm* %4)
  %14 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %15 = call i8* @strlen(i8* %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %31, %9
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isspace(i8 zeroext %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %20, %17
  %29 = phi i1 [ false, %17 ], [ %27, %20 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %3, align 4
  br label %17

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ndays, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ndays, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @free(i32* %51)
  br label %53

53:                                               ; preds = %45, %34
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %55 = call i8* @strdup(i8* %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ndays, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32* %56, i32** %61, align 8
  %62 = icmp eq i32* %56, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %53
  %66 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %67 = call i8* @strlen(i8* %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ndays, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i8* %67, i8** %72, align 8
  %73 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %74 = call i32 @strftime(i8* %73, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %4)
  %75 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %76 = call i8* @strlen(i8* %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %92, %65
  %79 = load i32, i32* %3, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @isspace(i8 zeroext %86)
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %81, %78
  %90 = phi i1 [ false, %78 ], [ %88, %81 ]
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %3, align 4
  br label %78

95:                                               ; preds = %89
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 %97
  store i8 0, i8* %98, align 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fndays, align 8
  %100 = load i32, i32* %2, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %95
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fndays, align 8
  %108 = load i32, i32* %2, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @free(i32* %112)
  br label %114

114:                                              ; preds = %106, %95
  %115 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %116 = call i8* @strdup(i8* %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fndays, align 8
  %119 = load i32, i32* %2, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32* %117, i32** %122, align 8
  %123 = icmp eq i32* %117, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %114
  %127 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %128 = call i8* @strlen(i8* %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fndays, align 8
  %130 = load i32, i32* %2, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  store i8* %128, i8** %133, align 8
  br label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %2, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %2, align 4
  br label %6

137:                                              ; preds = %6
  %138 = call i32 @memset(%struct.tm* %4, i32 0, i32 8)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %267, %137
  %140 = load i32, i32* %2, align 4
  %141 = icmp slt i32 %140, 12
  br i1 %141, label %142, label %270

142:                                              ; preds = %139
  %143 = load i32, i32* %2, align 4
  %144 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  store i32 %143, i32* %144, align 4
  %145 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %146 = call i32 @strftime(i8* %145, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %4)
  %147 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %148 = call i8* @strlen(i8* %147)
  %149 = ptrtoint i8* %148 to i32
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %164, %142
  %151 = load i32, i32* %3, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load i32, i32* %3, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = call i64 @isspace(i8 zeroext %158)
  %160 = icmp ne i64 %159, 0
  br label %161

161:                                              ; preds = %153, %150
  %162 = phi i1 [ false, %150 ], [ %160, %153 ]
  br i1 %162, label %163, label %167

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %3, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %3, align 4
  br label %150

167:                                              ; preds = %161
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 %169
  store i8 0, i8* %170, align 1
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nmonths, align 8
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %186

178:                                              ; preds = %167
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nmonths, align 8
  %180 = load i32, i32* %2, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @free(i32* %184)
  br label %186

186:                                              ; preds = %178, %167
  %187 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %188 = call i8* @strdup(i8* %187)
  %189 = bitcast i8* %188 to i32*
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nmonths, align 8
  %191 = load i32, i32* %2, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  store i32* %189, i32** %194, align 8
  %195 = icmp eq i32* %189, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %186
  %197 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %186
  %199 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %200 = call i8* @strlen(i8* %199)
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nmonths, align 8
  %202 = load i32, i32* %2, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  store i8* %200, i8** %205, align 8
  %206 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %207 = call i32 @strftime(i8* %206, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %4)
  %208 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %209 = call i8* @strlen(i8* %208)
  %210 = ptrtoint i8* %209 to i32
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %225, %198
  %212 = load i32, i32* %3, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %211
  %215 = load i32, i32* %3, align 4
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = call i64 @isspace(i8 zeroext %219)
  %221 = icmp ne i64 %220, 0
  br label %222

222:                                              ; preds = %214, %211
  %223 = phi i1 [ false, %211 ], [ %221, %214 ]
  br i1 %223, label %224, label %228

224:                                              ; preds = %222
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %3, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %3, align 4
  br label %211

228:                                              ; preds = %222
  %229 = load i32, i32* %3, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 %230
  store i8 0, i8* %231, align 1
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fnmonths, align 8
  %233 = load i32, i32* %2, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %247

239:                                              ; preds = %228
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fnmonths, align 8
  %241 = load i32, i32* %2, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @free(i32* %245)
  br label %247

247:                                              ; preds = %239, %228
  %248 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %249 = call i8* @strdup(i8* %248)
  %250 = bitcast i8* %249 to i32*
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fnmonths, align 8
  %252 = load i32, i32* %2, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  store i32* %250, i32** %255, align 8
  %256 = icmp eq i32* %250, null
  br i1 %256, label %257, label %259

257:                                              ; preds = %247
  %258 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %259

259:                                              ; preds = %257, %247
  %260 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %261 = call i8* @strlen(i8* %260)
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fnmonths, align 8
  %263 = load i32, i32* %2, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  store i8* %261, i8** %266, align 8
  br label %267

267:                                              ; preds = %259
  %268 = load i32, i32* %2, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %2, align 4
  br label %139

270:                                              ; preds = %139
  ret void
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
