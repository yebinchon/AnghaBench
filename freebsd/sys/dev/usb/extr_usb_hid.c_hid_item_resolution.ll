; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_item_resolution.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_item_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_item = type { i32, i64, i64, i64, i64, i64 }

@hid_item_resolution.scale = internal constant [16 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 10], [2 x i32] [i32 1, i32 100], [2 x i32] [i32 1, i32 1000], [2 x i32] [i32 1, i32 10000], [2 x i32] [i32 1, i32 100000], [2 x i32] [i32 1, i32 1000000], [2 x i32] [i32 1, i32 10000000], [2 x i32] [i32 100000000, i32 1], [2 x i32] [i32 10000000, i32 1], [2 x i32] [i32 1000000, i32 1], [2 x i32] [i32 100000, i32 1], [2 x i32] [i32 10000, i32 1], [2 x i32] [i32 1000, i32 1], [2 x i32] [i32 100, i32 1], [2 x i32] [i32 10, i32 1]], align 16
@INT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_item_resolution(%struct.hid_item* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_item*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hid_item* %0, %struct.hid_item** %3, align 8
  %9 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %10 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %16 [
    i32 131, label %12
    i32 129, label %13
    i32 128, label %14
    i32 130, label %15
  ]

12:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  store i32 10, i32* %7, align 4
  br label %17

13:                                               ; preds = %1
  store i32 10, i32* %6, align 4
  store i32 254, i32* %7, align 4
  br label %17

14:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %17

15:                                               ; preds = %1
  store i32 573, i32* %6, align 4
  store i32 10, i32* %7, align 4
  br label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

17:                                               ; preds = %15, %14, %13, %12
  %18 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %19 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %22 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %44, label %25

25:                                               ; preds = %17
  %26 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %27 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %30 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %28, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %25
  %34 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %35 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %40 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @nitems(i32** bitcast ([16 x [2 x i32]]* @hid_item_resolution.scale to i32**))
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %33, %25, %17
  store i32 0, i32* %2, align 4
  br label %91

45:                                               ; preds = %38
  %46 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %47 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %51 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = sub nsw i32 %49, %53
  store i32 %54, i32* %4, align 4
  %55 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %56 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %60 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = sub nsw i32 %58, %62
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %68 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* @hid_item_resolution.scale, i64 0, i64 %69
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 0, i64 0
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %66, %72
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load %struct.hid_item*, %struct.hid_item** %3, align 8
  %78 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* @hid_item_resolution.scale, i64 0, i64 %79
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %80, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %76, %82
  %84 = sdiv i32 %73, %83
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @INT32_MAX, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %91

89:                                               ; preds = %45
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %88, %44, %16
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @nitems(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
