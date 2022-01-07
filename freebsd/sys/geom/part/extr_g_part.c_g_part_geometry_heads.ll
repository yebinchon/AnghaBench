; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_geometry_heads.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_geometry_heads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_part_geometry_heads.candidate_heads = internal global [8 x i32] [i32 1, i32 2, i32 16, i32 32, i32 64, i32 128, i32 255, i32 0], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_part_geometry_heads(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %68, %4
  %16 = load i32, i32* %12, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* @g_part_geometry_heads.candidate_heads, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %15
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* @g_part_geometry_heads.candidate_heads, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sdiv i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %21
  br label %71

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %40, 1023
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %68

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %58, %43
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %58, %53
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %15

71:                                               ; preds = %38, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
