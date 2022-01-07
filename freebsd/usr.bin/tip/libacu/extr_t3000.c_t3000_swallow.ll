; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_t3000.c_t3000_swallow.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_t3000.c_t3000_swallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGALRM = common dso_local global i32 0, align 4
@sigALRM = common dso_local global i32 0, align 4
@dialtimeout = common dso_local global i64 0, align 8
@timeoutbuf = common dso_local global i32 0, align 4
@DIALTIMEOUT = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @t3000_swallow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3000_swallow(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @SIGALRM, align 4
  %7 = load i32, i32* @sigALRM, align 4
  %8 = call i32 @signal(i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  store i64 0, i64* @dialtimeout, align 8
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* @SIGALRM, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  store i32 1, i32* %2, align 4
  br label %50

18:                                               ; preds = %9
  %19 = load i32, i32* @timeoutbuf, align 4
  %20 = call i64 @setjmp(i32 %19) #3
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @SIGALRM, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @signal(i32 %23, i32 %24)
  store i32 0, i32* %2, align 4
  br label %50

26:                                               ; preds = %18
  %27 = load i32, i32* @DIALTIMEOUT, align 4
  %28 = call i32 @value(i32 %27)
  %29 = call i32 @number(i32 %28)
  %30 = call i32 @alarm(i32 %29)
  %31 = load i32, i32* @FD, align 4
  %32 = call i32 @read(i32 %31, i8* %5, i32 1)
  %33 = call i32 @alarm(i32 0)
  %34 = load i8, i8* %5, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 127
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %5, align 1
  br label %38

38:                                               ; preds = %26
  %39 = load i8, i8* %5, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %9, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @SIGALRM, align 4
  %48 = load i32, i32* @SIG_DFL, align 4
  %49 = call i32 @signal(i32 %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %22, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @number(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
