; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_g703_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_g703_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_g703_timer(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %17, 1
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  br label %21

20:                                               ; preds = %14
  br label %351

21:                                               ; preds = %19
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call zeroext i8 @u(i32 %26, i32 %29)
  store i8 %30, i8* %3, align 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = load i8, i8* %3, align 1
  %38 = call i32 @l(i32 %33, i32 %36, i8 zeroext %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = call i32 @cp_get_cd(%struct.TYPE_7__* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i8, i8* %3, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %21
  br label %52

46:                                               ; preds = %21
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 11
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %61

56:                                               ; preds = %52
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, 64
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %55
  %62 = load i8, i8* %3, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 2
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %72

67:                                               ; preds = %61
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, 4096
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %66
  %73 = load i8, i8* %3, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 16
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %83

78:                                               ; preds = %72
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, 2048
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %77
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %92

89:                                               ; preds = %83
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %88
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i8, i8* %3, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 16
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  br label %107

101:                                              ; preds = %95, %92
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  br label %138

107:                                              ; preds = %100
  %108 = load i8, i8* %3, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %119

113:                                              ; preds = %107
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %116, align 8
  br label %119

119:                                              ; preds = %113, %112
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i8, i8* %3, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %126, %119
  br label %137

132:                                              ; preds = %126
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %132, %131
  br label %138

138:                                              ; preds = %137, %101
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sdiv i32 %141, 60
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  br label %166

145:                                              ; preds = %138
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %148, 2
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp sgt i32 %149, %152
  br i1 %153, label %155, label %154

154:                                              ; preds = %145
  br label %161

155:                                              ; preds = %145
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  br label %161

161:                                              ; preds = %155, %154
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  store i32 0, i32* %163, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %161, %144
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 900
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  br label %351

172:                                              ; preds = %166
  store i32 47, i32* %5, align 4
  br label %173

173:                                              ; preds = %178, %172
  %174 = load i32, i32* %5, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  br label %197

177:                                              ; preds = %173
  br label %181

178:                                              ; preds = %181
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %5, align 4
  br label %173

181:                                              ; preds = %177
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 7
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %186
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 7
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %193
  %195 = bitcast %struct.TYPE_8__* %187 to i8*
  %196 = bitcast %struct.TYPE_8__* %194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %195, i8* align 8 %196, i64 96, i1 false)
  br label %178

197:                                              ; preds = %176
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 7
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 0
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 5
  %204 = bitcast %struct.TYPE_8__* %201 to i8*
  %205 = bitcast %struct.TYPE_8__* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 96, i1 false)
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 11
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 11
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %209
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %212, align 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 10
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 6
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 10
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %225, %220
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %223, align 8
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 9
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %231
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %234, align 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 8
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 8
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %242
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %245, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 7
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %258, %253
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %256, align 4
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 6
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 6
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, %264
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %267, align 8
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 5
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 5
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 6
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %280, %275
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %278, align 4
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 5
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 4
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 6
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %291, %286
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %289, align 8
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 6
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %297
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 4
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 6
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %313, %308
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %311, align 8
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 5
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 6
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = add nsw i64 %324, %319
  %326 = trunc i64 %325 to i32
  store i32 %326, i32* %322, align 4
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 6
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = sext i32 %334 to i64
  %336 = add nsw i64 %335, %330
  %337 = trunc i64 %336 to i32
  store i32 %337, i32* %333, align 8
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 5
  %340 = call i32 @memset(%struct.TYPE_8__* %339, i32 0, i32 96)
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 4
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %347, %344
  store i64 %348, i64* %346, align 8
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  store i32 0, i32* %350, align 8
  br label %351

351:                                              ; preds = %20, %197, %171
  ret void
}

declare dso_local zeroext i8 @u(i32, i32) #1

declare dso_local i32 @l(i32, i32, i8 zeroext) #1

declare dso_local i32 @cp_get_cd(%struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
