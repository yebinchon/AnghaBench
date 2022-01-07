; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_set.c_set_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_set.c_set_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@PC = common dso_local global i8 0, align 1
@isreset = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@outc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@stderr = common dso_local global i32 0, align 4
@OCRNL = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@ONLRET = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@TAB3 = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@oldmode = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  store i8* %4, i8** %1, align 8
  %5 = call i64 @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %1)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %9 = load i8, i8* %8, align 16
  store i8 %9, i8* @PC, align 1
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 (...) @set_tabs()
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @isreset, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  store i8* %15, i8** %1, align 8
  %16 = call i64 @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = call i64 @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %23 = load i32, i32* @outc, align 4
  %24 = call i32 @tputs(i8* %22, i32 0, i32 %23)
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  store i8* %26, i8** %1, align 8
  %27 = call i64 @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = call i64 @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %34 = call i32 @cat(i8* %33)
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @putc(i8 signext 13, i32 %40)
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fflush(i32 %42)
  %44 = call i32 @sleep(i32 1)
  br label %45

45:                                               ; preds = %39, %36
  ret void
}

declare dso_local i64 @tgetstr(i8*, i8**) #1

declare dso_local i32 @set_tabs(...) #1

declare dso_local i32 @tputs(i8*, i32, i32) #1

declare dso_local i32 @cat(i8*) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
