; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wmt.c_wmt_hid_report_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wmt.c_wmt_hid_report_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_data = type { i32 }
%struct.hid_item = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i64)* @wmt_hid_report_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_hid_report_size(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.hid_data*, align 8
  %10 = alloca %struct.hid_item, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 1, %17
  %19 = call %struct.hid_data* @hid_start_parse(i8* %15, i32 %16, i32 %18)
  store %struct.hid_data* %19, %struct.hid_data** %9, align 8
  br label %20

20:                                               ; preds = %67, %4
  %21 = load %struct.hid_data*, %struct.hid_data** %9, align 8
  %22 = call i64 @hid_get_item(%struct.hid_data* %21, %struct.hid_item* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  %36 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = add nsw i32 %47, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %59, %44
  %62 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %14, align 4
  br label %66

66:                                               ; preds = %65, %61
  br label %67

67:                                               ; preds = %66, %29, %24
  br label %20

68:                                               ; preds = %20
  %69 = load %struct.hid_data*, %struct.hid_data** %9, align 8
  %70 = call i32 @hid_end_parse(%struct.hid_data* %69)
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %79

75:                                               ; preds = %68
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %75, %74
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 7
  %82 = sdiv i32 %81, 8
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %82, %83
  ret i32 %84
}

declare dso_local %struct.hid_data* @hid_start_parse(i8*, i32, i32) #1

declare dso_local i64 @hid_get_item(%struct.hid_data*, %struct.hid_item*) #1

declare dso_local i32 @hid_end_parse(%struct.hid_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
