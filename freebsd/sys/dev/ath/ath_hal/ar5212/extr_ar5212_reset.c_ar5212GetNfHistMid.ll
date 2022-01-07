; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212GetNfHistMid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212GetNfHistMid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR512_NF_CAL_HIST_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar5212GetNfHistMid(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %8 = load i32, i32* @AR512_NF_CAL_HIST_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = load i32, i32* @AR512_NF_CAL_HIST_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i64*, i64** %2, align 8
  %15 = load i32, i32* @AR512_NF_CAL_HIST_MAX, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @OS_MEMCPY(i64* %13, i64* %14, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %66, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AR512_NF_CAL_HIST_MAX, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %62, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AR512_NF_CAL_HIST_MAX, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %13, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %13, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %36, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %13, i64 %45
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %13, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %13, i64 %54
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %13, i64 %59
  store i64 %56, i64* %60, align 8
  br label %61

61:                                               ; preds = %43, %32
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %26

65:                                               ; preds = %26
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %20

69:                                               ; preds = %20
  %70 = load i32, i32* @AR512_NF_CAL_HIST_MAX, align 4
  %71 = sub nsw i32 %70, 1
  %72 = ashr i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %13, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %76)
  ret i64 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OS_MEMCPY(i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
