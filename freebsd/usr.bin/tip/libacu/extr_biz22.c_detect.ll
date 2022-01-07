; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_biz22.c_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_biz22.c_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGALRM = common dso_local global i32 0, align 4
@sigALRM = common dso_local global i32 0, align 4
@dialtimeout = common dso_local global i64 0, align 8
@timeoutbuf = common dso_local global i32 0, align 4
@DIALTIMEOUT = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect(i8* %0) #0 {
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

9:                                                ; preds = %39, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load i32, i32* @timeoutbuf, align 4
  %15 = call i64 @setjmp(i32 %14) #3
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (...) @biz22_abort()
  br label %40

19:                                               ; preds = %13
  %20 = load i32, i32* @DIALTIMEOUT, align 4
  %21 = call i32 @value(i32 %20)
  %22 = call i32 @number(i32 %21)
  %23 = call i32 @alarm(i32 %22)
  %24 = load i32, i32* @FD, align 4
  %25 = call i32 @read(i32 %24, i8* %5, i32 1)
  %26 = call i32 @alarm(i32 0)
  %27 = load i8, i8* %5, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 127
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  %31 = load i8, i8* %5, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %47

39:                                               ; preds = %19
  br label %9

40:                                               ; preds = %17, %9
  %41 = load i32, i32* @SIGALRM, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @signal(i32 %41, i32 %42)
  %44 = load i64, i64* @dialtimeout, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %38
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @biz22_abort(...) #1

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
