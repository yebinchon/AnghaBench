; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_biz22.c_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_biz22.c_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FD = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@sigALRM = common dso_local global i32 0, align 4
@timeoutbuf = common dso_local global i32 0, align 4
@DIALTIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @FD, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = call i32 @write(i32 %6, i8* %7, i32 %9)
  %11 = load i32, i32* @SIGALRM, align 4
  %12 = load i32, i32* @sigALRM, align 4
  %13 = call i32 @signal(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @timeoutbuf, align 4
  %15 = call i64 @setjmp(i32 %14) #3
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = call i32 (...) @biz22_abort()
  %19 = load i32, i32* @SIGALRM, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @signal(i32 %19, i32 %20)
  store i32 1, i32* %2, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load i32, i32* @DIALTIMEOUT, align 4
  %24 = call i32 @value(i32 %23)
  %25 = call i32 @number(i32 %24)
  %26 = call i32 @alarm(i32 %25)
  %27 = load i32, i32* @FD, align 4
  %28 = call i32 @read(i32 %27, i8* %5, i32 1)
  %29 = call i32 @alarm(i32 0)
  %30 = load i32, i32* @SIGALRM, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @signal(i32 %30, i32 %31)
  %33 = load i8, i8* %5, align 1
  %34 = sext i8 %33 to i32
  %35 = and i32 %34, 127
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %5, align 1
  %37 = load i8, i8* %5, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 13
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %22, %17
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

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
