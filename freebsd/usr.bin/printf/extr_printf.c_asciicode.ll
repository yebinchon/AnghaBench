; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_asciicode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_asciicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gargv = common dso_local global i64** null, align 8
@MB_LEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @asciicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asciicode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64**, i64*** @gargv, align 8
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* %5, align 8
  %7 = trunc i64 %6 to i8
  %8 = zext i8 %7 to i32
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp eq i32 %9, 39
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp eq i32 %12, 34
  br i1 %13, label %14, label %32

14:                                               ; preds = %11, %0
  %15 = call i32 @memset(i32* %3, i32 0, i32 4)
  %16 = load i64**, i64*** @gargv, align 8
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i32, i32* @MB_LEN_MAX, align 4
  %20 = call i32 @mbrtowc(i32* %2, i64* %18, i32 %19, i32* %3)
  switch i32 %20, label %30 [
    i32 -2, label %21
    i32 -1, label %21
    i32 0, label %29
  ]

21:                                               ; preds = %14, %14
  %22 = load i64**, i64*** @gargv, align 8
  %23 = getelementptr inbounds i64*, i64** %22, i64 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i8
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %14, %29, %21
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %11
  %33 = load i64**, i64*** @gargv, align 8
  %34 = getelementptr inbounds i64*, i64** %33, i32 1
  store i64** %34, i64*** @gargv, align 8
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mbrtowc(i32*, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
