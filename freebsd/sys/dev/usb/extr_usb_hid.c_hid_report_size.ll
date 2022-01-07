; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_report_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_report_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_data = type { i32 }
%struct.hid_item = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_report_size(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hid_data*, align 8
  %10 = alloca %struct.hid_item, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
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

20:                                               ; preds = %73, %4
  %21 = load %struct.hid_data*, %struct.hid_data** %9, align 8
  %22 = call i64 @hid_get_item(%struct.hid_data* %21, %struct.hid_item* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %36
  store i32 1, i32* %14, align 4
  br label %45

45:                                               ; preds = %44, %33, %29
  %46 = load i32, i32* %13, align 4
  %47 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %51, %45
  %56 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %10, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = add nsw i32 %58, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %70, %55
  br label %73

73:                                               ; preds = %72, %24
  br label %20

74:                                               ; preds = %20
  %75 = load %struct.hid_data*, %struct.hid_data** %9, align 8
  %76 = call i32 @hid_end_parse(%struct.hid_data* %75)
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  br label %85

81:                                               ; preds = %74
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %81, %80
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 8
  store i32 %90, i32* %11, align 4
  br label %97

91:                                               ; preds = %85
  %92 = load i32*, i32** %8, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32*, i32** %8, align 8
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %94, %91
  br label %97

97:                                               ; preds = %96, %88
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 7
  %100 = sdiv i32 %99, 8
  ret i32 %100
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
