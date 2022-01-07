; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_bsd_enc.c_bsd_disklabel_le_enc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_bsd_enc.c_bsd_disklabel_le_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disklabel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsd_disklabel_le_enc(i32* %0, %struct.disklabel* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.disklabel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.disklabel* %1, %struct.disklabel** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %12 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %11, i32 0, i32 27
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le32enc(i32* %10, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %18 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @le16enc(i32* %16, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 6
  %23 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %24 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16enc(i32* %22, i32 %25)
  %27 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %28 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %27, i32 0, i32 26
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = call i32 @bcopy(i32 %29, i32* %31, i32 16)
  %33 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %34 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %33, i32 0, i32 25
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 24
  %38 = call i32 @bcopy(i32 %35, i32* %37, i32 16)
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 40
  %41 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %42 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %41, i32 0, i32 24
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32enc(i32* %40, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 44
  %47 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %48 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %47, i32 0, i32 23
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @le32enc(i32* %46, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 48
  %53 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %54 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %53, i32 0, i32 22
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32enc(i32* %52, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 52
  %59 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %60 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %59, i32 0, i32 21
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le32enc(i32* %58, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 56
  %65 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %66 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %65, i32 0, i32 20
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32enc(i32* %64, i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 60
  %71 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %72 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %71, i32 0, i32 19
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @le32enc(i32* %70, i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 64
  %77 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %78 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @le16enc(i32* %76, i32 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 66
  %83 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %84 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16enc(i32* %82, i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 68
  %89 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %90 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %89, i32 0, i32 18
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32enc(i32* %88, i32 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 72
  %95 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %96 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @le16enc(i32* %94, i32 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 74
  %101 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %102 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le16enc(i32* %100, i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 76
  %107 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %108 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @le16enc(i32* %106, i32 %109)
  %111 = load i32*, i32** %3, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 78
  %113 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %114 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16enc(i32* %112, i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 80
  %119 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %120 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %119, i32 0, i32 17
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @le32enc(i32* %118, i32 %121)
  %123 = load i32*, i32** %3, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 84
  %125 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %126 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %125, i32 0, i32 16
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32enc(i32* %124, i32 %127)
  %129 = load i32*, i32** %3, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 88
  %131 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %132 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %131, i32 0, i32 15
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @le32enc(i32* %130, i32 %133)
  %135 = load i32*, i32** %3, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 92
  %137 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %138 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %137, i32 0, i32 14
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @le32enc(i32* %136, i32 %141)
  %143 = load i32*, i32** %3, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 96
  %145 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %146 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %145, i32 0, i32 14
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @le32enc(i32* %144, i32 %149)
  %151 = load i32*, i32** %3, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 100
  %153 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %154 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %153, i32 0, i32 14
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le32enc(i32* %152, i32 %157)
  %159 = load i32*, i32** %3, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 104
  %161 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %162 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %161, i32 0, i32 14
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @le32enc(i32* %160, i32 %165)
  %167 = load i32*, i32** %3, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 108
  %169 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %170 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %169, i32 0, i32 14
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 4
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @le32enc(i32* %168, i32 %173)
  %175 = load i32*, i32** %3, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 112
  %177 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %178 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %177, i32 0, i32 13
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le32enc(i32* %176, i32 %181)
  %183 = load i32*, i32** %3, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 116
  %185 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %186 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %185, i32 0, i32 13
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @le32enc(i32* %184, i32 %189)
  %191 = load i32*, i32** %3, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 120
  %193 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %194 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %193, i32 0, i32 13
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @le32enc(i32* %192, i32 %197)
  %199 = load i32*, i32** %3, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 124
  %201 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %202 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %201, i32 0, i32 13
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 3
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @le32enc(i32* %200, i32 %205)
  %207 = load i32*, i32** %3, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 128
  %209 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %210 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %209, i32 0, i32 13
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 4
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @le32enc(i32* %208, i32 %213)
  %215 = load i32*, i32** %3, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 132
  %217 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %218 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %217, i32 0, i32 12
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @le32enc(i32* %216, i32 %219)
  %221 = load i32*, i32** %3, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 136
  %223 = call i32 @le16enc(i32* %222, i32 0)
  %224 = load i32*, i32** %3, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 138
  %226 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %227 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @le16enc(i32* %225, i32 %228)
  %230 = load i32*, i32** %3, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 140
  %232 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %233 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %232, i32 0, i32 11
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @le32enc(i32* %231, i32 %234)
  %236 = load i32*, i32** %3, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 144
  %238 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %239 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %238, i32 0, i32 10
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @le32enc(i32* %237, i32 %240)
  store i32 0, i32* %5, align 4
  br label %242

242:                                              ; preds = %262, %2
  %243 = load i32, i32* %5, align 4
  %244 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %245 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %244, i32 0, i32 8
  %246 = load i32, i32* %245, align 8
  %247 = icmp slt i32 %243, %246
  br i1 %247, label %248, label %265

248:                                              ; preds = %242
  %249 = load i32*, i32** %3, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 148
  %251 = load i32, i32* %5, align 4
  %252 = mul nsw i32 16, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  %255 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %256 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %255, i32 0, i32 9
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = call i32 @bsd_partition_le_enc(i32* %254, i32* %260)
  br label %262

262:                                              ; preds = %248
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %5, align 4
  br label %242

265:                                              ; preds = %242
  %266 = load i32*, i32** %3, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 148
  %268 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %269 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 8
  %271 = mul nsw i32 16, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %267, i64 %272
  store i32* %273, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %274 = load i32*, i32** %3, align 8
  store i32* %274, i32** %6, align 8
  br label %275

275:                                              ; preds = %284, %265
  %276 = load i32*, i32** %6, align 8
  %277 = load i32*, i32** %7, align 8
  %278 = icmp ult i32* %276, %277
  br i1 %278, label %279, label %287

279:                                              ; preds = %275
  %280 = load i32*, i32** %6, align 8
  %281 = call i32 @le16dec(i32* %280)
  %282 = load i32, i32* %8, align 4
  %283 = xor i32 %282, %281
  store i32 %283, i32* %8, align 4
  br label %284

284:                                              ; preds = %279
  %285 = load i32*, i32** %6, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 2
  store i32* %286, i32** %6, align 8
  br label %275

287:                                              ; preds = %275
  %288 = load i32*, i32** %3, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 136
  %290 = load i32, i32* %8, align 4
  %291 = call i32 @le16enc(i32* %289, i32 %290)
  ret void
}

declare dso_local i32 @le32enc(i32*, i32) #1

declare dso_local i32 @le16enc(i32*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @bsd_partition_le_enc(i32*, i32*) #1

declare dso_local i32 @le16dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
