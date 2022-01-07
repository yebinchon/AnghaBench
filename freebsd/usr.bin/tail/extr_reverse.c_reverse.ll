; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_reverse.c_reverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_reverse.c_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse(i32* %0, i8* %1, i32 %2, i64 %3, %struct.stat* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.stat* %4, %struct.stat** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 129
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %48

17:                                               ; preds = %13, %5
  %18 = load %struct.stat*, %struct.stat** %10, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @S_ISREG(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.stat*, %struct.stat** %10, align 8
  %29 = call i32 @r_reg(i32* %24, i8* %25, i32 %26, i64 %27, %struct.stat* %28)
  br label %48

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %46 [
    i32 132, label %32
    i32 130, label %32
    i32 131, label %37
    i32 128, label %37
    i32 129, label %42
  ]

32:                                               ; preds = %30, %30
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @bytes(i32* %33, i8* %34, i64 %35)
  br label %47

37:                                               ; preds = %30, %30
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @lines(i32* %38, i8* %39, i64 %40)
  br label %47

42:                                               ; preds = %30
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @r_buf(i32* %43, i8* %44)
  br label %47

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %42, %37, %32
  br label %48

48:                                               ; preds = %16, %47, %23
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @r_reg(i32*, i8*, i32, i64, %struct.stat*) #1

declare dso_local i32 @bytes(i32*, i8*, i64) #1

declare dso_local i32 @lines(i32*, i8*, i64) #1

declare dso_local i32 @r_buf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
