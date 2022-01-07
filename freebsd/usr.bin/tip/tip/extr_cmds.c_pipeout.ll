; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_pipeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_pipeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Local command? \00", align 1
@tipout_pid = common dso_local global i32 0, align 4
@SIGIOT = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@defchars = common dso_local global i32 0, align 4
@repdes = common dso_local global i32* null, align 8
@ccc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"can't fork!\0D\0A\00", align 1
@FD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"can't find `%s'\0D\0A\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"away for \00", align 1
@fildes = common dso_local global i32* null, align 8
@term = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pipeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call i64 @time(i32* null)
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @putchar(i32 %10)
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %13 = call i64 @prompt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %12, i32 256)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %100

16:                                               ; preds = %1
  %17 = load i32, i32* @tipout_pid, align 4
  %18 = load i32, i32* @SIGIOT, align 4
  %19 = call i32 @kill(i32 %17, i32 %18)
  %20 = load i32, i32* @SIGINT, align 4
  %21 = load i32, i32* @SIG_IGN, align 4
  %22 = call i32 @signal(i32 %20, i32 %21)
  %23 = load i32, i32* @SIGQUIT, align 4
  %24 = load i32, i32* @SIG_IGN, align 4
  %25 = call i32 @signal(i32 %23, i32 %24)
  %26 = load i32, i32* @TCSAFLUSH, align 4
  %27 = call i32 @tcsetattr(i32 0, i32 %26, i32* @defchars)
  %28 = load i32*, i32** @repdes, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @read(i32 %30, i8* bitcast (i32* @ccc to i8*), i32 1)
  %32 = call i32 (...) @fork()
  store i32 %32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %77

36:                                               ; preds = %16
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = call i64 @time(i32* null)
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %50, %39
  %42 = call i32 @wait(i32* %4)
  store i32 %42, i32* %5, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %45, %46
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %41

51:                                               ; preds = %48
  br label %76

52:                                               ; preds = %36
  %53 = load i32, i32* @FD, align 4
  %54 = call i32 @dup2(i32 %53, i32 1)
  store i32 3, i32* %8, align 4
  br label %55

55:                                               ; preds = %61, %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 20
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @close(i32 %59)
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %55

64:                                               ; preds = %55
  %65 = load i32, i32* @SIGINT, align 4
  %66 = load i32, i32* @SIG_DFL, align 4
  %67 = call i32 @signal(i32 %65, i32 %66)
  %68 = load i32, i32* @SIGQUIT, align 4
  %69 = load i32, i32* @SIG_DFL, align 4
  %70 = call i32 @signal(i32 %68, i32 %69)
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %72 = call i32 @execute(i8* %71)
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  %75 = call i32 @exit(i32 0) #3
  unreachable

76:                                               ; preds = %51
  br label %77

77:                                               ; preds = %76, %34
  %78 = load i32, i32* @VERBOSE, align 4
  %79 = call i32 @value(i32 %78)
  %80 = call i64 @boolean(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = call i64 @time(i32* null)
  %84 = load i64, i64* %7, align 8
  %85 = sub nsw i64 %83, %84
  %86 = call i32 @prtime(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32*, i32** @fildes, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @write(i32 %90, i8* bitcast (i32* @ccc to i8*), i32 1)
  %92 = load i32, i32* @TCSAFLUSH, align 4
  %93 = call i32 @tcsetattr(i32 0, i32 %92, i32* @term)
  %94 = load i32, i32* @SIGINT, align 4
  %95 = load i32, i32* @SIG_DFL, align 4
  %96 = call i32 @signal(i32 %94, i32 %95)
  %97 = load i32, i32* @SIGQUIT, align 4
  %98 = load i32, i32* @SIG_DFL, align 4
  %99 = call i32 @signal(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %87, %15
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i64 @prompt(i8*, i8*, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execute(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @prtime(i8*, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
