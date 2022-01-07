; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_tuner.c_MT2032_ComputeFreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_tuner.c_MT2032_ComputeFreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MT2032_OPTIMIZE_VCO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"MT2032: parameter out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i8*, i32*, i32)* @MT2032_ComputeFreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MT2032_ComputeFreq(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 5250000, i32* %18, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %25, align 4
  %36 = load i32, i32* %25, align 4
  %37 = sdiv i32 %36, 1000
  %38 = mul nsw i32 2, %37
  %39 = load i32, i32* %18, align 4
  %40 = sdiv i32 %39, 1000
  %41 = add nsw i32 %38, %40
  %42 = load i32, i32* %18, align 4
  %43 = mul nsw i32 2, %42
  %44 = sdiv i32 %43, 1000
  %45 = sdiv i32 %41, %44
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %18, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %24, align 4
  %49 = load i32, i32* %24, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %26, align 4
  store i32 1, i32* %32, align 4
  br label %54

54:                                               ; preds = %86, %8
  %55 = load i32, i32* %32, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %89

57:                                               ; preds = %54
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %26, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @MT2032_SpurCheck(i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %89

65:                                               ; preds = %57
  %66 = load i32, i32* %24, align 4
  %67 = load i32, i32* %25, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %32, align 4
  %71 = load i32, i32* %19, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %19, align 4
  br label %77

73:                                               ; preds = %65
  %74 = load i32, i32* %32, align 4
  %75 = load i32, i32* %19, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %19, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %18, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %24, align 4
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %26, align 4
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %32, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %32, align 4
  br label %54

89:                                               ; preds = %64, %54
  %90 = load i32, i32* %24, align 4
  %91 = sdiv i32 %90, 1000
  %92 = sdiv i32 %91, 1000
  store i32 %92, i32* %22, align 4
  %93 = load i64, i64* @MT2032_OPTIMIZE_VCO, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %89
  %96 = load i32, i32* %22, align 4
  %97 = icmp sgt i32 %96, 1890
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %23, align 4
  br label %115

99:                                               ; preds = %95
  %100 = load i32, i32* %22, align 4
  %101 = icmp sgt i32 %100, 1720
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 1, i32* %23, align 4
  br label %114

103:                                              ; preds = %99
  %104 = load i32, i32* %22, align 4
  %105 = icmp sgt i32 %104, 1530
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 2, i32* %23, align 4
  br label %113

107:                                              ; preds = %103
  %108 = load i32, i32* %22, align 4
  %109 = icmp sgt i32 %108, 1370
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 3, i32* %23, align 4
  br label %112

111:                                              ; preds = %107
  store i32 4, i32* %23, align 4
  br label %112

112:                                              ; preds = %111, %110
  br label %113

113:                                              ; preds = %112, %106
  br label %114

114:                                              ; preds = %113, %102
  br label %115

115:                                              ; preds = %114, %98
  br label %137

116:                                              ; preds = %89
  %117 = load i32, i32* %22, align 4
  %118 = icmp sgt i32 %117, 1790
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 0, i32* %23, align 4
  br label %136

120:                                              ; preds = %116
  %121 = load i32, i32* %22, align 4
  %122 = icmp sgt i32 %121, 1617
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 1, i32* %23, align 4
  br label %135

124:                                              ; preds = %120
  %125 = load i32, i32* %22, align 4
  %126 = icmp sgt i32 %125, 1449
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 2, i32* %23, align 4
  br label %134

128:                                              ; preds = %124
  %129 = load i32, i32* %22, align 4
  %130 = icmp sgt i32 %129, 1291
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 3, i32* %23, align 4
  br label %133

132:                                              ; preds = %128
  store i32 4, i32* %23, align 4
  br label %133

133:                                              ; preds = %132, %131
  br label %134

134:                                              ; preds = %133, %127
  br label %135

135:                                              ; preds = %134, %123
  br label %136

136:                                              ; preds = %135, %119
  br label %137

137:                                              ; preds = %136, %115
  %138 = load i32, i32* %23, align 4
  %139 = load i32*, i32** %16, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %19, align 4
  %141 = sdiv i32 %140, 8
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %20, align 4
  %144 = mul nsw i32 %143, 8
  %145 = sub nsw i32 %142, %144
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %18, align 4
  %148 = sdiv i32 %146, %147
  store i32 %148, i32* %27, align 4
  %149 = load i32, i32* %27, align 4
  %150 = sdiv i32 %149, 8
  store i32 %150, i32* %28, align 4
  %151 = load i32, i32* %27, align 4
  %152 = load i32, i32* %28, align 4
  %153 = mul nsw i32 %152, 8
  %154 = sub nsw i32 %151, %153
  store i32 %154, i32* %29, align 4
  %155 = load i32, i32* %26, align 4
  %156 = sdiv i32 %155, 1000
  %157 = load i32, i32* %18, align 4
  %158 = sdiv i32 %157, 1000
  %159 = srem i32 %156, %158
  %160 = mul nsw i32 %159, 3780
  %161 = load i32, i32* %18, align 4
  %162 = sdiv i32 %161, 1000
  %163 = sdiv i32 %160, %162
  store i32 %163, i32* %30, align 4
  %164 = load i32, i32* %29, align 4
  %165 = load i32, i32* %28, align 4
  %166 = mul nsw i32 8, %165
  %167 = add nsw i32 %164, %166
  %168 = load i32, i32* %18, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* %30, align 4
  %171 = load i32, i32* %18, align 4
  %172 = sdiv i32 %171, 1000
  %173 = mul nsw i32 %170, %172
  %174 = sdiv i32 %173, 3780
  %175 = mul nsw i32 %174, 1000
  %176 = add nsw i32 %169, %175
  store i32 %176, i32* %31, align 4
  %177 = load i32, i32* %21, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %200, label %179

179:                                              ; preds = %137
  %180 = load i32, i32* %21, align 4
  %181 = icmp sgt i32 %180, 7
  br i1 %181, label %200, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %20, align 4
  %184 = icmp slt i32 %183, 17
  br i1 %184, label %200, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %20, align 4
  %187 = icmp sgt i32 %186, 48
  br i1 %187, label %200, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %29, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %29, align 4
  %193 = icmp sgt i32 %192, 7
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %28, align 4
  %196 = icmp slt i32 %195, 17
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %28, align 4
  %199 = icmp sgt i32 %198, 30
  br i1 %199, label %200, label %202

200:                                              ; preds = %197, %194, %191, %188, %185, %182, %179, %137
  %201 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %260

202:                                              ; preds = %197
  %203 = load i32, i32* %20, align 4
  %204 = sub nsw i32 %203, 1
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %15, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 0
  store i8 %205, i8* %207, align 1
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* %23, align 4
  %210 = shl i32 %209, 4
  %211 = or i32 %208, %210
  %212 = trunc i32 %211 to i8
  %213 = load i8*, i8** %15, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  store i8 %212, i8* %214, align 1
  %215 = load i8*, i8** %15, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 2
  store i8 -122, i8* %216, align 1
  %217 = load i8*, i8** %15, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 3
  store i8 15, i8* %218, align 1
  %219 = load i8*, i8** %15, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 4
  store i8 31, i8* %220, align 1
  %221 = load i32, i32* %28, align 4
  %222 = sub nsw i32 %221, 1
  %223 = load i32, i32* %29, align 4
  %224 = shl i32 %223, 5
  %225 = or i32 %222, %224
  %226 = trunc i32 %225 to i8
  %227 = load i8*, i8** %15, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 5
  store i8 %226, i8* %228, align 1
  %229 = load i32, i32* %10, align 4
  %230 = icmp slt i32 %229, 400000000
  br i1 %230, label %231, label %234

231:                                              ; preds = %202
  %232 = load i8*, i8** %15, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 6
  store i8 -28, i8* %233, align 1
  br label %237

234:                                              ; preds = %202
  %235 = load i8*, i8** %15, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 6
  store i8 -12, i8* %236, align 1
  br label %237

237:                                              ; preds = %234, %231
  %238 = load i32, i32* %17, align 4
  %239 = add nsw i32 8, %238
  %240 = trunc i32 %239 to i8
  %241 = load i8*, i8** %15, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 7
  store i8 %240, i8* %242, align 1
  %243 = load i8*, i8** %15, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 8
  store i8 -61, i8* %244, align 1
  %245 = load i8*, i8** %15, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 9
  store i8 78, i8* %246, align 1
  %247 = load i8*, i8** %15, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 10
  store i8 -20, i8* %248, align 1
  %249 = load i32, i32* %30, align 4
  %250 = and i32 %249, 255
  %251 = trunc i32 %250 to i8
  %252 = load i8*, i8** %15, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 11
  store i8 %251, i8* %253, align 1
  %254 = load i32, i32* %30, align 4
  %255 = ashr i32 %254, 8
  %256 = or i32 %255, 128
  %257 = trunc i32 %256 to i8
  %258 = load i8*, i8** %15, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 12
  store i8 %257, i8* %259, align 1
  store i32 0, i32* %9, align 4
  br label %260

260:                                              ; preds = %237, %200
  %261 = load i32, i32* %9, align 4
  ret i32 %261
}

declare dso_local i32 @MT2032_SpurCheck(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
