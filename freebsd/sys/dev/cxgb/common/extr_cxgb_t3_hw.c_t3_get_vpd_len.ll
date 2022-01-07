; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_get_vpd_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_get_vpd_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_vpd = type { i64 }

@MAX_VPD_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_get_vpd_len(i32* %0, %struct.generic_vpd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.generic_vpd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.generic_vpd* %1, %struct.generic_vpd** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.generic_vpd*, %struct.generic_vpd** %5, align 8
  %11 = getelementptr inbounds %struct.generic_vpd, %struct.generic_vpd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %42, %2
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.generic_vpd*, %struct.generic_vpd** %5, align 8
  %16 = getelementptr inbounds %struct.generic_vpd, %struct.generic_vpd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAX_VPD_BYTES, align 8
  %19 = add nsw i64 %17, %18
  %20 = icmp slt i64 %14, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %13
  %22 = load i32*, i32** %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @is_end_tag(i32* %22, i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %51

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @get_desc_len(i32* %35, i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %13

51:                                               ; preds = %32, %13
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 1
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %40, %27
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @is_end_tag(i32*, i64) #1

declare dso_local i32 @get_desc_len(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
