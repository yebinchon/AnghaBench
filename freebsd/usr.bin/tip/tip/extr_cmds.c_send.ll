; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FD = common dso_local global i32 0, align 4
@CDELAY = common dso_local global i32 0, align 4
@ECHOCHECK = common dso_local global i32 0, align 4
@LDELAY = common dso_local global i32 0, align 4
@timedout = common dso_local global i64 0, align 8
@ETIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0D\0Atimeout error (%s)\0D\0A\00", align 1
@null = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %3, align 1
  %7 = load i32, i32* @FD, align 4
  %8 = call i32 @parwrite(i32 %7, i8* %3, i32 1)
  %9 = load i32, i32* @CDELAY, align 4
  %10 = call i32 @value(i32 %9)
  %11 = call i64 @number(i32 %10)
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 13
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @CDELAY, align 4
  %18 = call i32 @value(i32 %17)
  %19 = call i64 @number(i32 %18)
  %20 = call i32 @usleep(i64 %19)
  br label %21

21:                                               ; preds = %16, %13, %1
  %22 = load i32, i32* @ECHOCHECK, align 4
  %23 = call i32 @value(i32 %22)
  %24 = call i32 @boolean(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @LDELAY, align 4
  %28 = call i32 @value(i32 %27)
  %29 = call i64 @number(i32 %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 13
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* @LDELAY, align 4
  %36 = call i32 @value(i32 %35)
  %37 = call i64 @number(i32 %36)
  %38 = call i32 @usleep(i64 %37)
  br label %39

39:                                               ; preds = %34, %31, %26
  br label %62

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %59, %40
  store i64 0, i64* @timedout, align 8
  %42 = load i32, i32* @ETIMEOUT, align 4
  %43 = call i64 @lvalue(i32 %42)
  %44 = trunc i64 %43 to i32
  %45 = call i32 @alarm(i32 %44)
  %46 = load i32, i32* @FD, align 4
  %47 = call i32 @read(i32 %46, i8* %3, i32 1)
  %48 = call i32 @alarm(i32 0)
  %49 = load i64, i64* @timedout, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load i32, i32* %2, align 4
  %53 = call i8* @ctrl(i32 %52)
  %54 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  %57 = icmp sgt i32 %55, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @FD, align 4
  %61 = call i32 @parwrite(i32 %60, i8* @null, i32 1)
  br label %41

62:                                               ; preds = %39, %58, %41
  ret void
}

declare dso_local i32 @parwrite(i32, i8*, i32) #1

declare dso_local i64 @number(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @usleep(i64) #1

declare dso_local i32 @boolean(i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i64 @lvalue(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ctrl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
