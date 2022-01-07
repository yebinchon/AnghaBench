; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660_createSL.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660_createSL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.ISO_SUSP_ATTRIBUTES = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32* }

@SUSP_TYPE_RRIP = common dso_local global i32 0, align 4
@SUSP_ENTRY_RRIP_SL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"SL\00", align 1
@SUSP_LOC_ENTRY = common dso_local global i32 0, align 4
@SL_FLAGS_NONE = common dso_local global i8* null, align 8
@SL_FLAGS_ROOT = common dso_local global i8 0, align 1
@SL_FLAGS_CURRENT = common dso_local global i8 0, align 1
@SL_FLAGS_PARENT = common dso_local global i8 0, align 1
@SL_FLAGS_CONTINUE = common dso_local global i8 0, align 1
@rr_ll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cd9660_createSL(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.ISO_SUSP_ATTRIBUTES*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [255 x i8], align 16
  %11 = alloca [255 x i8], align 16
  %12 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %12, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* @SUSP_TYPE_RRIP, align 4
  %19 = load i32, i32* @SUSP_ENTRY_RRIP_SL, align 4
  %20 = load i32, i32* @SUSP_LOC_ENTRY, align 4
  %21 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %18, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  store %struct.ISO_SUSP_ATTRIBUTES* %21, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %22 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %23 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 1, i32* %29, align 4
  %30 = load i8*, i8** @SL_FLAGS_NONE, align 8
  %31 = ptrtoint i8* %30 to i8
  %32 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %33 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %31, i8* %38, align 1
  %39 = load i8*, i8** %12, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %43, label %62

43:                                               ; preds = %1
  %44 = load i8, i8* @SL_FLAGS_ROOT, align 1
  %45 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  store i8 %44, i8* %45, align 16
  %46 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %46, align 1
  %47 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %48 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %57 = call i32 @memcpy(i8* %55, i8* %56, i32 2)
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %4, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %12, align 8
  br label %62

62:                                               ; preds = %43, %1
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %72, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 2
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 %70
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %63

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %385, %75
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %386

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %163, %80
  %82 = load i8*, i8** %12, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 47
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i8*, i8** %12, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %86, %81
  %92 = phi i1 [ false, %81 ], [ %90, %86 ]
  br i1 %92, label %93, label %164

93:                                               ; preds = %91
  store i32 1, i32* %9, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 46
  br i1 %97, label %98, label %152

98:                                               ; preds = %93
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 47
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104, %98
  %111 = load i8, i8* @SL_FLAGS_CURRENT, align 1
  %112 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  store i8 %111, i8* %112, align 16
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %12, align 8
  br label %151

115:                                              ; preds = %104
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 46
  br i1 %120, label %121, label %139

121:                                              ; preds = %115
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 47
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load i8*, i8** %12, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127, %121
  %134 = load i8, i8* @SL_FLAGS_PARENT, align 1
  %135 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  store i8 %134, i8* %135, align 16
  %136 = load i8*, i8** %12, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  store i8* %137, i8** %12, align 8
  br label %138

138:                                              ; preds = %133, %127
  br label %150

139:                                              ; preds = %115
  %140 = load i8*, i8** %12, align 8
  %141 = load i8, i8* %140, align 1
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 %144
  store i8 %141, i8* %145, align 1
  %146 = load i8*, i8** %12, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %12, align 8
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %139, %138
  br label %151

151:                                              ; preds = %150, %110
  br label %163

152:                                              ; preds = %93
  %153 = load i8*, i8** %12, align 8
  %154 = load i8, i8* %153, align 1
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 %157
  store i8 %154, i8* %158, align 1
  %159 = load i8*, i8** %12, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %12, align 8
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %152, %151
  br label %81

164:                                              ; preds = %91
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %165, %166
  %168 = icmp sge i32 %167, 249
  br i1 %168, label %169, label %325

169:                                              ; preds = %164
  %170 = load i8, i8* @SL_FLAGS_CONTINUE, align 1
  %171 = sext i8 %170 to i32
  %172 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %173 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = or i32 %180, %171
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %178, align 1
  store i32 0, i32* %8, align 4
  %183 = load i32, i32* %4, align 4
  %184 = icmp sle i32 %183, 249
  br i1 %184, label %185, label %220

185:                                              ; preds = %169
  br label %186

186:                                              ; preds = %191, %185
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %4, align 4
  %189 = sub nsw i32 249, %188
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 %197
  store i8 %195, i8* %198, align 1
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %186

201:                                              ; preds = %186
  %202 = load i8, i8* @SL_FLAGS_CONTINUE, align 1
  %203 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  store i8 %202, i8* %203, align 16
  %204 = load i32, i32* %8, align 4
  %205 = sub nsw i32 %204, 2
  %206 = trunc i32 %205 to i8
  %207 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 1
  store i8 %206, i8* %207, align 1
  %208 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %209 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %4, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @memcpy(i8* %216, i8* %217, i32 %218)
  br label %220

220:                                              ; preds = %201, %169
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %4, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* %4, align 4
  %225 = add nsw i32 %224, 5
  %226 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %227 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 %225, i32* %233, align 4
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %237 = load i32, i32* @rr_ll, align 4
  %238 = call i32 @TAILQ_INSERT_TAIL(i32* %235, %struct.ISO_SUSP_ATTRIBUTES* %236, i32 %237)
  %239 = load i32, i32* @SUSP_TYPE_RRIP, align 4
  %240 = load i32, i32* @SUSP_ENTRY_RRIP_SL, align 4
  %241 = load i32, i32* @SUSP_LOC_ENTRY, align 4
  %242 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %239, i32 %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %241)
  store %struct.ISO_SUSP_ATTRIBUTES* %242, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %243 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %244 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  store i32 1, i32* %250, align 4
  %251 = load i8*, i8** @SL_FLAGS_NONE, align 8
  %252 = ptrtoint i8* %251 to i8
  %253 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %254 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 0
  store i8 %252, i8* %259, align 1
  store i32 0, i32* %4, align 4
  %260 = load i32, i32* %5, align 4
  %261 = icmp sgt i32 %260, 2
  br i1 %261, label %262, label %299

262:                                              ; preds = %220
  br label %263

263:                                              ; preds = %268, %262
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, 2
  %267 = icmp ne i32 %264, %266
  br i1 %267, label %268, label %287

268:                                              ; preds = %263
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 %270
  %272 = load i8, i8* %271, align 1
  %273 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %274 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = load i32, i32* %4, align 4
  %280 = add nsw i32 %279, 2
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %278, i64 %281
  store i8 %272, i8* %282, align 1
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* %4, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %4, align 4
  br label %263

287:                                              ; preds = %263
  %288 = load i32, i32* %4, align 4
  %289 = trunc i32 %288 to i8
  %290 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %291 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 1
  %295 = load i8*, i8** %294, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 1
  store i8 %289, i8* %296, align 1
  %297 = load i32, i32* %4, align 4
  %298 = add nsw i32 %297, 2
  store i32 %298, i32* %4, align 4
  br label %324

299:                                              ; preds = %220
  br label %300

300:                                              ; preds = %304, %299
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* %5, align 4
  %303 = icmp ne i32 %301, %302
  br i1 %303, label %304, label %323

304:                                              ; preds = %300
  %305 = load i32, i32* %8, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %310 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 1
  %314 = load i8*, i8** %313, align 8
  %315 = load i32, i32* %4, align 4
  %316 = add nsw i32 %315, 2
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %314, i64 %317
  store i8 %308, i8* %318, align 1
  %319 = load i32, i32* %8, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %8, align 4
  %321 = load i32, i32* %4, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %4, align 4
  br label %300

323:                                              ; preds = %300
  br label %324

324:                                              ; preds = %323, %287
  br label %350

325:                                              ; preds = %164
  %326 = load i32, i32* %9, align 4
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %328, label %349

328:                                              ; preds = %325
  %329 = load i32, i32* %5, align 4
  %330 = trunc i32 %329 to i8
  %331 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 1
  store i8 %330, i8* %331, align 1
  %332 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %333 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 1
  %337 = load i8*, i8** %336, align 8
  %338 = load i32, i32* %4, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* %337, i64 %339
  %341 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %342 = load i32, i32* %5, align 4
  %343 = add nsw i32 %342, 2
  %344 = call i32 @memcpy(i8* %340, i8* %341, i32 %343)
  %345 = load i32, i32* %5, align 4
  %346 = add nsw i32 %345, 2
  %347 = load i32, i32* %4, align 4
  %348 = add nsw i32 %347, %346
  store i32 %348, i32* %4, align 4
  br label %349

349:                                              ; preds = %328, %325
  br label %350

350:                                              ; preds = %349, %324
  %351 = load i8*, i8** %12, align 8
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %371

355:                                              ; preds = %350
  store i32 1, i32* %6, align 4
  %356 = load i32, i32* %4, align 4
  %357 = add nsw i32 %356, 5
  %358 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %359 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  store i32 %357, i32* %365, align 4
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 0
  %368 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %369 = load i32, i32* @rr_ll, align 4
  %370 = call i32 @TAILQ_INSERT_TAIL(i32* %367, %struct.ISO_SUSP_ATTRIBUTES* %368, i32 %369)
  br label %385

371:                                              ; preds = %350
  %372 = load i8*, i8** %12, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %373, i8** %12, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %374

374:                                              ; preds = %381, %371
  %375 = load i32, i32* %7, align 4
  %376 = icmp slt i32 %375, 255
  br i1 %376, label %377, label %384

377:                                              ; preds = %374
  %378 = load i32, i32* %7, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 %379
  store i8 0, i8* %380, align 1
  br label %381

381:                                              ; preds = %377
  %382 = load i32, i32* %7, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %7, align 4
  br label %374

384:                                              ; preds = %374
  br label %385

385:                                              ; preds = %384, %355
  br label %76

386:                                              ; preds = %76
  ret void
}

declare dso_local %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ISO_SUSP_ATTRIBUTES*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
