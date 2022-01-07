; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_prtail.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_prtail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nohead = common dso_local global i64 0, align 8
@dspace = common dso_local global i64 0, align 8
@EOF = common dso_local global i64 0, align 8
@formfeed = common dso_local global i64 0, align 8
@addone = common dso_local global i64 0, align 8
@TAILLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prtail(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @nohead, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i64, i64* @dspace, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = call i64 @putchar(i8 signext 10)
  %16 = load i64, i64* @EOF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %11
  %19 = call i64 @putchar(i8 signext 10)
  %20 = load i64, i64* @EOF, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14
  %23 = call i32 (...) @pfail()
  store i32 1, i32* %3, align 4
  br label %82

24:                                               ; preds = %18, %8
  %25 = load i64, i64* @formfeed, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = call i64 @putchar(i8 signext 12)
  %29 = load i64, i64* @EOF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (...) @pfail()
  store i32 1, i32* %3, align 4
  br label %82

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %24
  store i32 0, i32* %3, align 4
  br label %82

35:                                               ; preds = %2
  %36 = load i64, i64* @dspace, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* @addone, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* @formfeed, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = call i64 @putchar(i8 signext 10)
  %55 = load i64, i64* @EOF, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53, %50
  %58 = call i64 @putchar(i8 signext 12)
  %59 = load i64, i64* @EOF, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %53
  %62 = call i32 (...) @pfail()
  store i32 1, i32* %3, align 4
  br label %82

63:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %82

64:                                               ; preds = %47
  %65 = load i64, i64* @TAILLEN, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %80, %64
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %4, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = call i64 @putchar(i8 signext 10)
  %76 = load i64, i64* @EOF, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 (...) @pfail()
  store i32 1, i32* %3, align 4
  br label %82

80:                                               ; preds = %74
  br label %70

81:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %78, %63, %61, %34, %31, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @putchar(i8 signext) #1

declare dso_local i32 @pfail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
