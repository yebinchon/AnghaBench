; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_sizespec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_sizespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_sizespec(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %83

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 45
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  store i32 -1, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sge i32 %21, 48
  br i1 %22, label %23, label %82

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 57
  br i1 %27, label %28, label %82

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 48
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 57
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %42, 10
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  %46 = load i8, i8* %44, align 1
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %43, %47
  %49 = sub nsw i32 %48, 48
  store i32 %49, i32* %4, align 4
  br label %29

50:                                               ; preds = %39
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %81 [
    i32 0, label %54
    i32 66, label %58
    i32 98, label %58
    i32 83, label %58
    i32 115, label %58
    i32 75, label %63
    i32 107, label %63
    i32 77, label %68
    i32 109, label %68
    i32 71, label %74
    i32 103, label %74
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %2, align 4
  br label %84

58:                                               ; preds = %50, %50, %50, %50
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 %59, %60
  %62 = mul nsw i32 %61, 512
  store i32 %62, i32* %2, align 4
  br label %84

63:                                               ; preds = %50, %50
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %64, %65
  %67 = mul nsw i32 %66, 1024
  store i32 %67, i32* %2, align 4
  br label %84

68:                                               ; preds = %50, %50
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %69, %70
  %72 = mul nsw i32 %71, 1024
  %73 = mul nsw i32 %72, 1024
  store i32 %73, i32* %2, align 4
  br label %84

74:                                               ; preds = %50, %50
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 %75, %76
  %78 = mul nsw i32 %77, 1024
  %79 = mul nsw i32 %78, 1024
  %80 = mul nsw i32 %79, 1024
  store i32 %80, i32* %2, align 4
  br label %84

81:                                               ; preds = %50
  br label %82

82:                                               ; preds = %81, %23, %18
  br label %83

83:                                               ; preds = %82, %1
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %74, %68, %63, %58, %54
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
