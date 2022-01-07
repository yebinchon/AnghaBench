; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/ptrace/extr_scescx.c_decode_wait_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/ptrace/extr_scescx.c_decode_wait_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@decode_wait_status.c = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"CONT\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"EXIT(%d)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SIG(%s)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c",CORE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @decode_wait_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_wait_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8 0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_wait_status.c, i64 0, i64 0), align 16
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @WIFCONTINUED to i32 (i32, ...)*)(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  %9 = call i64 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_wait_status.c, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 128)
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @WIFEXITED to i32 (i32, ...)*)(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %20

18:                                               ; preds = %14
  %19 = call i64 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_wait_status.c, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 128)
  br label %20

20:                                               ; preds = %18, %17
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %22 = load i32, i32* %2, align 4
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @WEXITSTATUS to i32 (i32, ...)*)(i32 %22)
  %24 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %21, i64 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %26 = call i64 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_wait_status.c, i64 0, i64 0), i8* %25, i64 128)
  br label %27

27:                                               ; preds = %20, %10
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @WIFSIGNALED to i32 (i32, ...)*)(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %37

35:                                               ; preds = %31
  %36 = call i64 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_wait_status.c, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 128)
  br label %37

37:                                               ; preds = %35, %34
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @WTERMSIG to i32 (i32, ...)*)(i32 %39)
  %41 = call i32 (i32, ...) bitcast (i32 (...)* @strsignal to i32 (i32, ...)*)(i32 %40)
  %42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %38, i64 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %44 = call i64 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_wait_status.c, i64 0, i64 0), i8* %43, i64 128)
  %45 = load i32, i32* %2, align 4
  %46 = call i32 (i32, ...) bitcast (i32 (...)* @WCOREDUMP to i32 (i32, ...)*)(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = call i64 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_wait_status.c, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 128)
  br label %50

50:                                               ; preds = %48, %37
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @WIFSTOPPED to i32 (i32, ...)*)(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %61

59:                                               ; preds = %55
  %60 = call i64 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_wait_status.c, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 128)
  br label %61

61:                                               ; preds = %59, %58
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %63 = load i32, i32* %2, align 4
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @WSTOPSIG to i32 (i32, ...)*)(i32 %63)
  %65 = call i32 (i32, ...) bitcast (i32 (...)* @strsignal to i32 (i32, ...)*)(i32 %64)
  %66 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %62, i64 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %68 = call i64 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_wait_status.c, i64 0, i64 0), i8* %67, i64 128)
  br label %69

69:                                               ; preds = %61, %51
  ret i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_wait_status.c, i64 0, i64 0)
}

declare dso_local i32 @WIFCONTINUED(...) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @WIFEXITED(...) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @WEXITSTATUS(...) #1

declare dso_local i32 @WIFSIGNALED(...) #1

declare dso_local i32 @strsignal(...) #1

declare dso_local i32 @WTERMSIG(...) #1

declare dso_local i32 @WCOREDUMP(...) #1

declare dso_local i32 @WIFSTOPPED(...) #1

declare dso_local i32 @WSTOPSIG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
