; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_ventel.c_gobble.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_ventel.c_gobble.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*)* @gobble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gobble(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i32, i32* @SIGALRM, align 4
  %11 = load i32, i32* @sigALRM, align 4
  %12 = call i32 @signal(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  store i64 0, i64* @dialtimeout, align 8
  br label %13

13:                                               ; preds = %47, %2
  %14 = load i32, i32* @timeoutbuf, align 4
  %15 = call i64 @setjmp(i32 %14) #3
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @SIGALRM, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @signal(i32 %18, i32 %19)
  %21 = load i8*, i8** %6, align 8
  store i8 0, i8* %21, align 1
  store i32 0, i32* %3, align 4
  br label %60

22:                                               ; preds = %13
  %23 = load i32, i32* @DIALTIMEOUT, align 4
  %24 = call i32 @value(i32 %23)
  %25 = call i32 @number(i32 %24)
  %26 = call i32 @alarm(i32 %25)
  %27 = load i32, i32* @FD, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @read(i32 %27, i8* %28, i32 1)
  %30 = call i32 @alarm(i32 0)
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  %33 = load i8, i8* %31, align 1
  %34 = sext i8 %33 to i32
  %35 = and i32 %34, 127
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %31, align 1
  store i8 %36, i8* %8, align 1
  br label %37

37:                                               ; preds = %22
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 10
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i8, i8* %8, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %4, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br label %47

47:                                               ; preds = %41, %37
  %48 = phi i1 [ false, %37 ], [ %46, %41 ]
  br i1 %48, label %13, label %49

49:                                               ; preds = %47
  %50 = load i32, i32* @SIGALRM, align 4
  %51 = load i32, i32* @SIG_DFL, align 4
  %52 = call i32 @signal(i32 %50, i32 %51)
  %53 = load i8*, i8** %6, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8, i8* %8, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* %4, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %49, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
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
