; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_ldd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_ldd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"af:v\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"too many formats\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"-v may not be used with -f\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EDOOFUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown executable type\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"TRACE_LOADED_OBJECTS\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"TRACE_LOADED_OBJECTS_FMT1\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"TRACE_LOADED_OBJECTS_FMT2\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"TRACE_LOADED_OBJECTS_PROGNAME\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"TRACE_LOADED_OBJECTS_ALL\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"%s: signal %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s: exit status %d\0A\00", align 1
@RTLD_TRACE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@error_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %6, align 8
  br label %17

17:                                               ; preds = %45, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %43 [
    i32 97, label %24
    i32 102, label %27
    i32 118, label %40
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %45

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** %7, align 8
  br label %39

37:                                               ; preds = %27
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %37, %35
  br label %45

40:                                               ; preds = %22
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %45

43:                                               ; preds = %22
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %40, %39, %24
  br label %17

46:                                               ; preds = %17
  %47 = load i64, i64* @optind, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = load i64, i64* @optind, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 %52
  store i8** %54, i8*** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57, %46
  %63 = load i32, i32* %4, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (...) @usage()
  br label %67

67:                                               ; preds = %65, %62
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %204, %67
  %69 = load i32, i32* %4, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %209

71:                                               ; preds = %68
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @O_RDONLY, align 4
  %75 = call i32 @open(i8* %73, i32 %74, i32 0)
  store i32 %75, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %204

83:                                               ; preds = %71
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @is_executable(i8* %85, i32 %86, i32* %14, i32* %16)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @close(i32 %88)
  %90 = load i32, i32* %15, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %204

95:                                               ; preds = %83
  %96 = load i32, i32* %16, align 4
  switch i32 %96, label %99 [
    i32 130, label %97
    i32 131, label %97
    i32 128, label %98
  ]

97:                                               ; preds = %95, %95
  br label %102

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %95, %98
  %100 = load i32, i32* @EDOOFUS, align 4
  %101 = call i32 @errx(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %97
  %103 = call i32 @LDD_SETENV(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %104 = load i8*, i8** %6, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @LDD_SETENV(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %107, i32 1)
  br label %109

109:                                              ; preds = %106, %102
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @LDD_SETENV(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %113, i32 1)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i8**, i8*** %5, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @LDD_SETENV(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %117, i32 1)
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = call i32 @LDD_SETENV(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 1)
  br label %134

123:                                              ; preds = %115
  %124 = load i8*, i8** %6, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i8*, i8** %7, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i8**, i8*** %5, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %129, %126, %123
  br label %134

134:                                              ; preds = %133, %121
  %135 = load i32, i32* @stdout, align 4
  %136 = call i32 @fflush(i32 %135)
  %137 = call i32 (...) @fork()
  switch i32 %137, label %140 [
    i32 -1, label %138
    i32 0, label %180
  ]

138:                                              ; preds = %134
  %139 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %203

140:                                              ; preds = %134
  %141 = call i32 @wait(i32* %13)
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %179

147:                                              ; preds = %140
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @WIFSIGNALED(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i32, i32* @stderr, align 4
  %153 = load i8**, i8*** %5, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @WTERMSIG(i32 %155)
  %157 = call i32 @fprintf(i32 %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* %154, i32 %156)
  %158 = load i32, i32* %8, align 4
  %159 = or i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %178

160:                                              ; preds = %147
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @WIFEXITED(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %160
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @WEXITSTATUS(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load i32, i32* @stderr, align 4
  %170 = load i8**, i8*** %5, align 8
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @WEXITSTATUS(i32 %172)
  %174 = call i32 @fprintf(i32 %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %171, i32 %173)
  %175 = load i32, i32* %8, align 4
  %176 = or i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %168, %164, %160
  br label %178

178:                                              ; preds = %177, %151
  br label %179

179:                                              ; preds = %178, %143
  br label %203

180:                                              ; preds = %134
  %181 = load i32, i32* %14, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load i8**, i8*** %5, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = load i8**, i8*** %5, align 8
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @execl(i8* %185, i8* %187, i8* null)
  %189 = load i8**, i8*** %5, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %190)
  br label %201

192:                                              ; preds = %180
  %193 = load i8**, i8*** %5, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* @RTLD_TRACE, align 4
  %196 = call i32 @dlopen(i8* %194, i32 %195)
  %197 = load i8**, i8*** %5, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (...) @dlerror()
  %200 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* %198, i32 %199)
  br label %201

201:                                              ; preds = %192, %183
  %202 = call i32 @_exit(i32 1) #3
  unreachable

203:                                              ; preds = %179, %138
  br label %204

204:                                              ; preds = %203, %92, %77
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %4, align 4
  %207 = load i8**, i8*** %5, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i32 1
  store i8** %208, i8*** %5, align 8
  br label %68

209:                                              ; preds = %68
  %210 = load i32, i32* %8, align 4
  ret i32 %210
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @is_executable(i8*, i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @LDD_SETENV(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @execl(i8*, i8*, i8*) #1

declare dso_local i32 @dlopen(i8*, i32) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

declare dso_local i32 @dlerror(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
