; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_get_data_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_get_data_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_location = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"hid_get_data: loc %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"hid_get_data: loc %d/%d = %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.hid_location*, i32)* @hid_get_data_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_get_data_sub(i32* %0, i32 %1, %struct.hid_location* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_location*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hid_location* %2, %struct.hid_location** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.hid_location*, %struct.hid_location** %8, align 8
  %16 = getelementptr inbounds %struct.hid_location, %struct.hid_location* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.hid_location*, %struct.hid_location** %8, align 8
  %19 = getelementptr inbounds %struct.hid_location, %struct.hid_location* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (i32, i8*, i32, i32, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %94

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 32, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %27
  store i32 0, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sdiv i32 %32, 8
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 7
  %36 = sdiv i32 %35, 8
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %61, %31
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %14, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %14, align 4
  %57 = mul nsw i32 8, %56
  %58 = shl i32 %55, %57
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %50, %44
  br label %40

62:                                               ; preds = %40
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %10, align 4
  %65 = srem i32 %64, 8
  %66 = ashr i32 %63, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 32, %67
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %14, align 4
  %76 = ashr i32 %74, %75
  store i32 %76, i32* %12, align 4
  br label %83

77:                                               ; preds = %62
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %14, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %14, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.hid_location*, %struct.hid_location** %8, align 8
  %85 = getelementptr inbounds %struct.hid_location, %struct.hid_location* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hid_location*, %struct.hid_location** %8, align 8
  %88 = getelementptr inbounds %struct.hid_location, %struct.hid_location* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = call i32 (i32, i8*, i32, i32, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89, i64 %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %83, %26
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
