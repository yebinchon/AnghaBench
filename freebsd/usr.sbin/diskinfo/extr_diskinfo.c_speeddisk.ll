; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_speeddisk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_speeddisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Seek times:\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\09Full stroke:\09\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\09Half stroke:\09\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09Quarter stroke:\09\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\09Short forward:\09\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\09Short backward:\09\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"\09Seq outer:\09\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\09Seq inner:\09\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"\0ATransfer rates:\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"\09outside:     \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"\09middle:      \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"\09inside:      \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @speeddisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speeddisk(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 1048576
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 2048
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  br label %284

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = sdiv i32 %23, 800
  %25 = call i32 @flsll(i32 %24)
  %26 = sub nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = shl i64 1, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sgt i32 %30, 16384
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 16384, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %34, 1048576
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 100
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 100, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = call i32 (...) @T0()
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %64, %39
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 125
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @rdsect(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @rdsect(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %46

67:                                               ; preds = %46
  %68 = call i32 @TN(i32 250)
  %69 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %11, align 4
  %71 = sdiv i32 %70, 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sdiv i32 %73, 2
  %75 = add nsw i32 %72, %74
  store i32 %75, i32* %10, align 4
  %76 = call i32 (...) @T0()
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %95, %67
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 125
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @rdsect(i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @rdsect(i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %80
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %77

98:                                               ; preds = %77
  %99 = call i32 @TN(i32 250)
  %100 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* %11, align 4
  %102 = sdiv i32 %101, 4
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sdiv i32 %104, 4
  %106 = add nsw i32 %103, %105
  store i32 %106, i32* %10, align 4
  %107 = call i32 (...) @T0()
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %126, %98
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 250
  br i1 %110, label %111, label %129

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @rdsect(i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @rdsect(i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %111
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %108

129:                                              ; preds = %108
  %130 = call i32 @TN(i32 500)
  %131 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* %11, align 4
  %133 = sdiv i32 %132, 2
  store i32 %133, i32* %9, align 4
  %134 = call i32 (...) @T0()
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %146, %129
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 400
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @rdsect(i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %135

149:                                              ; preds = %135
  %150 = call i32 @TN(i32 400)
  %151 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %152 = load i32, i32* %11, align 4
  %153 = sdiv i32 %152, 2
  store i32 %153, i32* %9, align 4
  %154 = call i32 (...) @T0()
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %166, %149
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %156, 400
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @rdsect(i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %9, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %155

169:                                              ; preds = %155
  %170 = call i32 @TN(i32 400)
  %171 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %172 = call i32 (...) @T0()
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %183, %169
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 2048
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @rdsect(i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %176
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %173

186:                                              ; preds = %173
  %187 = call i32 @TN(i32 2048)
  %188 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %189 = load i32, i32* %11, align 4
  %190 = sub nsw i32 %189, 2048
  store i32 %190, i32* %9, align 4
  %191 = call i32 (...) @T0()
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %202, %186
  %193 = load i32, i32* %8, align 4
  %194 = icmp slt i32 %193, 2048
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @rdsect(i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %195
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %192

205:                                              ; preds = %192
  %206 = call i32 @TN(i32 2048)
  %207 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %208 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @rdsect(i32 %209, i32 0, i32 %210)
  %212 = call i32 (...) @T0()
  store i32 0, i32* %8, align 4
  br label %213

213:                                              ; preds = %220, %205
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = load i32, i32* %4, align 4
  %219 = call i32 @rdmega(i32 %218)
  br label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %213

223:                                              ; preds = %213
  %224 = load i32, i32* %7, align 4
  %225 = mul nsw i32 %224, 1024
  %226 = call i32 @TR(i32 %225)
  %227 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %228 = load i32, i32* %11, align 4
  %229 = sdiv i32 %228, 2
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %6, align 4
  %232 = sdiv i32 1048576, %231
  %233 = mul nsw i32 %230, %232
  %234 = sdiv i32 %233, 2
  %235 = sub nsw i32 %229, %234
  %236 = sub nsw i32 %235, 1
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @rdsect(i32 %237, i32 %238, i32 %239)
  %241 = call i32 (...) @T0()
  store i32 0, i32* %8, align 4
  br label %242

242:                                              ; preds = %249, %223
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %7, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %242
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @rdmega(i32 %247)
  br label %249

249:                                              ; preds = %246
  %250 = load i32, i32* %8, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %8, align 4
  br label %242

252:                                              ; preds = %242
  %253 = load i32, i32* %7, align 4
  %254 = mul nsw i32 %253, 1024
  %255 = call i32 @TR(i32 %254)
  %256 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %257 = load i32, i32* %11, align 4
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* %6, align 4
  %260 = sdiv i32 1048576, %259
  %261 = mul nsw i32 %258, %260
  %262 = sub nsw i32 %257, %261
  %263 = sub nsw i32 %262, 1
  store i32 %263, i32* %9, align 4
  %264 = load i32, i32* %4, align 4
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* %6, align 4
  %267 = call i32 @rdsect(i32 %264, i32 %265, i32 %266)
  %268 = call i32 (...) @T0()
  store i32 0, i32* %8, align 4
  br label %269

269:                                              ; preds = %276, %252
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %279

273:                                              ; preds = %269
  %274 = load i32, i32* %4, align 4
  %275 = call i32 @rdmega(i32 %274)
  br label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %269

279:                                              ; preds = %269
  %280 = load i32, i32* %7, align 4
  %281 = mul nsw i32 %280, 1024
  %282 = call i32 @TR(i32 %281)
  %283 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %284

284:                                              ; preds = %279, %21
  ret void
}

declare dso_local i32 @flsll(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @T0(...) #1

declare dso_local i32 @rdsect(i32, i32, i32) #1

declare dso_local i32 @TN(i32) #1

declare dso_local i32 @rdmega(i32) #1

declare dso_local i32 @TR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
