; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_getenv_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_getenv_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KENV_MNAMELEN = common dso_local global i32 0, align 4
@KENV_MVALLEN = common dso_local global i64 0, align 8
@SCHAR_MIN = common dso_local global i32 0, align 4
@SCHAR_MAX = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@SHRT_MIN = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getenv_array(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* @KENV_MNAMELEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @KENV_MVALLEN, align 8
  %27 = add nsw i64 %25, %26
  %28 = add nsw i64 %27, 1
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %14, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = trunc i64 %28 to i32
  %33 = call i64 @getenv_string(i8* %31, i8* %30, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %222

36:                                               ; preds = %6
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sdiv i32 %38, %37
  store i32 %39, i32* %10, align 4
  store i32 0, i32* %21, align 4
  store i8* %30, i8** %20, align 8
  br label %40

40:                                               ; preds = %209, %36
  %41 = load i8*, i8** %20, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %212

45:                                               ; preds = %40
  %46 = load i8*, i8** %20, align 8
  %47 = call i32 @strtoq(i8* %46, i8** %19, i32 0)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %221

54:                                               ; preds = %50, %45
  %55 = load i8*, i8** %20, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %221

59:                                               ; preds = %54
  %60 = load i8*, i8** %19, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %76 [
    i32 116, label %63
    i32 84, label %63
    i32 103, label %66
    i32 71, label %66
    i32 109, label %69
    i32 77, label %69
    i32 107, label %72
    i32 75, label %72
    i32 32, label %75
    i32 9, label %75
    i32 44, label %75
    i32 0, label %75
  ]

63:                                               ; preds = %59, %59
  store i32 40, i32* %16, align 4
  %64 = load i8*, i8** %19, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %19, align 8
  br label %77

66:                                               ; preds = %59, %59
  store i32 30, i32* %16, align 4
  %67 = load i8*, i8** %19, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %19, align 8
  br label %77

69:                                               ; preds = %59, %59
  store i32 20, i32* %16, align 4
  %70 = load i8*, i8** %19, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %19, align 8
  br label %77

72:                                               ; preds = %59, %59
  store i32 10, i32* %16, align 4
  %73 = load i8*, i8** %19, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %19, align 8
  br label %77

75:                                               ; preds = %59, %59, %59, %59
  store i32 0, i32* %16, align 4
  br label %77

76:                                               ; preds = %59
  br label %221

77:                                               ; preds = %75, %72, %69, %66, %63
  br label %78

78:                                               ; preds = %95, %77
  %79 = load i8*, i8** %19, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 9
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %19, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 44
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %19, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 32
  br label %93

93:                                               ; preds = %88, %83, %78
  %94 = phi i1 [ true, %83 ], [ true, %78 ], [ %92, %88 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i8*, i8** %19, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %19, align 8
  br label %78

98:                                               ; preds = %93
  %99 = load i8*, i8** %19, align 8
  store i8* %99, i8** %20, align 8
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = shl i32 %102, %101
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %16, align 4
  %106 = ashr i32 %104, %105
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %221

110:                                              ; preds = %98
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %221

115:                                              ; preds = %110
  %116 = load i32, i32* %12, align 4
  switch i32 %116, label %208 [
    i32 1, label %117
    i32 2, label %146
    i32 4, label %175
    i32 8, label %201
  ]

117:                                              ; preds = %115
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* @SCHAR_MIN, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* @SCHAR_MAX, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %120
  br label %221

129:                                              ; preds = %124
  br label %139

130:                                              ; preds = %117
  %131 = load i32, i32* %17, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @UCHAR_MAX, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %130
  br label %221

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138, %129
  %140 = load i32, i32* %17, align 4
  %141 = load i8*, i8** %9, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = load i32, i32* %21, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %140, i32* %145, align 4
  br label %209

146:                                              ; preds = %115
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @SHRT_MIN, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* @SHRT_MAX, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153, %149
  br label %221

158:                                              ; preds = %153
  br label %168

159:                                              ; preds = %146
  %160 = load i32, i32* %17, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* @USHRT_MAX, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162, %159
  br label %221

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %158
  %169 = load i32, i32* %17, align 4
  %170 = load i8*, i8** %9, align 8
  %171 = bitcast i8* %170 to i32*
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %169, i32* %174, align 4
  br label %209

175:                                              ; preds = %115
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* @INT_MIN, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* @INT_MAX, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182, %178
  br label %221

187:                                              ; preds = %182
  br label %194

188:                                              ; preds = %175
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* @UINT_MAX, align 4
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  br label %221

193:                                              ; preds = %188
  br label %194

194:                                              ; preds = %193, %187
  %195 = load i32, i32* %17, align 4
  %196 = load i8*, i8** %9, align 8
  %197 = bitcast i8* %196 to i32*
  %198 = load i32, i32* %21, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %195, i32* %200, align 4
  br label %209

201:                                              ; preds = %115
  %202 = load i32, i32* %17, align 4
  %203 = load i8*, i8** %9, align 8
  %204 = bitcast i8* %203 to i32*
  %205 = load i32, i32* %21, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %202, i32* %207, align 4
  br label %209

208:                                              ; preds = %115
  br label %221

209:                                              ; preds = %201, %194, %168, %139
  %210 = load i32, i32* %21, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %21, align 4
  br label %40

212:                                              ; preds = %40
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* %12, align 4
  %215 = mul nsw i32 %213, %214
  %216 = load i32*, i32** %11, align 8
  store i32 %215, i32* %216, align 4
  %217 = load i32, i32* %21, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %212
  store i32 1, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %222

220:                                              ; preds = %212
  br label %221

221:                                              ; preds = %220, %208, %192, %186, %166, %157, %137, %128, %114, %109, %76, %58, %53
  store i32 0, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %222

222:                                              ; preds = %221, %219, %35
  %223 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %7, align 4
  ret i32 %224
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getenv_string(i8*, i8*, i32) #2

declare dso_local i32 @strtoq(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
