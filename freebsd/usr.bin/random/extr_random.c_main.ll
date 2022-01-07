; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/random/extr_random.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/random/extr_random.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/dev/fd/0\00", align 1
@RANDOM_TYPE_UNSET = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ef:hlruUw\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@RANDOM_TYPE_LINES = common dso_local global i32 0, align 4
@RANDOM_TYPE_WORDS = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"denominator is not valid.\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"denominator must be <= 256 for random exit.\00", align 1
@stdout = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@RANDOM_MAX_PLUS1 = common dso_local global double 0.000000e+00, align 8
@EOF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @RANDOM_TYPE_UNSET, align 4
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %14, align 4
  %19 = load i32, i32* @LC_CTYPE, align 4
  %20 = call i32 @setlocale(i32 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %46, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %43 [
    i32 101, label %28
    i32 102, label %29
    i32 108, label %36
    i32 114, label %38
    i32 117, label %39
    i32 85, label %40
    i32 119, label %41
    i32 63, label %44
  ]

28:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %46

29:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %17, align 8
  br label %35

35:                                               ; preds = %33, %29
  br label %46

36:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  %37 = load i32, i32* @RANDOM_TYPE_LINES, align 4
  store i32 %37, i32* %11, align 4
  br label %46

38:                                               ; preds = %26
  store i32 1, i32* %15, align 4
  br label %46

39:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %46

40:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %46

41:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  %42 = load i32, i32* @RANDOM_TYPE_WORDS, align 4
  store i32 %42, i32* %11, align 4
  br label %46

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %26, %43
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %41, %40, %39, %38, %36, %35, %28
  br label %21

47:                                               ; preds = %21
  %48 = load i64, i64* @optind, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  %53 = load i64, i64* @optind, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 %53
  store i8** %55, i8*** %5, align 8
  %56 = load i32, i32* %4, align 4
  switch i32 %56, label %93 [
    i32 0, label %57
    i32 1, label %63
  ]

57:                                               ; preds = %47
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 2
  %62 = sitofp i32 %61 to double
  store double %62, double* %6, align 8
  br label %95

63:                                               ; preds = %47
  store i32 0, i32* @errno, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call double @strtod(i8* %65, i8** %16)
  store double %66, double* %6, align 8
  %67 = load i32, i32* @errno, align 4
  %68 = load i32, i32* @ERANGE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %63
  %75 = load double, double* %6, align 8
  %76 = fcmp ole double %75, 0.000000e+00
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %16, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77, %74
  %83 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %77
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load double, double* %6, align 8
  %89 = fcmp ogt double %88, 2.560000e+02
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %87, %84
  br label %95

93:                                               ; preds = %47
  %94 = call i32 (...) @usage()
  br label %95

95:                                               ; preds = %93, %92, %57
  %96 = call i32 (...) @srandomdev()
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @stdout, align 4
  %101 = call i32 @setbuf(i32 %100, i32* null)
  br label %102

102:                                              ; preds = %99, %95
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = load i8*, i8** %17, align 8
  %107 = load i32, i32* @O_RDONLY, align 4
  %108 = call i32 @open(i8* %106, i32 %107, i32 0)
  store i32 %108, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i8*, i8** %17, align 8
  %112 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load double, double* %6, align 8
  %118 = call i32 @randomize_fd(i32 %114, i32 %115, i32 %116, double %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %3, align 4
  br label %180

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %102
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load double, double* %6, align 8
  %129 = call double (...) @random()
  %130 = fmul double %128, %129
  %131 = load double, double* @RANDOM_MAX_PLUS1, align 8
  %132 = fdiv double %130, %131
  %133 = fptosi double %132 to i32
  store i32 %133, i32* %3, align 4
  br label %180

134:                                              ; preds = %124
  %135 = load double, double* %6, align 8
  %136 = call double (...) @random()
  %137 = fmul double %135, %136
  %138 = load double, double* @RANDOM_MAX_PLUS1, align 8
  %139 = fdiv double %137, %138
  %140 = fptosi double %139 to i32
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %171, %134
  %144 = call i32 (...) @getchar()
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* @EOF, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %172

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @putchar(i32 %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* %7, align 4
  %155 = icmp eq i32 %154, 10
  br i1 %155, label %156, label %171

156:                                              ; preds = %153
  %157 = load i32, i32* @stdout, align 4
  %158 = call i64 @ferror(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %156
  %163 = load double, double* %6, align 8
  %164 = call double (...) @random()
  %165 = fmul double %163, %164
  %166 = load double, double* @RANDOM_MAX_PLUS1, align 8
  %167 = fdiv double %165, %166
  %168 = fptosi double %167 to i32
  %169 = icmp eq i32 %168, 0
  %170 = zext i1 %169 to i32
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %162, %153
  br label %143

172:                                              ; preds = %143
  %173 = load i32, i32* @stdin, align 4
  %174 = call i64 @ferror(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %172
  %179 = call i32 @exit(i32 0) #3
  unreachable

180:                                              ; preds = %127, %121
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @srandomdev(...) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @randomize_fd(i32, i32, i32, double) #1

declare dso_local double @random(...) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i64 @ferror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
