; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_exec_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_exec_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Executing command: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"execvp()\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"waitpid() failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @exec_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca [3 x i32], align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %150

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @putchar(i8 signext 32)
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %13

41:                                               ; preds = %13
  %42 = call i32 @putchar(i8 signext 10)
  %43 = call i64 (...) @fork()
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %130

46:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %80, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i32, i32* @O_RDONLY, align 4
  %54 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %75, %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @close(i32 %73)
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %9, align 4
  br label %66

78:                                               ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %150

79:                                               ; preds = %50
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %47

83:                                               ; preds = %47
  %84 = load i32, i32* %4, align 4
  %85 = call i8** @calloc(i32 %84, i32 8)
  store i8** %85, i8*** %10, align 8
  %86 = load i8**, i8*** %10, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  %90 = call i32 @exit(i32 %89) #3
  unreachable

91:                                               ; preds = %83
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %118, %91
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @strdup(i8* %102)
  %104 = load i8**, i8*** %10, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* %103, i8** %107, align 8
  %108 = load i8**, i8*** %10, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %97
  %115 = load i32, i32* @EXIT_FAILURE, align 4
  %116 = call i32 @exit(i32 %115) #3
  unreachable

117:                                              ; preds = %97
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %92

121:                                              ; preds = %92
  %122 = load i8**, i8*** %10, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i8**, i8*** %10, align 8
  %126 = call i32 @execvp(i8* %124, i8** %125)
  %127 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @EXIT_FAILURE, align 4
  %129 = call i32 @exit(i32 %128) #3
  unreachable

130:                                              ; preds = %41
  %131 = load i64, i64* %6, align 8
  %132 = call i64 @waitpid(i64 %131, i32* %8, i32 0)
  store i64 %132, i64* %7, align 8
  %133 = load i64, i64* %7, align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, i32* @stderr, align 4
  %137 = load i32, i32* @errno, align 4
  %138 = call i8* @strerror(i32 %137)
  %139 = call i32 @fprintf(i32 %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %138)
  %140 = load i64, i64* %7, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %3, align 4
  br label %150

142:                                              ; preds = %130
  %143 = load i32, i32* %8, align 4
  %144 = call i64 @WIFEXITED(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @WEXITSTATUS(i32 %147)
  store i32 %148, i32* %3, align 4
  br label %150

149:                                              ; preds = %142
  store i32 -1, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %146, %135, %78, %25
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8** @calloc(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
