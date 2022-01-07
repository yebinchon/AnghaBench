; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l168.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l168.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @l168 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l168(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [4 x i64], align 16
  %5 = alloca [2 x i64], align 16
  %6 = alloca [4 x %struct.TYPE_7__], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = bitcast [4 x i64]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 32, i1 false)
  %9 = bitcast [2 x i64]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %23

22:                                               ; preds = %14, %1
  br label %257

23:                                               ; preds = %21
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %3, align 8
  br label %27

27:                                               ; preds = %36, %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 4
  %33 = icmp ult %struct.TYPE_8__* %28, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %74

35:                                               ; preds = %27
  br label %39

36:                                               ; preds = %73, %50
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 1
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %3, align 8
  br label %27

39:                                               ; preds = %35
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 3
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 6
  br i1 %48, label %50, label %49

49:                                               ; preds = %44, %39
  br label %51

50:                                               ; preds = %44
  br label %36

51:                                               ; preds = %49
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %54
  store i64 %60, i64* %58, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %73

66:                                               ; preds = %51
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = or i64 %71, 65536
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %66, %65
  br label %36

74:                                               ; preds = %34
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %76 = load i64, i64* %75, align 16
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = or i64 %76, %78
  %80 = xor i64 %79, -1
  %81 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  store i64 %80, i64* %81, align 16
  %82 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %83 = load i64, i64* %82, align 16
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  %85 = load i64, i64* %84, align 8
  %86 = or i64 %83, %85
  %87 = xor i64 %86, -1
  %88 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  store i64 %87, i64* %88, align 8
  store i32 1, i32* %7, align 4
  br label %89

89:                                               ; preds = %94, %74
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 32
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %224

93:                                               ; preds = %89
  br label %97

94:                                               ; preds = %223
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %89

97:                                               ; preds = %93
  %98 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %99 = load i64, i64* %98, align 16
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = lshr i64 %99, %101
  %103 = and i64 %102, 1
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  br label %135

106:                                              ; preds = %97
  %107 = load i32, i32* %7, align 4
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 16
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8 %108, i8* %114, align 1
  %115 = load i32, i32* %7, align 4
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 16
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 %116, i8* %122, align 1
  %123 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 1, i32* %128, align 4
  %129 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 0, i32* %134, align 4
  br label %160

135:                                              ; preds = %105
  %136 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 16
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8 0, i8* %141, align 1
  %142 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 16
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8 0, i8* %147, align 1
  %148 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 0, i32* %153, align 4
  %154 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 1
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %135, %106
  %161 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = zext i32 %163 to i64
  %165 = lshr i64 %162, %164
  %166 = and i64 %165, 1
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %160
  br label %198

169:                                              ; preds = %160
  %170 = load i32, i32* %7, align 4
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 2
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 16
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 %171, i8* %177, align 1
  %178 = load i32, i32* %7, align 4
  %179 = trunc i32 %178 to i8
  %180 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 3
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 16
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  store i8 %179, i8* %185, align 1
  %186 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 2
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 3, i32* %191, align 4
  %192 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 3
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 2, i32* %197, align 4
  br label %223

198:                                              ; preds = %168
  %199 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 2
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 16
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  store i8 0, i8* %204, align 1
  %205 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 3
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 16
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  store i8 0, i8* %210, align 1
  %211 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 2
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 0, i32* %216, align 4
  %217 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 3
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 0, i32* %222, align 4
  br label %223

223:                                              ; preds = %198, %169
  br label %94

224:                                              ; preds = %92
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 4
  %230 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i64 0
  %232 = call i32 @memcpy(i32* %229, %struct.TYPE_7__* %231, i32 16)
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i64 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 4
  %238 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i64 1
  %240 = call i32 @memcpy(i32* %237, %struct.TYPE_7__* %239, i32 16)
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i64 2
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 4
  %246 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i64 2
  %248 = call i32 @memcpy(i32* %245, %struct.TYPE_7__* %247, i32 16)
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i64 3
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 4
  %254 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i64 3
  %256 = call i32 @memcpy(i32* %253, %struct.TYPE_7__* %255, i32 16)
  br label %257

257:                                              ; preds = %224, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_7__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
