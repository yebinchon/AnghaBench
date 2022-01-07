; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_set_bell.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_set_bell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_bell.seq = internal global [8 x i32] [i32 176, i32 256, i32 232, i32 256, i32 256, i32 48, i32 228, i32 512], align 16
@.str = private unnamed_addr constant [17 x i8] c"  bell=%c (0x%x)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"bell not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @set_bell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_bell(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 96, i32* %8, align 4
  br label %11

11:                                               ; preds = %86, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 384
  br i1 %13, label %14, label %89

14:                                               ; preds = %11
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @set_bell.seq, i64 0, i64 0), align 16
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %86

23:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %82, %23
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* @set_bell.seq, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 512
  br i1 %29, label %30, label %61

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %40, i32* %45, align 4
  br label %59

46:                                               ; preds = %30
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %47, 32
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 127
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  br label %55

54:                                               ; preds = %49, %46
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 32, %54 ]
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %39
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %91

61:                                               ; preds = %24
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* @set_bell.seq, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 256
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* @set_bell.seq, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %71, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %85

81:                                               ; preds = %67, %61
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %24

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %22
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %11

89:                                               ; preds = %11
  %90 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %59
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
