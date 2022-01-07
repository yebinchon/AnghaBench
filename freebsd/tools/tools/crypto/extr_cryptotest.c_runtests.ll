; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptotest.c_runtests.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptotest.c_runtests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i32, i8*, i64 }
%struct.timeval = type { double, i64 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [83 x i8] c"skipping blocksize %u 'cuz not a multiple of %s blocksize %u (or %s blocksize %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@CPU_LEVEL_WHICH = common dso_local global i32 0, align 4
@CPU_WHICH_PID = common dso_local global i32 0, align 4
@WAIT_MYPGRP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"%8.3lf sec, %7d %6s%s%6s crypts, %7d bytes, %8.0lf byte/sec, %7.1lf Mb/sec\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @runtests(%struct.alg* %0, %struct.alg* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.alg*, align 8
  %9 = alloca %struct.alg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.timeval*, align 8
  %20 = alloca %struct.timeval, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.alg* %0, %struct.alg** %8, align 8
  store %struct.alg* %1, %struct.alg** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.alg*, %struct.alg** %9, align 8
  %26 = getelementptr inbounds %struct.alg, %struct.alg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = srem i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %7
  %31 = load %struct.alg*, %struct.alg** %8, align 8
  %32 = icmp ne %struct.alg* %31, null
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.alg*, %struct.alg** %8, align 8
  %36 = getelementptr inbounds %struct.alg, %struct.alg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = srem i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %33, %7
  %41 = load i64, i64* @verbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = sitofp i32 %44 to double
  %46 = load %struct.alg*, %struct.alg** %9, align 8
  %47 = getelementptr inbounds %struct.alg, %struct.alg* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.alg*, %struct.alg** %9, align 8
  %50 = getelementptr inbounds %struct.alg, %struct.alg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.alg*, %struct.alg** %8, align 8
  %53 = icmp ne %struct.alg* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.alg*, %struct.alg** %8, align 8
  %56 = getelementptr inbounds %struct.alg, %struct.alg* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  br label %59

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i8* [ %57, %54 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %58 ]
  %61 = load %struct.alg*, %struct.alg** %8, align 8
  %62 = icmp ne %struct.alg* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.alg*, %struct.alg** %8, align 8
  %65 = getelementptr inbounds %struct.alg, %struct.alg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  br label %68

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i32 [ %66, %63 ], [ 0, %67 ]
  %70 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), double %45, i8* %48, i32 %51, i8* %60, i32 %69)
  br label %71

71:                                               ; preds = %68, %40
  br label %224

72:                                               ; preds = %33, %30
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 16
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @PROT_READ, align 4
  %78 = load i32, i32* @PROT_WRITE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @MAP_ANON, align 4
  %81 = load i32, i32* @MAP_SHARED, align 4
  %82 = or i32 %80, %81
  %83 = call i8* @mmap(i32* null, i32 %76, i32 %79, i32 %82, i32 -1, i32 0)
  store i8* %83, i8** %18, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = load i8*, i8** @MAP_FAILED, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %224

89:                                               ; preds = %72
  %90 = load i8*, i8** %18, align 8
  %91 = bitcast i8* %90 to %struct.timeval*
  store %struct.timeval* %91, %struct.timeval** %19, align 8
  %92 = load i32, i32* %13, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %131

94:                                               ; preds = %89
  store i32 0, i32* %15, align 4
  br label %95

95:                                               ; preds = %121, %94
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %95
  %100 = call i64 (...) @fork()
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %99
  %103 = call i32 @CPU_ZERO(i32* %22)
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @CPU_SET(i32 %104, i32* %22)
  %106 = load i32, i32* @CPU_LEVEL_WHICH, align 4
  %107 = load i32, i32* @CPU_WHICH_PID, align 4
  %108 = call i32 @cpuset_setaffinity(i32 %106, i32 %107, i32 -1, i32 4, i32* %22)
  %109 = load %struct.alg*, %struct.alg** %8, align 8
  %110 = load %struct.alg*, %struct.alg** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.timeval*, %struct.timeval** %19, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.timeval, %struct.timeval* %114, i64 %116
  %118 = call i32 @runtest(%struct.alg* %109, %struct.alg* %110, i32 %111, i32 %112, i32 %113, %struct.timeval* %117)
  %119 = call i32 @exit(i32 0) #3
  unreachable

120:                                              ; preds = %99
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %95

124:                                              ; preds = %95
  br label %125

125:                                              ; preds = %129, %124
  %126 = load i32, i32* @WAIT_MYPGRP, align 4
  %127 = call i32 @waitpid(i32 %126, i32* %16, i32 0)
  %128 = icmp ne i32 %127, -1
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %125

130:                                              ; preds = %125
  br label %139

131:                                              ; preds = %89
  %132 = load %struct.alg*, %struct.alg** %8, align 8
  %133 = load %struct.alg*, %struct.alg** %9, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.timeval*, %struct.timeval** %19, align 8
  %138 = call i32 @runtest(%struct.alg* %132, %struct.alg* %133, i32 %134, i32 %135, i32 %136, %struct.timeval* %137)
  br label %139

139:                                              ; preds = %131, %130
  store double 0.000000e+00, double* %17, align 8
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %163, %139
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %166

144:                                              ; preds = %140
  %145 = load %struct.timeval*, %struct.timeval** %19, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.timeval, %struct.timeval* %145, i64 %147
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sitofp i64 %150 to double
  %152 = fmul double %151, 1.000000e+06
  %153 = load %struct.timeval*, %struct.timeval** %19, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.timeval, %struct.timeval* %153, i64 %155
  %157 = getelementptr inbounds %struct.timeval, %struct.timeval* %156, i32 0, i32 0
  %158 = load double, double* %157, align 8
  %159 = fadd double %152, %158
  %160 = fdiv double %159, 1.000000e+06
  %161 = load double, double* %17, align 8
  %162 = fadd double %161, %160
  store double %162, double* %17, align 8
  br label %163

163:                                              ; preds = %144
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %15, align 4
  br label %140

166:                                              ; preds = %140
  %167 = load double, double* %17, align 8
  %168 = fcmp une double %167, 0.000000e+00
  br i1 %168, label %169, label %221

169:                                              ; preds = %166
  %170 = load %struct.alg*, %struct.alg** %9, align 8
  %171 = getelementptr inbounds %struct.alg, %struct.alg* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* %10, align 4
  br label %179

176:                                              ; preds = %169
  %177 = load i32, i32* %10, align 4
  %178 = mul nsw i32 2, %177
  br label %179

179:                                              ; preds = %176, %174
  %180 = phi i32 [ %175, %174 ], [ %178, %176 ]
  store i32 %180, i32* %23, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %23, align 4
  %183 = mul nsw i32 %182, %181
  store i32 %183, i32* %23, align 4
  %184 = load double, double* %17, align 8
  %185 = load i32, i32* %23, align 4
  %186 = load %struct.alg*, %struct.alg** %9, align 8
  %187 = getelementptr inbounds %struct.alg, %struct.alg* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.alg*, %struct.alg** %8, align 8
  %190 = icmp ne %struct.alg* %189, null
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %193 = load %struct.alg*, %struct.alg** %8, align 8
  %194 = icmp ne %struct.alg* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %179
  %196 = load %struct.alg*, %struct.alg** %8, align 8
  %197 = getelementptr inbounds %struct.alg, %struct.alg* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  br label %200

199:                                              ; preds = %179
  br label %200

200:                                              ; preds = %199, %195
  %201 = phi i8* [ %198, %195 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %199 ]
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %23, align 4
  %204 = sitofp i32 %203 to double
  %205 = load i32, i32* %11, align 4
  %206 = sitofp i32 %205 to double
  %207 = fmul double %204, %206
  %208 = load double, double* %17, align 8
  %209 = fdiv double %207, %208
  %210 = load i32, i32* %23, align 4
  %211 = sitofp i32 %210 to double
  %212 = load i32, i32* %11, align 4
  %213 = sitofp i32 %212 to double
  %214 = fmul double %211, %213
  %215 = load double, double* %17, align 8
  %216 = fdiv double %214, %215
  %217 = fmul double %216, 8.000000e+00
  %218 = fdiv double %217, 1.024000e+03
  %219 = fdiv double %218, 1.024000e+03
  %220 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), double %184, i32 %185, i8* %188, i8* %192, i8* %201, i32 %202, double %209, double %219)
  br label %221

221:                                              ; preds = %200, %166
  %222 = load i32, i32* @stdout, align 4
  %223 = call i32 @fflush(i32 %222)
  br label %224

224:                                              ; preds = %221, %87, %71
  ret void
}

declare dso_local i32 @printf(i8*, double, ...) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @cpuset_setaffinity(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @runtest(%struct.alg*, %struct.alg*, i32, i32, i32, %struct.timeval*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
