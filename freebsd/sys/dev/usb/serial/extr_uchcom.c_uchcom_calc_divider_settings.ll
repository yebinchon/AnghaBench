; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_calc_divider_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_calc_divider_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uchcom_divider_record = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.uchcom_divider = type { i64, i32, i32 }

@NUM_DIVIDERS = common dso_local global i64 0, align 8
@dividers = common dso_local global %struct.uchcom_divider_record* null, align 8
@UCHCOM_BASE_UNKNOWN = common dso_local global i32 0, align 4
@UCHCOM_BPS_MOD_BASE = common dso_local global i32 0, align 4
@UCHCOM_BPS_MOD_BASE_OFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uchcom_divider*, i32)* @uchcom_calc_divider_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uchcom_calc_divider_settings(%struct.uchcom_divider* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uchcom_divider*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uchcom_divider_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.uchcom_divider* %0, %struct.uchcom_divider** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %36, %2
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* @NUM_DIVIDERS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.uchcom_divider_record*, %struct.uchcom_divider_record** @dividers, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds %struct.uchcom_divider_record, %struct.uchcom_divider_record* %16, i64 %17
  %19 = getelementptr inbounds %struct.uchcom_divider_record, %struct.uchcom_divider_record* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.uchcom_divider_record*, %struct.uchcom_divider_record** @dividers, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.uchcom_divider_record, %struct.uchcom_divider_record* %24, i64 %25
  %27 = getelementptr inbounds %struct.uchcom_divider_record, %struct.uchcom_divider_record* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.uchcom_divider_record*, %struct.uchcom_divider_record** @dividers, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.uchcom_divider_record, %struct.uchcom_divider_record* %32, i64 %33
  store %struct.uchcom_divider_record* %34, %struct.uchcom_divider_record** %6, align 8
  br label %40

35:                                               ; preds = %23, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %11

39:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %105

40:                                               ; preds = %31
  %41 = load %struct.uchcom_divider_record*, %struct.uchcom_divider_record** %6, align 8
  %42 = getelementptr inbounds %struct.uchcom_divider_record, %struct.uchcom_divider_record* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.uchcom_divider*, %struct.uchcom_divider** %4, align 8
  %46 = getelementptr inbounds %struct.uchcom_divider, %struct.uchcom_divider* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.uchcom_divider_record*, %struct.uchcom_divider_record** %6, align 8
  %48 = getelementptr inbounds %struct.uchcom_divider_record, %struct.uchcom_divider_record* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @UCHCOM_BASE_UNKNOWN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load %struct.uchcom_divider_record*, %struct.uchcom_divider_record** %6, align 8
  %54 = getelementptr inbounds %struct.uchcom_divider_record, %struct.uchcom_divider_record* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.uchcom_divider*, %struct.uchcom_divider** %4, align 8
  %58 = getelementptr inbounds %struct.uchcom_divider, %struct.uchcom_divider* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %90

59:                                               ; preds = %40
  %60 = load %struct.uchcom_divider_record*, %struct.uchcom_divider_record** %6, align 8
  %61 = getelementptr inbounds %struct.uchcom_divider_record, %struct.uchcom_divider_record* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.uchcom_divider_record*, %struct.uchcom_divider_record** %6, align 8
  %66 = getelementptr inbounds %struct.uchcom_divider_record, %struct.uchcom_divider_record* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = srem i32 %67, %68
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %7, align 4
  %74 = icmp sge i32 %73, 255
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %59
  store i32 -1, i32* %3, align 4
  br label %105

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 %77, 1
  %79 = load i32, i32* %5, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 0, %85
  %87 = sext i32 %86 to i64
  %88 = load %struct.uchcom_divider*, %struct.uchcom_divider** %4, align 8
  %89 = getelementptr inbounds %struct.uchcom_divider, %struct.uchcom_divider* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %84, %52
  %91 = load i32, i32* @UCHCOM_BPS_MOD_BASE, align 4
  %92 = load i32, i32* %5, align 4
  %93 = sdiv i32 %91, %92
  %94 = load i32, i32* @UCHCOM_BPS_MOD_BASE_OFS, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sdiv i32 %97, 2
  %99 = add nsw i32 %96, %98
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 255
  %102 = sdiv i32 %101, 256
  %103 = load %struct.uchcom_divider*, %struct.uchcom_divider** %4, align 8
  %104 = getelementptr inbounds %struct.uchcom_divider, %struct.uchcom_divider* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %90, %75, %39
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
