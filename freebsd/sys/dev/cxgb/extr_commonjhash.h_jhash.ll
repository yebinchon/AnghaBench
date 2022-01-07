; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_commonjhash.h_jhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_commonjhash.h_jhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JHASH_GOLDEN_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @jhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jhash(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %11, align 8
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @JHASH_GOLDEN_RATIO, align 4
  store i32 %15, i32* %8, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %20, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp sge i32 %18, 12
  br i1 %19, label %20, label %113

20:                                               ; preds = %17
  %21 = load i64*, i64** %11, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %23, %29
  %31 = load i64*, i64** %11, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 16
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %30, %36
  %38 = load i64*, i64** %11, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 3
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = shl i32 %41, 24
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %37, %43
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i64*, i64** %11, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 4
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 5
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %55, 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %51, %57
  %59 = load i64*, i64** %11, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 6
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = shl i32 %62, 16
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %58, %64
  %66 = load i64*, i64** %11, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 7
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = shl i32 %69, 24
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %65, %71
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %8, align 4
  %77 = load i64*, i64** %11, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %11, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 9
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 %83, 8
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %79, %85
  %87 = load i64*, i64** %11, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 10
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = shl i32 %90, 16
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %86, %92
  %94 = load i64*, i64** %11, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 11
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = shl i32 %97, 24
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %93, %99
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @__jhash_mix(i32 %105, i32 %106, i32 %107)
  %109 = load i64*, i64** %11, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 12
  store i64* %110, i64** %11, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, 12
  store i32 %112, i32* %10, align 4
  br label %17

113:                                              ; preds = %17
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  switch i32 %117, label %206 [
    i32 11, label %118
    i32 10, label %126
    i32 9, label %134
    i32 8, label %142
    i32 7, label %150
    i32 6, label %158
    i32 5, label %166
    i32 4, label %174
    i32 3, label %182
    i32 2, label %190
    i32 1, label %198
  ]

118:                                              ; preds = %113
  %119 = load i64*, i64** %11, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 10
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = shl i32 %122, 24
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %113, %118
  %127 = load i64*, i64** %11, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 9
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = shl i32 %130, 16
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %113, %126
  %135 = load i64*, i64** %11, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 8
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = shl i32 %138, 8
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %113, %134
  %143 = load i64*, i64** %11, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 7
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = shl i32 %146, 24
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %113, %142
  %151 = load i64*, i64** %11, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 6
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = shl i32 %154, 16
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %113, %150
  %159 = load i64*, i64** %11, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 5
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = shl i32 %162, 8
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %113, %158
  %167 = load i64*, i64** %11, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 4
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %113, %166
  %175 = load i64*, i64** %11, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 3
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = shl i32 %178, 24
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %113, %174
  %183 = load i64*, i64** %11, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 2
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = shl i32 %186, 16
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %113, %182
  %191 = load i64*, i64** %11, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 1
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = shl i32 %194, 8
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %113, %190
  %199 = load i64*, i64** %11, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 0
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %198, %113
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @__jhash_mix(i32 %207, i32 %208, i32 %209)
  %211 = load i32, i32* %9, align 4
  ret i32 %211
}

declare dso_local i32 @__jhash_mix(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
