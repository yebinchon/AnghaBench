; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/env/extr_env.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/env/extr_env.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"-0iP:S:u:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@env_verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"#env unset:\09%s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"unsetenv %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"#env verbosity now at %d\0A\00", align 1
@environ = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"#env clearing environ\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"#env setenv:\09%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"setenv %s\00", align 1
@EXIT_CANCELED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"cannot specify command with -0\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"#env executing:\09%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"#env    arg[%d]=\09'%s'\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EXIT_ENOENT = common dso_local global i32 0, align 4
@EXIT_CANNOT_INVOKE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8, align 1
  %11 = alloca [1 x i8*], align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %13, align 4
  store i8 10, i8* %10, align 1
  br label %15

15:                                               ; preds = %60, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %12, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %61

20:                                               ; preds = %15
  %21 = load i32, i32* %12, align 4
  switch i32 %21, label %58 [
    i32 45, label %22
    i32 105, label %22
    i32 48, label %23
    i32 80, label %24
    i32 83, label %27
    i32 117, label %30
    i32 118, label %47
    i32 63, label %57
  ]

22:                                               ; preds = %20, %20
  store i32 1, i32* %13, align 4
  br label %60

23:                                               ; preds = %20
  store i8 0, i8* %10, align 1
  br label %60

24:                                               ; preds = %20
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i8* @strdup(i8* %25)
  store i8* %26, i8** %6, align 8
  br label %60

27:                                               ; preds = %20
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 @split_spaces(i8* %28, i32* @optind, i32* %4, i8*** %5)
  br label %60

30:                                               ; preds = %20
  %31 = load i32, i32* @env_verbosity, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i32 @unsetenv(i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 @err(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %42, %37
  br label %60

47:                                               ; preds = %20
  %48 = load i32, i32* @env_verbosity, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @env_verbosity, align 4
  %50 = load i32, i32* @env_verbosity, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* @env_verbosity, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  br label %60

57:                                               ; preds = %20
  br label %58

58:                                               ; preds = %20, %57
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %56, %46, %27, %24, %23, %22
  br label %15

61:                                               ; preds = %15
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = getelementptr inbounds [1 x i8*], [1 x i8*]* %11, i64 0, i64 0
  store i8** %65, i8*** @environ, align 8
  %66 = getelementptr inbounds [1 x i8*], [1 x i8*]* %11, i64 0, i64 0
  store i8* null, i8** %66, align 8
  %67 = load i32, i32* @env_verbosity, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72, %61
  %74 = load i32, i32* @optind, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  store i8** %77, i8*** %5, align 8
  br label %78

78:                                               ; preds = %113, %73
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i8**, i8*** %5, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 61)
  store i8* %85, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i1 [ false, %78 ], [ %86, %82 ]
  br i1 %88, label %89, label %116

89:                                               ; preds = %87
  %90 = load i32, i32* @env_verbosity, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8**, i8*** %5, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i8*, i8** %8, align 8
  store i8 0, i8* %98, align 1
  %99 = load i8**, i8*** %5, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = call i32 @setenv(i8* %100, i8* %102, i32 1)
  store i32 %103, i32* %14, align 4
  %104 = load i8*, i8** %8, align 8
  store i8 61, i8* %104, align 1
  %105 = load i32, i32* %14, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load i32, i32* @EXIT_FAILURE, align 4
  %109 = load i8**, i8*** %5, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @err(i32 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %107, %97
  br label %113

113:                                              ; preds = %112
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %5, align 8
  br label %78

116:                                              ; preds = %87
  %117 = load i8**, i8*** %5, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %181

120:                                              ; preds = %116
  %121 = load i8, i8* %10, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* @EXIT_CANCELED, align 4
  %126 = call i32 @errx(i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %120
  %128 = load i8*, i8** %6, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i8*, i8** %6, align 8
  %132 = load i8**, i8*** %5, align 8
  %133 = call i32 @search_paths(i8* %131, i8** %132)
  br label %134

134:                                              ; preds = %130, %127
  %135 = load i32, i32* @env_verbosity, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %164

137:                                              ; preds = %134
  %138 = load i32, i32* @stderr, align 4
  %139 = load i8**, i8*** %5, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %140)
  %142 = load i8**, i8*** %5, align 8
  store i8** %142, i8*** %9, align 8
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %153, %137
  %144 = load i8**, i8*** %9, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load i32, i32* @stderr, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load i8**, i8*** %9, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %149, i8* %151)
  br label %153

153:                                              ; preds = %147
  %154 = load i8**, i8*** %9, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i32 1
  store i8** %155, i8*** %9, align 8
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %4, align 4
  br label %143

158:                                              ; preds = %143
  %159 = load i32, i32* @env_verbosity, align 4
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = call i32 @sleep(i32 1)
  br label %163

163:                                              ; preds = %161, %158
  br label %164

164:                                              ; preds = %163, %134
  %165 = load i8**, i8*** %5, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = load i8**, i8*** %5, align 8
  %168 = call i32 @execvp(i8* %166, i8** %167)
  %169 = load i64, i64* @errno, align 8
  %170 = load i64, i64* @ENOENT, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = load i32, i32* @EXIT_ENOENT, align 4
  br label %176

174:                                              ; preds = %164
  %175 = load i32, i32* @EXIT_CANNOT_INVOKE, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = load i8**, i8*** %5, align 8
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @err(i32 %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %176, %116
  %182 = load i8**, i8*** @environ, align 8
  store i8** %182, i8*** %7, align 8
  br label %183

183:                                              ; preds = %192, %181
  %184 = load i8**, i8*** %7, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %195

187:                                              ; preds = %183
  %188 = load i8**, i8*** %7, align 8
  %189 = load i8*, i8** %188, align 8
  %190 = load i8, i8* %10, align 1
  %191 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %189, i8 signext %190)
  br label %192

192:                                              ; preds = %187
  %193 = load i8**, i8*** %7, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i32 1
  store i8** %194, i8*** %7, align 8
  br label %183

195:                                              ; preds = %183
  %196 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @split_spaces(i8*, i32*, i32*, i8***) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @search_paths(i8*, i8**) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @printf(i8*, i8*, i8 signext) #1

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
