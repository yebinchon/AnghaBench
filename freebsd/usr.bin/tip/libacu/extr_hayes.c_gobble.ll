; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_hayes.c_gobble.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_hayes.c_gobble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGALRM = common dso_local global i32 0, align 4
@sigALRM = common dso_local global i32 0, align 4
@dialtimeout = common dso_local global i64 0, align 8
@timeoutbuf = common dso_local global i32 0, align 4
@DIALTIMEOUT = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*)* @gobble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @gobble(i8* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @SIGALRM, align 4
  %9 = load i32, i32* @sigALRM, align 4
  %10 = call i32 @signal(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  store i64 0, i64* @dialtimeout, align 8
  br label %11

11:                                               ; preds = %53, %1
  %12 = load i32, i32* @timeoutbuf, align 4
  %13 = call i64 @setjmp(i32 %12) #3
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @SIGALRM, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @signal(i32 %16, i32 %17)
  store i8 0, i8* %2, align 1
  br label %62

19:                                               ; preds = %11
  %20 = load i32, i32* @DIALTIMEOUT, align 4
  %21 = call i32 @value(i32 %20)
  %22 = call i32 @number(i32 %21)
  %23 = call i32 @alarm(i32 %22)
  %24 = load i32, i32* @FD, align 4
  %25 = call i32 @read(i32 %24, i8* %4, i32 1)
  %26 = call i32 @alarm(i32 0)
  %27 = load i8, i8* %4, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 127
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %4, align 1
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %49, %19
  %32 = load i64, i64* %6, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i8, i8* %4, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8*, i8** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i8, i8* %4, align 1
  %47 = sext i8 %46 to i32
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %36
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %31

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %11, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @SIGALRM, align 4
  %58 = load i32, i32* @SIG_DFL, align 4
  %59 = call i32 @signal(i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %2, align 1
  br label %62

62:                                               ; preds = %56, %15
  %63 = load i8, i8* %2, align 1
  ret i8 %63
}

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @number(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
