; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/morse/extr_morse.c_ttyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/morse/extr_morse.c_ttyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dot_clock = common dso_local global i32 0, align 4
@DASH_LEN = common dso_local global i32 0, align 4
@cdot_clock = common dso_local global i32 0, align 4
@WORD_SPACE = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@TIOCMGET = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCMSET = common dso_local global i32 0, align 4
@CHAR_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ttyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttyout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %3, align 8
  br label %8

8:                                                ; preds = %64, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %27 [
    i32 46, label %17
    i32 45, label %19
    i32 32, label %23
  ]

17:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  %18 = load i32, i32* @dot_clock, align 4
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  %20 = load i32, i32* @dot_clock, align 4
  %21 = load i32, i32* @DASH_LEN, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %4, align 4
  br label %28

23:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  %24 = load i32, i32* @cdot_clock, align 4
  %25 = load i32, i32* @WORD_SPACE, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %23, %19, %17
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* @line, align 4
  %33 = load i32, i32* @TIOCMGET, align 4
  %34 = call i32 @ioctl(i32 %32, i32 %33, i32* %6)
  %35 = load i32, i32* @TIOCM_RTS, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @line, align 4
  %39 = load i32, i32* @TIOCMSET, align 4
  %40 = call i32 @ioctl(i32 %38, i32 %39, i32* %6)
  br label %41

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %42, 10000
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @usleep(i32 %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* @line, align 4
  %51 = load i32, i32* @TIOCMGET, align 4
  %52 = call i32 @ioctl(i32 %50, i32 %51, i32* %6)
  %53 = load i32, i32* @TIOCM_RTS, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @line, align 4
  %58 = load i32, i32* @TIOCMSET, align 4
  %59 = call i32 @ioctl(i32 %57, i32 %58, i32* %6)
  %60 = load i32, i32* @dot_clock, align 4
  %61 = mul nsw i32 %60, 10000
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @usleep(i32 %62)
  br label %64

64:                                               ; preds = %49
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %3, align 8
  br label %8

67:                                               ; preds = %8
  %68 = load i32, i32* @cdot_clock, align 4
  %69 = load i32, i32* @CHAR_SPACE, align 4
  %70 = mul nsw i32 %68, %69
  %71 = mul nsw i32 %70, 10000
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @usleep(i32 %72)
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
