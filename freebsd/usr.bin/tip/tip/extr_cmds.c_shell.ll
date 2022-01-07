; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_shell.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"[sh]\0D\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\0D\0A!\0D\0A\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4
@SHELL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"\0D\0Acan't execl!\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shell(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @SIGINT, align 4
  %8 = load i32, i32* @SIG_IGN, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = load i32, i32* @SIGQUIT, align 4
  %11 = load i32, i32* @SIG_IGN, align 4
  %12 = call i32 @signal(i32 %10, i32 %11)
  %13 = call i32 (...) @unraw()
  %14 = call i64 (...) @fork()
  store i64 %14, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %21, %16
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @wait(i32* %3)
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %17

22:                                               ; preds = %17
  %23 = call i32 (...) @raw()
  %24 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @SIGINT, align 4
  %26 = load i32, i32* @SIG_DFL, align 4
  %27 = call i32 @signal(i32 %25, i32 %26)
  %28 = load i32, i32* @SIGQUIT, align 4
  %29 = load i32, i32* @SIG_DFL, align 4
  %30 = call i32 @signal(i32 %28, i32 %29)
  ret void

31:                                               ; preds = %1
  %32 = load i32, i32* @SIGQUIT, align 4
  %33 = load i32, i32* @SIG_DFL, align 4
  %34 = call i32 @signal(i32 %32, i32 %33)
  %35 = load i32, i32* @SIGINT, align 4
  %36 = load i32, i32* @SIG_DFL, align 4
  %37 = call i32 @signal(i32 %35, i32 %36)
  %38 = load i32, i32* @SHELL, align 4
  %39 = call i8* @value(i32 %38)
  %40 = call i8* @strrchr(i8* %39, i8 signext 47)
  store i8* %40, i8** %4, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @SHELL, align 4
  %44 = call i8* @value(i32 %43)
  store i8* %44, i8** %4, align 8
  br label %48

45:                                               ; preds = %31
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = call i32 (...) @shell_uid()
  %50 = load i32, i32* @SHELL, align 4
  %51 = call i8* @value(i32 %50)
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @execl(i8* %51, i8* %52, i8* null)
  %54 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @unraw(...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i64 @wait(i32*) #1

declare dso_local i32 @raw(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @value(i32) #1

declare dso_local i32 @shell_uid(...) #1

declare dso_local i32 @execl(i8*, i8*, i8*) #1

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
