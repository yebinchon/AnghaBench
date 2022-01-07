; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/seq/extr_seq.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/seq/extr_seq.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lconv = type { i8* }

@ZERO = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@decimal_point = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"+f:hs:t:w\00", align 1
@long_opts = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@SPACE = common dso_local global i8 0, align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"usage: %s [-w] [-f format] [-s string] [-t string] [first [incr]] last\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"zero %screment\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"needs positive increment\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"needs negative decrement\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"invalid format string: `%s'\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lconv*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %22 = load i8, i8* @ZERO, align 1
  store i8 %22, i8* %9, align 1
  store i8* null, i8** %10, align 8
  store double 1.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %14, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* null, i8** %7, align 8
  %23 = call %struct.lconv* (...) @localeconv()
  store %struct.lconv* %23, %struct.lconv** %8, align 8
  %24 = load %struct.lconv*, %struct.lconv** %8, align 8
  %25 = icmp ne %struct.lconv* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load %struct.lconv*, %struct.lconv** %8, align 8
  %28 = getelementptr inbounds %struct.lconv, %struct.lconv* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.lconv*, %struct.lconv** %8, align 8
  %33 = getelementptr inbounds %struct.lconv, %struct.lconv* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.lconv*, %struct.lconv** %8, align 8
  %41 = getelementptr inbounds %struct.lconv, %struct.lconv* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** @decimal_point, align 8
  br label %43

43:                                               ; preds = %39, %31, %26, %2
  br label %44

44:                                               ; preds = %89, %43
  %45 = load i32, i32* @optind, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* @optind, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @numeric(i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %4, align 4
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* @long_opts, align 4
  %60 = call i32 @getopt_long(i32 %57, i8** %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32* null)
  store i32 %60, i32* %19, align 4
  %61 = icmp ne i32 %60, -1
  br label %62

62:                                               ; preds = %56, %48, %44
  %63 = phi i1 [ false, %48 ], [ false, %44 ], [ %61, %56 ]
  br i1 %63, label %64, label %90

64:                                               ; preds = %62
  %65 = load i32, i32* %19, align 4
  switch i32 %65, label %86 [
    i32 102, label %66
    i32 115, label %68
    i32 116, label %71
    i32 119, label %74
    i32 104, label %85
  ]

66:                                               ; preds = %64
  %67 = load i8*, i8** @optarg, align 8
  store i8* %67, i8** %10, align 8
  store i32 0, i32* %21, align 4
  br label %89

68:                                               ; preds = %64
  %69 = load i8*, i8** @optarg, align 8
  %70 = call i8* @unescape(i8* %69)
  store i8* %70, i8** %6, align 8
  br label %89

71:                                               ; preds = %64
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i8* @unescape(i8* %72)
  store i8* %73, i8** %7, align 8
  br label %89

74:                                               ; preds = %64
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %21, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i8, i8* @SPACE, align 1
  store i8 %82, i8* %9, align 1
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %83, %74
  br label %89

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %64, %85
  %87 = load i32, i32* %20, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %20, align 4
  br label %89

89:                                               ; preds = %86, %84, %71, %68, %66
  br label %44

90:                                               ; preds = %62
  %91 = load i32, i32* @optind, align 4
  %92 = load i32, i32* %4, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @optind, align 4
  %95 = load i8**, i8*** %5, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8*, i8** %95, i64 %96
  store i8** %97, i8*** %5, align 8
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %103, label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %4, align 4
  %102 = icmp sgt i32 %101, 3
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %90
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %20, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %20, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* @stderr, align 4
  %111 = call i8* (...) @getprogname()
  %112 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  %113 = call i32 @exit(i32 1) #3
  unreachable

114:                                              ; preds = %106
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call double @e_atof(i8* %120)
  store double %121, double* %14, align 8
  %122 = load i32, i32* %4, align 4
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 0
  %127 = load i8*, i8** %126, align 8
  %128 = call double @e_atof(i8* %127)
  store double %128, double* %13, align 8
  br label %129

129:                                              ; preds = %124, %114
  %130 = load i32, i32* %4, align 4
  %131 = icmp sgt i32 %130, 2
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load i8**, i8*** %5, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 1
  %135 = load i8*, i8** %134, align 8
  %136 = call double @e_atof(i8* %135)
  store double %136, double* %15, align 8
  %137 = load double, double* %15, align 8
  %138 = fcmp oeq double %137, 0.000000e+00
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  %140 = load double, double* %13, align 8
  %141 = load double, double* %14, align 8
  %142 = fcmp olt double %140, %141
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %145 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %139, %132
  br label %147

147:                                              ; preds = %146, %129
  %148 = load double, double* %15, align 8
  %149 = fcmp oeq double %148, 0.000000e+00
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load double, double* %13, align 8
  %152 = load double, double* %14, align 8
  %153 = fcmp olt double %151, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, double 1.000000e+00, double -1.000000e+00
  store double %155, double* %15, align 8
  br label %156

156:                                              ; preds = %150, %147
  %157 = load double, double* %15, align 8
  %158 = fcmp ole double %157, 0.000000e+00
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load double, double* %13, align 8
  %161 = load double, double* %14, align 8
  %162 = fcmp olt double %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %159, %156
  %166 = load double, double* %15, align 8
  %167 = fcmp oge double %166, 0.000000e+00
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load double, double* %13, align 8
  %170 = load double, double* %14, align 8
  %171 = fcmp ogt double %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %168, %165
  %175 = load i8*, i8** %10, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %193

177:                                              ; preds = %174
  %178 = load i8*, i8** %10, align 8
  %179 = call i32 @valid_format(i8* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %10, align 8
  %183 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %181, %177
  %185 = load i8*, i8** %10, align 8
  %186 = call i8* @unescape(i8* %185)
  store i8* %186, i8** %10, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = call i32 @valid_format(i8* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %184
  %191 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %184
  br label %200

193:                                              ; preds = %174
  %194 = load double, double* %13, align 8
  %195 = load double, double* %15, align 8
  %196 = load double, double* %14, align 8
  %197 = load i32, i32* %21, align 4
  %198 = load i8, i8* %9, align 1
  %199 = call i8* @generate_format(double %194, double %195, double %196, i32 %197, i8 signext %198)
  store i8* %199, i8** %10, align 8
  br label %200

200:                                              ; preds = %193, %192
  store double 1.000000e+00, double* %18, align 8
  %201 = load double, double* %13, align 8
  store double %201, double* %17, align 8
  br label %202

202:                                              ; preds = %226, %200
  %203 = load double, double* %15, align 8
  %204 = fcmp ogt double %203, 0.000000e+00
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load double, double* %17, align 8
  %207 = load double, double* %14, align 8
  %208 = fcmp ole double %206, %207
  %209 = zext i1 %208 to i32
  br label %215

210:                                              ; preds = %202
  %211 = load double, double* %17, align 8
  %212 = load double, double* %14, align 8
  %213 = fcmp oge double %211, %212
  %214 = zext i1 %213 to i32
  br label %215

215:                                              ; preds = %210, %205
  %216 = phi i32 [ %209, %205 ], [ %214, %210 ]
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %233

218:                                              ; preds = %215
  %219 = load i8*, i8** %10, align 8
  %220 = load double, double* %17, align 8
  %221 = call i32 @printf(i8* %219, double %220)
  %222 = load i8*, i8** %6, align 8
  %223 = load i32, i32* @stdout, align 4
  %224 = call i32 @fputs(i8* %222, i32 %223)
  %225 = load double, double* %17, align 8
  store double %225, double* %16, align 8
  br label %226

226:                                              ; preds = %218
  %227 = load double, double* %13, align 8
  %228 = load double, double* %15, align 8
  %229 = load double, double* %18, align 8
  %230 = fadd double %229, 1.000000e+00
  store double %230, double* %18, align 8
  %231 = fmul double %228, %229
  %232 = fadd double %227, %231
  store double %232, double* %17, align 8
  br label %202

233:                                              ; preds = %215
  %234 = load i8*, i8** %10, align 8
  %235 = load double, double* %17, align 8
  %236 = call i32 @asprintf(i8** %11, i8* %234, double %235)
  %237 = load i8*, i8** %10, align 8
  %238 = load double, double* %14, align 8
  %239 = call i32 @asprintf(i8** %12, i8* %237, double %238)
  %240 = load i8*, i8** %11, align 8
  %241 = load i8*, i8** %12, align 8
  %242 = call i64 @strcmp(i8* %240, i8* %241)
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %233
  %245 = load double, double* %17, align 8
  %246 = load double, double* %16, align 8
  %247 = fcmp une double %245, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %244
  %249 = load i8*, i8** %12, align 8
  %250 = load i32, i32* @stdout, align 4
  %251 = call i32 @fputs(i8* %249, i32 %250)
  %252 = load i8*, i8** %6, align 8
  %253 = load i32, i32* @stdout, align 4
  %254 = call i32 @fputs(i8* %252, i32 %253)
  br label %255

255:                                              ; preds = %248, %244, %233
  %256 = load i8*, i8** %11, align 8
  %257 = call i32 @free(i8* %256)
  %258 = load i8*, i8** %12, align 8
  %259 = call i32 @free(i8* %258)
  %260 = load i8*, i8** %7, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = load i8*, i8** %7, align 8
  %264 = load i32, i32* @stdout, align 4
  %265 = call i32 @fputs(i8* %263, i32 %264)
  br label %266

266:                                              ; preds = %262, %255
  ret i32 0
}

declare dso_local %struct.lconv* @localeconv(...) #1

declare dso_local i32 @numeric(i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i8* @unescape(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local double @e_atof(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @valid_format(i8*) #1

declare dso_local i8* @generate_format(double, double, double, i32, i8 signext) #1

declare dso_local i32 @printf(i8*, double) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, double) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
