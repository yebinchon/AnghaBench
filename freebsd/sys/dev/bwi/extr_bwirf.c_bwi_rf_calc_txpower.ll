; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_txpower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ITER_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @bwi_rf_calc_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_rf_calc_txpower(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 16, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = add nsw i32 %18, %23
  %25 = call i32 @_bwi_adjust_devide(i32 %24, i32 32)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = add nsw i32 32768, %30
  %32 = call i32 @_bwi_adjust_devide(i32 %31, i32 256)
  %33 = call i32 @imax(i32 %32, i32 1)
  store i32 %33, i32* %9, align 4
  store i32 256, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %57, %3
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 16
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %38, 4096
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %40, %41
  %43 = call i32 @_bwi_adjust_devide(i32 %42, i32 16)
  %44 = load i32, i32* %10, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sub nsw i32 %39, %45
  %47 = call i32 @_bwi_adjust_devide(i32 %46, i32 2048)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call i32 @abs(i32 %50) #3
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  br label %60

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %34

60:                                               ; preds = %55, %34
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 16
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %4, align 4
  br label %81

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %66, %67
  %69 = call i32 @_bwi_adjust_devide(i32 %68, i32 8192)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, -127
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 -127, i32* %11, align 4
  br label %78

73:                                               ; preds = %65
  %74 = load i32, i32* %11, align 4
  %75 = icmp sgt i32 %74, 128
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 128, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %73
  br label %78

78:                                               ; preds = %77, %72
  %79 = load i32, i32* %11, align 4
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %63
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @_bwi_adjust_devide(i32, i32) #1

declare dso_local i32 @imax(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
