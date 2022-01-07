; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32, i32, i32, i64, i32*, i32, %struct.radix_node*, %struct.radix_mask*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node* }
%struct.radix_mask = type { i32, i32, i64, %struct.radix_mask*, %struct.radix_node* }
%struct.radix_head = type { %struct.radix_node* }

@RNF_ROOT = common dso_local global i32 0, align 4
@RNF_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radix_node* @rn_match(i8* %0, %struct.radix_head* %1) #0 {
  %3 = alloca %struct.radix_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.radix_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.radix_node*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.radix_node*, align 8
  %13 = alloca %struct.radix_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.radix_mask*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.radix_head* %1, %struct.radix_head** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %6, align 8
  %23 = load %struct.radix_head*, %struct.radix_head** %5, align 8
  %24 = getelementptr inbounds %struct.radix_head, %struct.radix_head* %23, i32 0, i32 0
  %25 = load %struct.radix_node*, %struct.radix_node** %24, align 8
  store %struct.radix_node* %25, %struct.radix_node** %7, align 8
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %9, align 8
  %27 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %27, %struct.radix_node** %13, align 8
  %28 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %29 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @LEN(i32* %31)
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %59, %2
  %34 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %35 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %40 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %44 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %41, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %53 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %52, i32 0, i32 10
  %54 = load %struct.radix_node*, %struct.radix_node** %53, align 8
  store %struct.radix_node* %54, %struct.radix_node** %7, align 8
  br label %59

55:                                               ; preds = %38
  %56 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %57 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %56, i32 0, i32 9
  %58 = load %struct.radix_node*, %struct.radix_node** %57, align 8
  store %struct.radix_node* %58, %struct.radix_node** %7, align 8
  br label %59

59:                                               ; preds = %55, %51
  br label %33

60:                                               ; preds = %33
  %61 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %62 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %67 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %9, align 8
  %76 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %77 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32* %85, i32** %11, align 8
  br label %86

86:                                               ; preds = %98, %71
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = icmp ult i32* %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %116

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %9, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %10, align 8
  br label %86

103:                                              ; preds = %86
  %104 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %105 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @RNF_ROOT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %112 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %111, i32 0, i32 6
  %113 = load %struct.radix_node*, %struct.radix_node** %112, align 8
  store %struct.radix_node* %113, %struct.radix_node** %7, align 8
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %115, %struct.radix_node** %3, align 8
  br label %268

116:                                              ; preds = %96
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %119, align 4
  %121 = xor i32 %118, %120
  %122 = and i32 %121, 255
  store i32 %122, i32* %17, align 4
  store i32 7, i32* %18, align 4
  br label %123

123:                                              ; preds = %127, %116
  %124 = load i32, i32* %17, align 4
  %125 = ashr i32 %124, 1
  store i32 %125, i32* %17, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %18, align 4
  br label %123

130:                                              ; preds = %123
  %131 = load i32*, i32** %9, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = ptrtoint i32* %131 to i64
  %134 = ptrtoint i32* %132 to i64
  %135 = sub i64 %133, %134
  %136 = sdiv exact i64 %135, 4
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = shl i32 %138, 3
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = sub nsw i32 -1, %142
  store i32 %143, i32* %19, align 4
  %144 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %144, %struct.radix_node** %12, align 8
  %145 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %130
  %149 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %150 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %149, i32 0, i32 6
  %151 = load %struct.radix_node*, %struct.radix_node** %150, align 8
  store %struct.radix_node* %151, %struct.radix_node** %7, align 8
  br label %152

152:                                              ; preds = %148, %130
  br label %153

153:                                              ; preds = %182, %152
  %154 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %155 = icmp ne %struct.radix_node* %154, null
  br i1 %155, label %156, label %186

156:                                              ; preds = %153
  %157 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %158 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @RNF_NORMAL, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %156
  %164 = load i32, i32* %19, align 4
  %165 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %166 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp sle i32 %164, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %170, %struct.radix_node** %3, align 8
  br label %268

171:                                              ; preds = %163
  br label %181

172:                                              ; preds = %156
  %173 = load i32*, i32** %6, align 8
  %174 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %175 = load i32, i32* %16, align 4
  %176 = call i64 @rn_satisfies_leaf(i32* %173, %struct.radix_node* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %179, %struct.radix_node** %3, align 8
  br label %268

180:                                              ; preds = %172
  br label %181

181:                                              ; preds = %180, %171
  br label %182

182:                                              ; preds = %181
  %183 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %184 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %183, i32 0, i32 6
  %185 = load %struct.radix_node*, %struct.radix_node** %184, align 8
  store %struct.radix_node* %185, %struct.radix_node** %7, align 8
  br label %153

186:                                              ; preds = %153
  %187 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  store %struct.radix_node* %187, %struct.radix_node** %7, align 8
  br label %188

188:                                              ; preds = %263, %186
  %189 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %190 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %189, i32 0, i32 8
  %191 = load %struct.radix_node*, %struct.radix_node** %190, align 8
  store %struct.radix_node* %191, %struct.radix_node** %7, align 8
  %192 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %193 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %192, i32 0, i32 7
  %194 = load %struct.radix_mask*, %struct.radix_mask** %193, align 8
  store %struct.radix_mask* %194, %struct.radix_mask** %20, align 8
  br label %195

195:                                              ; preds = %258, %188
  %196 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %197 = icmp ne %struct.radix_mask* %196, null
  br i1 %197, label %198, label %262

198:                                              ; preds = %195
  %199 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %200 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @RNF_NORMAL, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %198
  %206 = load i32, i32* %19, align 4
  %207 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %208 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp sle i32 %206, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %213 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %212, i32 0, i32 4
  %214 = load %struct.radix_node*, %struct.radix_node** %213, align 8
  store %struct.radix_node* %214, %struct.radix_node** %3, align 8
  br label %268

215:                                              ; preds = %205
  br label %258

216:                                              ; preds = %198
  %217 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %218 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = load i32, i32* %16, align 4
  %222 = call i32 @min(i64 %220, i32 %221)
  store i32 %222, i32* %14, align 4
  %223 = load i32*, i32** %6, align 8
  %224 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %225 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %226 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = call %struct.radix_node* @rn_search_m(i32* %223, %struct.radix_node* %224, i64 %227)
  store %struct.radix_node* %228, %struct.radix_node** %8, align 8
  br label %229

229:                                              ; preds = %242, %216
  %230 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %231 = icmp ne %struct.radix_node* %230, null
  br i1 %231, label %232, label %240

232:                                              ; preds = %229
  %233 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %234 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %237 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %235, %238
  br label %240

240:                                              ; preds = %232, %229
  %241 = phi i1 [ false, %229 ], [ %239, %232 ]
  br i1 %241, label %242, label %246

242:                                              ; preds = %240
  %243 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %244 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %243, i32 0, i32 6
  %245 = load %struct.radix_node*, %struct.radix_node** %244, align 8
  store %struct.radix_node* %245, %struct.radix_node** %8, align 8
  br label %229

246:                                              ; preds = %240
  %247 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %248 = icmp ne %struct.radix_node* %247, null
  br i1 %248, label %249, label %257

249:                                              ; preds = %246
  %250 = load i32*, i32** %6, align 8
  %251 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %252 = load i32, i32* %14, align 4
  %253 = call i64 @rn_satisfies_leaf(i32* %250, %struct.radix_node* %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  store %struct.radix_node* %256, %struct.radix_node** %3, align 8
  br label %268

257:                                              ; preds = %249, %246
  br label %258

258:                                              ; preds = %257, %215
  %259 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %260 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %259, i32 0, i32 3
  %261 = load %struct.radix_mask*, %struct.radix_mask** %260, align 8
  store %struct.radix_mask* %261, %struct.radix_mask** %20, align 8
  br label %195

262:                                              ; preds = %195
  br label %263

263:                                              ; preds = %262
  %264 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %265 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %266 = icmp ne %struct.radix_node* %264, %265
  br i1 %266, label %188, label %267

267:                                              ; preds = %263
  store %struct.radix_node* null, %struct.radix_node** %3, align 8
  br label %268

268:                                              ; preds = %267, %255, %211, %178, %169, %114
  %269 = load %struct.radix_node*, %struct.radix_node** %3, align 8
  ret %struct.radix_node* %269
}

declare dso_local i32 @LEN(i32*) #1

declare dso_local i64 @rn_satisfies_leaf(i32*, %struct.radix_node*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local %struct.radix_node* @rn_search_m(i32*, %struct.radix_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
