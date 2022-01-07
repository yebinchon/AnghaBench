; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_parse.c_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_parse.c_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @escape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %3, align 8
  br label %5

5:                                                ; preds = %50, %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 92
  br i1 %9, label %10, label %39

10:                                               ; preds = %5
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %34 [
    i32 0, label %16
    i32 97, label %20
    i32 98, label %22
    i32 102, label %24
    i32 110, label %26
    i32 114, label %28
    i32 116, label %30
    i32 118, label %32
  ]

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  store i8 92, i8* %17, align 1
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  store i8 0, i8* %19, align 1
  br label %55

20:                                               ; preds = %10
  %21 = load i8*, i8** %3, align 8
  store i8 7, i8* %21, align 1
  br label %38

22:                                               ; preds = %10
  %23 = load i8*, i8** %3, align 8
  store i8 8, i8* %23, align 1
  br label %38

24:                                               ; preds = %10
  %25 = load i8*, i8** %3, align 8
  store i8 12, i8* %25, align 1
  br label %38

26:                                               ; preds = %10
  %27 = load i8*, i8** %3, align 8
  store i8 10, i8* %27, align 1
  br label %38

28:                                               ; preds = %10
  %29 = load i8*, i8** %3, align 8
  store i8 13, i8* %29, align 1
  br label %38

30:                                               ; preds = %10
  %31 = load i8*, i8** %3, align 8
  store i8 9, i8* %31, align 1
  br label %38

32:                                               ; preds = %10
  %33 = load i8*, i8** %3, align 8
  store i8 11, i8* %33, align 1
  br label %38

34:                                               ; preds = %10
  %35 = load i8*, i8** %2, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %3, align 8
  store i8 %36, i8* %37, align 1
  br label %38

38:                                               ; preds = %34, %32, %30, %28, %26, %24, %22, %20
  br label %49

39:                                               ; preds = %5
  %40 = load i8*, i8** %2, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %3, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i8*, i8** %2, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %55

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %38
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %2, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %2, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  br label %5

55:                                               ; preds = %47, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
