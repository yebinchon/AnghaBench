; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_edid.c_edid_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_edid.c_edid_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid_info = type { i32, i8*, i8*, i8*, i64, i8*, %struct.TYPE_3__, i64, %struct.videomode*, i32*, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.videomode = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@EDID_OFFSET_PRODUCT_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@_edid_modes = common dso_local global i8** null, align 8
@EDID_STD_TIMING_COUNT = common dso_local global i32 0, align 4
@EDID_OFFSET_STD_TIMING = common dso_local global i32 0, align 4
@EDID_BLOCK_COUNT = common dso_local global i32 0, align 4
@EDID_OFFSET_DESC_BLOCK = common dso_local global i32 0, align 4
@EDID_BLOCK_SIZE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"edid: max_dotclock according to supported modes: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edid_parse(i32* %0, %struct.edid_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.edid_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.videomode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.videomode, align 4
  %14 = alloca %struct.videomode*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.edid_info* %1, %struct.edid_info** %5, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @edid_is_valid(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %367

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @EDID_VENDOR_ID(i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @EDID_MANFID_0(i32 %22)
  %24 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %25 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %24, i32 0, i32 21
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @EDID_MANFID_1(i32 %28)
  %30 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %31 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %30, i32 0, i32 21
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @EDID_MANFID_2(i32 %34)
  %36 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %37 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %36, i32 0, i32 21
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %35, i32* %39, align 4
  %40 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %41 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %40, i32 0, i32 21
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 0, i32* %43, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i64, i64* @EDID_OFFSET_PRODUCT_ID, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i64, i64* @EDID_OFFSET_PRODUCT_ID, align 8
  %50 = add i64 %49, 1
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = add nsw i32 %47, %53
  %55 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %56 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %58 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %57, i32 0, i32 21
  %59 = load i32*, i32** %58, align 8
  %60 = call i8* @edid_findvendor(i32* %59)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %19
  %64 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %65 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @strlcpy(i8* %66, i8* %67, i32 8)
  br label %74

69:                                               ; preds = %19
  %70 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %71 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %69, %63
  %75 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %76 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %75, i32 0, i32 21
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %79 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @edid_findproduct(i32* %77, i32 %80)
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %86 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @strlcpy(i8* %87, i8* %88, i32 8)
  br label %95

90:                                               ; preds = %74
  %91 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %92 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 0, i8* %94, align 1
  br label %95

95:                                               ; preds = %90, %84
  %96 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %97 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @EDID_SERIAL_NUMBER(i32* %99)
  %101 = call i32 @snprintf(i8* %98, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @EDID_WEEK(i32* %102)
  %104 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %105 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %104, i32 0, i32 20
  store i32 %103, i32* %105, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @EDID_YEAR(i32* %106)
  %108 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %109 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %108, i32 0, i32 19
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @EDID_VERSION(i32* %110)
  %112 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %113 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %112, i32 0, i32 18
  store i32 %111, i32* %113, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @EDID_REVISION(i32* %114)
  %116 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %117 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %116, i32 0, i32 17
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @EDID_VIDEO_INPUT(i32* %118)
  %120 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %121 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %120, i32 0, i32 16
  store i32 %119, i32* %121, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @EDID_MAX_HSIZE(i32* %122)
  %124 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %125 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %124, i32 0, i32 15
  store i32 %123, i32* %125, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @EDID_MAX_VSIZE(i32* %126)
  %128 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %129 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %128, i32 0, i32 14
  store i32 %127, i32* %129, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @EDID_GAMMA(i32* %130)
  %132 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %133 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %132, i32 0, i32 13
  store i32 %131, i32* %133, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @EDID_FEATURES(i32* %134)
  %136 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %137 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %136, i32 0, i32 12
  store i32 %135, i32* %137, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = call i8* @EDID_CHROMA_REDX(i32* %138)
  %140 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %141 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %140, i32 0, i32 11
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 7
  store i8* %139, i8** %142, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = call i8* @EDID_CHROMA_REDX(i32* %143)
  %145 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %146 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %145, i32 0, i32 11
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 6
  store i8* %144, i8** %147, align 8
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @EDID_CHROMA_GREENX(i32* %148)
  %150 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %151 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %150, i32 0, i32 11
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  store i32 %149, i32* %152, align 4
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @EDID_CHROMA_GREENY(i32* %153)
  %155 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %156 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %155, i32 0, i32 11
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  store i32 %154, i32* %157, align 8
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @EDID_CHROMA_BLUEX(i32* %158)
  %160 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %161 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %160, i32 0, i32 11
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 4
  %163 = load i32*, i32** %4, align 8
  %164 = call i32 @EDID_CHROMA_BLUEY(i32* %163)
  %165 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %166 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %165, i32 0, i32 11
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  store i32 %164, i32* %167, align 8
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @EDID_CHROMA_WHITEX(i32* %168)
  %170 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %171 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %170, i32 0, i32 11
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @EDID_CHROMA_WHITEY(i32* %173)
  %175 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %176 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %175, i32 0, i32 11
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @EDID_EXT_BLOCK_COUNT(i32* %178)
  %180 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %181 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %180, i32 0, i32 10
  store i32 %179, i32* %181, align 8
  %182 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %183 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %182, i32 0, i32 4
  store i64 0, i64* %183, align 8
  %184 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %185 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %184, i32 0, i32 9
  store i32* null, i32** %185, align 8
  %186 = load i32*, i32** %4, align 8
  %187 = call i32 @EDID_EST_TIMING(i32* %186)
  store i32 %187, i32* %7, align 4
  store i32 15, i32* %9, align 4
  br label %188

188:                                              ; preds = %223, %95
  %189 = load i32, i32* %9, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %226

191:                                              ; preds = %188
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %9, align 4
  %194 = shl i32 1, %193
  %195 = and i32 %192, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %222

197:                                              ; preds = %191
  %198 = load i8**, i8*** @_edid_modes, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = call %struct.videomode* @edid_mode_lookup_list(i8* %202)
  store %struct.videomode* %203, %struct.videomode** %8, align 8
  %204 = load %struct.videomode*, %struct.videomode** %8, align 8
  %205 = icmp ne %struct.videomode* %204, null
  br i1 %205, label %206, label %221

206:                                              ; preds = %197
  %207 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %208 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %207, i32 0, i32 8
  %209 = load %struct.videomode*, %struct.videomode** %208, align 8
  %210 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %211 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.videomode, %struct.videomode* %209, i64 %212
  %214 = load %struct.videomode*, %struct.videomode** %8, align 8
  %215 = bitcast %struct.videomode* %213 to i8*
  %216 = bitcast %struct.videomode* %214 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %215, i8* align 4 %216, i64 4, i1 false)
  %217 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %218 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %218, align 8
  br label %221

221:                                              ; preds = %206, %197
  br label %222

222:                                              ; preds = %221, %191
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %9, align 4
  br label %188

226:                                              ; preds = %188
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %263, %226
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* @EDID_STD_TIMING_COUNT, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %266

231:                                              ; preds = %227
  %232 = load i32*, i32** %4, align 8
  %233 = load i32, i32* @EDID_OFFSET_STD_TIMING, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %9, align 4
  %237 = mul nsw i32 %236, 2
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  %240 = call i64 @edid_std_timing(i32* %239, %struct.videomode* %13)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %262

242:                                              ; preds = %231
  %243 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %244 = call %struct.videomode* @edid_search_mode(%struct.edid_info* %243, %struct.videomode* %13)
  store %struct.videomode* %244, %struct.videomode** %14, align 8
  %245 = load %struct.videomode*, %struct.videomode** %14, align 8
  %246 = icmp eq %struct.videomode* %245, null
  br i1 %246, label %247, label %261

247:                                              ; preds = %242
  %248 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %249 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %248, i32 0, i32 8
  %250 = load %struct.videomode*, %struct.videomode** %249, align 8
  %251 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %252 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.videomode, %struct.videomode* %250, i64 %253
  %255 = bitcast %struct.videomode* %254 to i8*
  %256 = bitcast %struct.videomode* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %255, i8* align 4 %256, i64 4, i1 false)
  %257 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %258 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = add i64 %259, 1
  store i64 %260, i64* %258, align 8
  br label %261

261:                                              ; preds = %247, %242
  br label %262

262:                                              ; preds = %261, %231
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %9, align 4
  br label %227

266:                                              ; preds = %227
  store i32 0, i32* %9, align 4
  br label %267

267:                                              ; preds = %283, %266
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* @EDID_BLOCK_COUNT, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %286

271:                                              ; preds = %267
  %272 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %273 = load i32*, i32** %4, align 8
  %274 = load i32, i32* @EDID_OFFSET_DESC_BLOCK, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @EDID_BLOCK_SIZE, align 4
  %279 = mul nsw i32 %277, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = call i32 @edid_block(%struct.edid_info* %272, i32* %281)
  br label %283

283:                                              ; preds = %271
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %9, align 4
  br label %267

286:                                              ; preds = %267
  %287 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %288 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %287, i32 0, i32 1
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @edid_strchomp(i8* %289)
  %291 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %292 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %291, i32 0, i32 2
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @edid_strchomp(i8* %293)
  %295 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %296 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %295, i32 0, i32 3
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @edid_strchomp(i8* %297)
  %299 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %300 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %299, i32 0, i32 5
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @edid_strchomp(i8* %301)
  store i32 0, i32* %9, align 4
  br label %303

303:                                              ; preds = %331, %286
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %307 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %306, i32 0, i32 4
  %308 = load i64, i64* %307, align 8
  %309 = icmp ult i64 %305, %308
  br i1 %309, label %310, label %334

310:                                              ; preds = %303
  %311 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %312 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %311, i32 0, i32 8
  %313 = load %struct.videomode*, %struct.videomode** %312, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.videomode, %struct.videomode* %313, i64 %315
  %317 = getelementptr inbounds %struct.videomode, %struct.videomode* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %11, align 4
  %320 = icmp sgt i32 %318, %319
  br i1 %320, label %321, label %330

321:                                              ; preds = %310
  %322 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %323 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %322, i32 0, i32 8
  %324 = load %struct.videomode*, %struct.videomode** %323, align 8
  %325 = load i32, i32* %9, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.videomode, %struct.videomode* %324, i64 %326
  %328 = getelementptr inbounds %struct.videomode, %struct.videomode* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %11, align 4
  br label %330

330:                                              ; preds = %321, %310
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %9, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %9, align 4
  br label %303

334:                                              ; preds = %303
  %335 = load i64, i64* @bootverbose, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load i32, i32* %11, align 4
  %339 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %338)
  br label %340

340:                                              ; preds = %337, %334
  %341 = load i32, i32* %11, align 4
  %342 = add nsw i32 %341, 999
  %343 = sdiv i32 %342, 1000
  store i32 %343, i32* %12, align 4
  %344 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %345 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %344, i32 0, i32 7
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %361

348:                                              ; preds = %340
  %349 = load i32, i32* %12, align 4
  %350 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %351 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %350, i32 0, i32 6
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp sgt i32 %349, %353
  br i1 %354, label %355, label %360

355:                                              ; preds = %348
  %356 = load i32, i32* %12, align 4
  %357 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %358 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %357, i32 0, i32 6
  %359 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %358, i32 0, i32 0
  store i32 %356, i32* %359, align 8
  br label %360

360:                                              ; preds = %355, %348
  br label %366

361:                                              ; preds = %340
  %362 = load i32, i32* %12, align 4
  %363 = load %struct.edid_info*, %struct.edid_info** %5, align 8
  %364 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %363, i32 0, i32 6
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 0
  store i32 %362, i32* %365, align 8
  br label %366

366:                                              ; preds = %361, %360
  store i32 0, i32* %3, align 4
  br label %367

367:                                              ; preds = %366, %18
  %368 = load i32, i32* %3, align 4
  ret i32 %368
}

declare dso_local i64 @edid_is_valid(i32*) #1

declare dso_local i32 @EDID_VENDOR_ID(i32*) #1

declare dso_local i32 @EDID_MANFID_0(i32) #1

declare dso_local i32 @EDID_MANFID_1(i32) #1

declare dso_local i32 @EDID_MANFID_2(i32) #1

declare dso_local i8* @edid_findvendor(i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @edid_findproduct(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @EDID_SERIAL_NUMBER(i32*) #1

declare dso_local i32 @EDID_WEEK(i32*) #1

declare dso_local i32 @EDID_YEAR(i32*) #1

declare dso_local i32 @EDID_VERSION(i32*) #1

declare dso_local i32 @EDID_REVISION(i32*) #1

declare dso_local i32 @EDID_VIDEO_INPUT(i32*) #1

declare dso_local i32 @EDID_MAX_HSIZE(i32*) #1

declare dso_local i32 @EDID_MAX_VSIZE(i32*) #1

declare dso_local i32 @EDID_GAMMA(i32*) #1

declare dso_local i32 @EDID_FEATURES(i32*) #1

declare dso_local i8* @EDID_CHROMA_REDX(i32*) #1

declare dso_local i32 @EDID_CHROMA_GREENX(i32*) #1

declare dso_local i32 @EDID_CHROMA_GREENY(i32*) #1

declare dso_local i32 @EDID_CHROMA_BLUEX(i32*) #1

declare dso_local i32 @EDID_CHROMA_BLUEY(i32*) #1

declare dso_local i32 @EDID_CHROMA_WHITEX(i32*) #1

declare dso_local i32 @EDID_CHROMA_WHITEY(i32*) #1

declare dso_local i32 @EDID_EXT_BLOCK_COUNT(i32*) #1

declare dso_local i32 @EDID_EST_TIMING(i32*) #1

declare dso_local %struct.videomode* @edid_mode_lookup_list(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @edid_std_timing(i32*, %struct.videomode*) #1

declare dso_local %struct.videomode* @edid_search_mode(%struct.edid_info*, %struct.videomode*) #1

declare dso_local i32 @edid_block(%struct.edid_info*, i32*) #1

declare dso_local i32 @edid_strchomp(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
