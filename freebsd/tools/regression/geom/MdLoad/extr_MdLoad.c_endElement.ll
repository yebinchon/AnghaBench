; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/geom/MdLoad/extr_MdLoad.c_endElement.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/geom/MdLoad/extr_MdLoad.c_endElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simdisk_softc = type { i32, i32, %struct.TYPE_2__*, i8*, i8*, i8*, i64 }
%struct.TYPE_2__ = type { i32*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sectorsize\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"strtoul croaked on sectorsize\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mediasize\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"strtoul croaked on mediasize\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"fwsectors\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"strtoul croaked on fwsectors\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"fwheads\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"strtoul croaked on fwheads\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"fwcylinders\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"strtoul croaked on fwcylinders\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"strtoul croaked on offset\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"hexdata\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"I croaked on hexdata %d:(%02x)\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"sector\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"diskimage\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"<%s>[[%s]]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @endElement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @endElement(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.simdisk_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.simdisk_softc*
  store %struct.simdisk_softc* %12, %struct.simdisk_softc** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %18 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sbuf_clear(i32 %19)
  br label %307

21:                                               ; preds = %2
  %22 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %23 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sbuf_finish(i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %21
  %30 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %31 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @sbuf_data(i32 %32)
  %34 = call i8* @strtoul(i8* %33, i8** %6, i32 0)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %37 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %29
  br label %302

45:                                               ; preds = %21
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %45
  %50 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %51 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @sbuf_data(i32 %52)
  %54 = call i8* @strtoull(i8* %53, i8** %6, i32 0)
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %10, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %49
  %63 = load i64, i64* %10, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %68 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %67, i32 0, i32 6
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %62
  br label %301

70:                                               ; preds = %45
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @strcasecmp(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %70
  %75 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %76 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @sbuf_data(i32 %77)
  %79 = call i8* @strtoul(i8* %78, i8** %6, i32 0)
  %80 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %81 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %74
  br label %300

89:                                               ; preds = %70
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @strcasecmp(i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %89
  %94 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %95 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @sbuf_data(i32 %96)
  %98 = call i8* @strtoul(i8* %97, i8** %6, i32 0)
  %99 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %100 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %93
  br label %299

108:                                              ; preds = %89
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @strcasecmp(i8* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %108
  %113 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %114 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @sbuf_data(i32 %115)
  %117 = call i8* @strtoul(i8* %116, i8** %6, i32 0)
  %118 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %119 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %112
  br label %298

127:                                              ; preds = %108
  %128 = load i8*, i8** %4, align 8
  %129 = call i32 @strcasecmp(i8* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %127
  %132 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %133 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @sbuf_data(i32 %134)
  %136 = call i8* @strtoull(i8* %135, i8** %6, i32 0)
  %137 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %138 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  store i8* %136, i8** %140, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %131
  %146 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %131
  br label %297

148:                                              ; preds = %127
  %149 = load i8*, i8** %4, align 8
  %150 = call i32 @strcasecmp(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %169, label %152

152:                                              ; preds = %148
  %153 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %154 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @sbuf_data(i32 %155)
  %157 = call i8* @strtoul(i8* %156, i8** null, i32 16)
  %158 = ptrtoint i8* %157 to i32
  store i32 %158, i32* %9, align 4
  %159 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %160 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %166 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @memset(i32* %163, i32 %164, i32 %167)
  br label %296

169:                                              ; preds = %148
  %170 = load i8*, i8** %4, align 8
  %171 = call i32 @strcasecmp(i8* %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %263, label %173

173:                                              ; preds = %169
  %174 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %175 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %174, i32 0, i32 2
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %7, align 8
  %179 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %180 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @sbuf_data(i32 %181)
  store i8* %182, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %183

183:                                              ; preds = %259, %173
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %186 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %262

189:                                              ; preds = %183
  %190 = load i8*, i8** %6, align 8
  %191 = load i8, i8* %190, align 1
  %192 = call i32 @isxdigit(i8 signext %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %8, align 4
  %196 = load i8*, i8** %6, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %194, %189
  %201 = load i8*, i8** %6, align 8
  %202 = load i8, i8* %201, align 1
  %203 = call i64 @isdigit(i8 signext %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load i8*, i8** %6, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = sub nsw i32 %208, 48
  %210 = shl i32 %209, 4
  store i32 %210, i32* %9, align 4
  br label %219

211:                                              ; preds = %200
  %212 = load i8*, i8** %6, align 8
  %213 = load i8, i8* %212, align 1
  %214 = call signext i8 @tolower(i8 signext %213)
  %215 = sext i8 %214 to i32
  %216 = sub nsw i32 %215, 97
  %217 = add nsw i32 %216, 10
  %218 = shl i32 %217, 4
  store i32 %218, i32* %9, align 4
  br label %219

219:                                              ; preds = %211, %205
  %220 = load i8*, i8** %6, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %6, align 8
  %222 = load i8*, i8** %6, align 8
  %223 = load i8, i8* %222, align 1
  %224 = call i32 @isxdigit(i8 signext %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %219
  %227 = load i32, i32* %8, align 4
  %228 = load i8*, i8** %6, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %226, %219
  %233 = load i8*, i8** %6, align 8
  %234 = load i8, i8* %233, align 1
  %235 = call i64 @isdigit(i8 signext %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %232
  %238 = load i8*, i8** %6, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = sub nsw i32 %240, 48
  %242 = load i32, i32* %9, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %9, align 4
  br label %253

244:                                              ; preds = %232
  %245 = load i8*, i8** %6, align 8
  %246 = load i8, i8* %245, align 1
  %247 = call signext i8 @tolower(i8 signext %246)
  %248 = sext i8 %247 to i32
  %249 = sub nsw i32 %248, 97
  %250 = add nsw i32 %249, 10
  %251 = load i32, i32* %9, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %9, align 4
  br label %253

253:                                              ; preds = %244, %237
  %254 = load i8*, i8** %6, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %6, align 8
  %256 = load i32, i32* %9, align 4
  %257 = load i32*, i32** %7, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %7, align 8
  store i32 %256, i32* %257, align 4
  br label %259

259:                                              ; preds = %253
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %183

262:                                              ; preds = %183
  br label %295

263:                                              ; preds = %169
  %264 = load i8*, i8** %4, align 8
  %265 = call i32 @strcasecmp(i8* %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %275, label %267

267:                                              ; preds = %263
  %268 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %269 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %270 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %269, i32 0, i32 2
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** %270, align 8
  %272 = call i32 @g_simdisk_insertsector(%struct.simdisk_softc* %268, %struct.TYPE_2__* %271)
  %273 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %274 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %273, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %274, align 8
  br label %294

275:                                              ; preds = %263
  %276 = load i8*, i8** %4, align 8
  %277 = call i32 @strcasecmp(i8* %276, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %275
  br label %293

280:                                              ; preds = %275
  %281 = load i8*, i8** %4, align 8
  %282 = call i32 @strcasecmp(i8* %281, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %280
  br label %292

285:                                              ; preds = %280
  %286 = load i8*, i8** %4, align 8
  %287 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %288 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call i8* @sbuf_data(i32 %289)
  %291 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* %286, i8* %290)
  br label %292

292:                                              ; preds = %285, %284
  br label %293

293:                                              ; preds = %292, %279
  br label %294

294:                                              ; preds = %293, %267
  br label %295

295:                                              ; preds = %294, %262
  br label %296

296:                                              ; preds = %295, %152
  br label %297

297:                                              ; preds = %296, %147
  br label %298

298:                                              ; preds = %297, %126
  br label %299

299:                                              ; preds = %298, %107
  br label %300

300:                                              ; preds = %299, %88
  br label %301

301:                                              ; preds = %300, %69
  br label %302

302:                                              ; preds = %301, %44
  %303 = load %struct.simdisk_softc*, %struct.simdisk_softc** %5, align 8
  %304 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @sbuf_clear(i32 %305)
  br label %307

307:                                              ; preds = %302, %16
  ret void
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @sbuf_clear(i32) #1

declare dso_local i32 @sbuf_finish(i32) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @sbuf_data(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @g_simdisk_insertsector(%struct.simdisk_softc*, %struct.TYPE_2__*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
