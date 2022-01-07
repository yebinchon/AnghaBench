; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_encode_timeval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_encode_timeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@LOG2_1M = common dso_local global i64 0, align 8
@CALC_BITS = common dso_local global i64 0, align 8
@FLT_MANT_DIG = common dso_local global i32 0, align 4
@FLT_MAX_EXP = common dso_local global i32 0, align 4
@MANT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @encode_timeval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_timeval(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.timeval* %3 to i64*
  store i64 %0, i64* %9, align 4
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %89

18:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %56

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fls(i32 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @LOG2_1M, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @CALC_BITS, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 1000000, %34
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %5, align 4
  br label %55

39:                                               ; preds = %21
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @LOG2_1M, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* @CALC_BITS, align 8
  %45 = sub nsw i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 1000000, %48
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %49, %51
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %39, %32
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @fls(i32 %57)
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @FLT_MANT_DIG, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @FLT_MAX_EXP, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* @FLT_MANT_DIG, align 4
  %71 = sub nsw i32 %70, 1
  %72 = shl i32 %69, %71
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %56
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 %76, %77
  br label %84

79:                                               ; preds = %56
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 0, %81
  %83 = ashr i32 %80, %82
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i32 [ %78, %75 ], [ %83, %79 ]
  %86 = load i32, i32* @MANT_MASK, align 4
  %87 = and i32 %85, %86
  %88 = or i32 %72, %87
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %84, %17
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
