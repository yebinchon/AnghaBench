; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_compress.c_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_compress.c_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { float, i32 }

@force = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: file would grow; left unmodified\0A\00", align 1
@eval = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%.0f%% compression\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%.0f%% expansion\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1024 x i32], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @stat(i8* %16, %struct.stat* %9)
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @force, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISREG(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @permission(i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %205

36:                                               ; preds = %31, %26, %23, %3
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @S_ISREG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ true, %36 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %14, align 4
  store i32 %46, i32* %13, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %10, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32* @fopen(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %48, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %205

53:                                               ; preds = %44
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @stat(i8* %54, %struct.stat* %8)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %187

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISREG(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %65, %60
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32* @zopen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  store i32* %69, i32** %11, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %187

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %90, %74
  %76 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 0
  %77 = load i32*, i32** %10, align 8
  %78 = call i64 @fread(i32* %76, i32 1, i32 4096, i32* %77)
  store i64 %78, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 0
  %82 = load i64, i64* %7, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i64 @fwrite(i32* %81, i32 1, i64 %82, i32* %83)
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  br label %187

90:                                               ; preds = %80
  br label %75

91:                                               ; preds = %75
  %92 = load i32*, i32** %10, align 8
  %93 = call i64 @ferror(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32*, i32** %10, align 8
  %97 = call i64 @fclose(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95, %91
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %100)
  br label %187

102:                                              ; preds = %95
  store i32* null, i32** %10, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call i64 @fclose(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %107)
  br label %187

109:                                              ; preds = %102
  store i32* null, i32** %11, align 8
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %186

112:                                              ; preds = %109
  %113 = load i8*, i8** %5, align 8
  %114 = call i64 @stat(i8* %113, %struct.stat* %9)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i8*, i8** %5, align 8
  %118 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %117)
  br label %187

119:                                              ; preds = %112
  %120 = load i32, i32* @force, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %143, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %124 = load float, float* %123, align 4
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %126 = load float, float* %125, align 4
  %127 = fcmp oge float %124, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %122
  %129 = load i64, i64* @verbose, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* @stderr, align 4
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %131, %128
  store i32 2, i32* @eval, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = call i64 @unlink(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %139, %135
  br label %187

143:                                              ; preds = %122, %119
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 @setfile(i8* %144, %struct.stat* %8)
  %146 = load i8*, i8** %4, align 8
  %147 = call i64 @unlink(i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %149, %143
  %153 = load i64, i64* @verbose, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %185

155:                                              ; preds = %152
  %156 = load i32, i32* @stderr, align 4
  %157 = load i8*, i8** %5, align 8
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %157)
  %159 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %160 = load float, float* %159, align 4
  %161 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %162 = load float, float* %161, align 4
  %163 = fcmp ogt float %160, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %155
  %165 = load i32, i32* @stderr, align 4
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %167 = load float, float* %166, align 4
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %169 = load float, float* %168, align 4
  %170 = fdiv float %167, %169
  %171 = fpext float %170 to double
  %172 = fmul double %171, 1.000000e+02
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), double %172)
  br label %184

174:                                              ; preds = %155
  %175 = load i32, i32* @stderr, align 4
  %176 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %177 = load float, float* %176, align 4
  %178 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %179 = load float, float* %178, align 4
  %180 = fdiv float %177, %179
  %181 = fpext float %180 to double
  %182 = fmul double %181, 1.000000e+02
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), double %182)
  br label %184

184:                                              ; preds = %174, %164
  br label %185

185:                                              ; preds = %184, %152
  br label %186

186:                                              ; preds = %185, %109
  br label %205

187:                                              ; preds = %142, %116, %106, %99, %87, %71, %57
  %188 = load i32*, i32** %11, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i8*, i8** %5, align 8
  %195 = call i64 @unlink(i8* %194)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i32*, i32** %11, align 8
  %198 = call i64 @fclose(i32* %197)
  br label %199

199:                                              ; preds = %196, %187
  %200 = load i32*, i32** %10, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32*, i32** %10, align 8
  %204 = call i64 @fclose(i32* %203)
  br label %205

205:                                              ; preds = %35, %50, %186, %202, %199
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @permission(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @cwarn(i8*, i8*) #1

declare dso_local i32* @zopen(i8*, i8*, i32) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i64 @fwrite(i32*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @setfile(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
