; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@len = common dso_local global i32* null, align 8
@J = common dso_local global i32* null, align 8
@diff_format = common dso_local global i64 0, align 8
@D_EDIT = common dso_local global i64 0, align 8
@D_IFDEF = common dso_local global i64 0, align 8
@D_GFORMAT = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@anychange = common dso_local global i64 0, align 8
@D_CONTEXT = common dso_local global i64 0, align 8
@D_UNIFIED = common dso_local global i64 0, align 8
@c = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*, i32*, i32)* @output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output(i8* %0, i32* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @rewind(i32* %16)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @rewind(i32* %18)
  %20 = load i32*, i32** @len, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** @J, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** @len, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32*, i32** @J, align 8
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load i64, i64* @diff_format, align 8
  %35 = load i64, i64* @D_EDIT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %119

37:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  br label %38

38:                                               ; preds = %115, %37
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %118

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load i32*, i32** @J, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @J, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = icmp eq i32 %52, %59
  br label %61

61:                                               ; preds = %47, %43
  %62 = phi i1 [ false, %43 ], [ %60, %47 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %43

66:                                               ; preds = %61
  %67 = load i32*, i32** @J, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %90, %66
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32*, i32** @J, align 8
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br label %88

88:                                               ; preds = %80, %76
  %89 = phi i1 [ false, %76 ], [ %87, %80 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %76

93:                                               ; preds = %88
  %94 = load i32*, i32** @J, align 8
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** @J, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  %106 = load i8*, i8** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @change(i8* %106, i32* %107, i8* %108, i32* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32* %10)
  br label %115

115:                                              ; preds = %93
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %38

118:                                              ; preds = %38
  br label %206

119:                                              ; preds = %5
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %202, %119
  %122 = load i32, i32* %12, align 4
  %123 = icmp sge i32 %122, 1
  br i1 %123, label %124, label %205

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %151, %124
  %126 = load i32, i32* %12, align 4
  %127 = icmp sge i32 %126, 1
  br i1 %127, label %128, label %149

128:                                              ; preds = %125
  %129 = load i32*, i32** @J, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** @J, align 8
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 1
  %141 = icmp eq i32 %133, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %128
  %143 = load i32*, i32** @J, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br label %149

149:                                              ; preds = %142, %128, %125
  %150 = phi i1 [ false, %128 ], [ false, %125 ], [ %148, %142 ]
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %12, align 4
  br label %125

154:                                              ; preds = %149
  %155 = load i32*, i32** @J, align 8
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %164

164:                                              ; preds = %177, %154
  %165 = load i32, i32* %13, align 4
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load i32*, i32** @J, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 0
  br label %175

175:                                              ; preds = %167, %164
  %176 = phi i1 [ false, %164 ], [ %174, %167 ]
  br i1 %176, label %177, label %180

177:                                              ; preds = %175
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %13, align 4
  br label %164

180:                                              ; preds = %175
  %181 = load i32*, i32** @J, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %15, align 4
  %189 = load i32*, i32** @J, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %188, i32* %192, align 4
  %193 = load i8*, i8** %6, align 8
  %194 = load i32*, i32** %7, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = load i32*, i32** %9, align 8
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @change(i8* %193, i32* %194, i8* %195, i32* %196, i32 %197, i32 %198, i32 %199, i32 %200, i32* %10)
  br label %202

202:                                              ; preds = %180
  %203 = load i32, i32* %13, align 4
  %204 = sub nsw i32 %203, 1
  store i32 %204, i32* %12, align 4
  br label %121

205:                                              ; preds = %121
  br label %206

206:                                              ; preds = %205, %118
  %207 = load i32, i32* %11, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %206
  %210 = load i8*, i8** %6, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = load i8*, i8** %8, align 8
  %213 = load i32*, i32** %9, align 8
  %214 = load i32*, i32** @len, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @change(i8* %210, i32* %211, i8* %212, i32* %213, i32 1, i32 0, i32 1, i32 %216, i32* %10)
  br label %218

218:                                              ; preds = %209, %206
  %219 = load i64, i64* @diff_format, align 8
  %220 = load i64, i64* @D_IFDEF, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = load i64, i64* @diff_format, align 8
  %224 = load i64, i64* @D_GFORMAT, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %222, %218
  br label %227

227:                                              ; preds = %233, %226
  %228 = load i32*, i32** %7, align 8
  %229 = call i32 @getc(i32* %228)
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* @EOF, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  br label %259

233:                                              ; preds = %227
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @diff_output(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %234)
  br label %227

236:                                              ; preds = %222
  %237 = load i64, i64* @anychange, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %259

239:                                              ; preds = %236
  %240 = load i64, i64* @diff_format, align 8
  %241 = load i64, i64* @D_CONTEXT, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %239
  %244 = load i32*, i32** %7, align 8
  %245 = load i32*, i32** %9, align 8
  %246 = load i32, i32* %10, align 4
  %247 = call i32 @dump_context_vec(i32* %244, i32* %245, i32 %246)
  br label %258

248:                                              ; preds = %239
  %249 = load i64, i64* @diff_format, align 8
  %250 = load i64, i64* @D_UNIFIED, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %248
  %253 = load i32*, i32** %7, align 8
  %254 = load i32*, i32** %9, align 8
  %255 = load i32, i32* %10, align 4
  %256 = call i32 @dump_unified_vec(i32* %253, i32* %254, i32 %255)
  br label %257

257:                                              ; preds = %252, %248
  br label %258

258:                                              ; preds = %257, %243
  br label %259

259:                                              ; preds = %232, %258, %236
  ret void
}

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @change(i8*, i32*, i8*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @diff_output(i8*, i32) #1

declare dso_local i32 @dump_context_vec(i32*, i32*, i32) #1

declare dso_local i32 @dump_unified_vec(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
