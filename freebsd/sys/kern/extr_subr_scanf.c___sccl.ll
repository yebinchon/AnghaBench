; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_scanf.c___sccl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_scanf.c___sccl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @__sccl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__sccl(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* %9, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 94
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %6, align 4
  br label %19

18:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %14
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 %25, i8* %29, align 1
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %20

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 -1
  store i32* %38, i32** %3, align 8
  br label %89

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 1, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %88, %39
  %43 = load i32, i32* %8, align 4
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 %44, i8* %48, align 1
  br label %49

49:                                               ; preds = %82, %42
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  %52 = load i32, i32* %50, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  switch i32 %53, label %86 [
    i32 0, label %54
    i32 45, label %57
    i32 93, label %84
  ]

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -1
  store i32* %56, i32** %3, align 8
  br label %89

57:                                               ; preds = %49
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 93
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %57
  store i32 45, i32* %6, align 4
  br label %88

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  br label %70

70:                                               ; preds = %78, %67
  %71 = load i32, i32* %8, align 4
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 %72, i8* %77, align 1
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %70, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %6, align 4
  br label %49

84:                                               ; preds = %49
  %85 = load i32*, i32** %5, align 8
  store i32* %85, i32** %3, align 8
  br label %89

86:                                               ; preds = %49
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %66
  br label %42

89:                                               ; preds = %84, %54, %36
  %90 = load i32*, i32** %3, align 8
  ret i32* %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
