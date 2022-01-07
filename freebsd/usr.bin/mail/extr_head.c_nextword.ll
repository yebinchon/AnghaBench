; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_head.c_nextword.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_head.c_nextword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nextword(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  store i8 0, i8* %10, align 1
  store i8* null, i8** %3, align 8
  br label %86

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %62, %11
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  %15 = load i8, i8* %13, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 32
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 9
  br label %24

24:                                               ; preds = %21, %18, %12
  %25 = phi i1 [ false, %18 ], [ false, %12 ], [ %23, %21 ]
  br i1 %25, label %26, label %63

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  store i8 %28, i8* %29, align 1
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 34
  br i1 %32, label %33, label %62

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  %37 = load i8, i8* %35, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 34
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i1 [ false, %34 ], [ %42, %40 ]
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load i32, i32* %6, align 4
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %5, align 8
  store i8 %47, i8* %48, align 1
  br label %34

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 34
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 8
  store i8 %55, i8* %56, align 1
  br label %61

58:                                               ; preds = %50
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61, %26
  br label %12

63:                                               ; preds = %24
  %64 = load i8*, i8** %5, align 8
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %74, %63
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 9
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ true, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %4, align 8
  %77 = load i8, i8* %75, align 1
  %78 = sext i8 %77 to i32
  store i32 %78, i32* %6, align 4
  br label %65

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i8* null, i8** %3, align 8
  br label %86

83:                                               ; preds = %79
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 -1
  store i8* %85, i8** %3, align 8
  br label %86

86:                                               ; preds = %83, %82, %9
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
