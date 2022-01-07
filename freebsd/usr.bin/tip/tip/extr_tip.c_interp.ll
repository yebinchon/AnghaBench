; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tip.c_interp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tip.c_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interp.buf = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"\0An\0Dr\09t\0Cf\1BE\08b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @interp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @interp.buf, i64 0, i64 0), i8** %3, align 8
  br label %6

6:                                                ; preds = %64, %1
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** %2, align 8
  %9 = load i8, i8* %7, align 1
  store i8 %9, i8* %4, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %65

11:                                               ; preds = %6
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  store i8 92, i8* %25, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  store i8 %28, i8* %29, align 1
  br label %64

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  br label %12

35:                                               ; preds = %12
  %36 = load i8, i8* %4, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %37, 32
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  store i8 94, i8* %40, align 1
  %42 = load i8, i8* %4, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %43, 65
  %45 = sub nsw i32 %44, 1
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %3, align 8
  store i8 %46, i8* %47, align 1
  br label %63

49:                                               ; preds = %35
  %50 = load i8, i8* %4, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 127
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %3, align 8
  store i8 94, i8* %54, align 1
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %3, align 8
  store i8 63, i8* %56, align 1
  br label %62

58:                                               ; preds = %49
  %59 = load i8, i8* %4, align 1
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  store i8 %59, i8* %60, align 1
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62, %39
  br label %64

64:                                               ; preds = %63, %24
  br label %6

65:                                               ; preds = %6
  %66 = load i8*, i8** %3, align 8
  store i8 0, i8* %66, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @interp.buf, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
